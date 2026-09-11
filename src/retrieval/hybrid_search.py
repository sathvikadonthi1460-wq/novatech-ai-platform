from pathlib import Path
import sys
import re

import chromadb
from sentence_transformers import SentenceTransformer


# --------------------------------------------------
# Allow access to our chunking function
# --------------------------------------------------

sys.path.append(
    str(Path(__file__).resolve().parent.parent / "ingestion")
)

from chunk_documents import chunk_text


# --------------------------------------------------
# 1. Setup
# --------------------------------------------------

DOCUMENTS_DIR = Path("documents")

model = SentenceTransformer(
    "all-MiniLM-L6-v2"
)

client = chromadb.PersistentClient(
    path="data/chroma"
)

collection = client.get_collection(
    name="novatech_documents"
)


# --------------------------------------------------
# 2. Tokenizer for keyword search
# --------------------------------------------------

def tokenize(text):

    return re.findall(
        r"\b\w+\b",
        text.lower()
    )


# --------------------------------------------------
# 3. Keyword search over chunks
# --------------------------------------------------

def keyword_search(query, top_k=5):

    query_words = set(
        tokenize(query)
    )

    results = []

    for file_path in DOCUMENTS_DIR.glob("*.txt"):

        text = file_path.read_text(
            encoding="utf-8"
        )

        chunks = chunk_text(text)

        for chunk_number, chunk in enumerate(chunks):

            chunk_words = set(
                tokenize(chunk)
            )

            common_words = query_words.intersection(
                chunk_words
            )

            score = len(common_words)

            if score > 0:

                results.append({
                    "id": f"{file_path.stem}_{chunk_number}",
                    "text": chunk,
                    "filename": file_path.name,
                    "chunk_number": chunk_number,
                    "keyword_score": score
                })

    results.sort(
        key=lambda item: item["keyword_score"],
        reverse=True
    )

    return results[:top_k]


# --------------------------------------------------
# 4. Semantic search
# --------------------------------------------------

def semantic_search(query, top_k=5):

    query_embedding = model.encode(
        query
    )

    results = collection.query(
        query_embeddings=[
            query_embedding.tolist()
        ],
        n_results=top_k
    )

    semantic_results = []

    for i, document in enumerate(
        results["documents"][0]
    ):

        metadata = results["metadatas"][0][i]

        semantic_results.append({
            "id": (
                f"{Path(metadata['filename']).stem}_"
                f"{metadata['chunk_number']}"
            ),
            "text": document,
            "filename": metadata["filename"],
            "chunk_number": metadata["chunk_number"],
            "distance": results["distances"][0][i]
        })

    return semantic_results


# --------------------------------------------------
# 5. Reciprocal Rank Fusion
# --------------------------------------------------

def hybrid_search(query, top_k=5):

    semantic_results = semantic_search(
        query,
        top_k=top_k
    )

    keyword_results = keyword_search(
        query,
        top_k=top_k
    )

    combined = {}

    # RRF constant
    k = 60

    # Add semantic rankings
    for rank, result in enumerate(
        semantic_results,
        start=1
    ):

        result_id = result["id"]

        if result_id not in combined:
            combined[result_id] = {
                **result,
                "rrf_score": 0
            }

        combined[result_id]["rrf_score"] += (
            1 / (k + rank)
        )

    # Add keyword rankings
    for rank, result in enumerate(
        keyword_results,
        start=1
    ):

        result_id = result["id"]

        if result_id not in combined:
            combined[result_id] = {
                **result,
                "rrf_score": 0
            }

        combined[result_id]["rrf_score"] += (
            1 / (k + rank)
        )

    final_results = list(
        combined.values()
    )

    final_results.sort(
        key=lambda item: item["rrf_score"],
        reverse=True
    )

    return final_results[:top_k]


# --------------------------------------------------
# 6. Test
# --------------------------------------------------

if __name__ == "__main__":

    question = (
        "How long does it take to get my money back?"
    )

    results = hybrid_search(
        question,
        top_k=5
    )

    print("\nHYBRID SEARCH RESULTS")
    print("=" * 70)

    for i, result in enumerate(
        results,
        start=1
    ):

        print(f"\nResult {i}")
        print("-" * 70)

        print(result["text"])

        print("\nFilename:")
        print(result["filename"])

        print("\nChunk:")
        print(result["chunk_number"])

        print("\nHybrid RRF Score:")
        print(result["rrf_score"])