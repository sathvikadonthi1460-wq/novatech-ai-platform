from pathlib import Path
import sys

from sentence_transformers import SentenceTransformer
import chromadb


sys.path.append(
    str(Path(__file__).resolve().parent.parent / "ingestion")
)

from chunk_documents import chunk_text

# --------------------------------------------------
# 1. Load the embedding model
# --------------------------------------------------

model = SentenceTransformer(
    "all-MiniLM-L6-v2"
)


# --------------------------------------------------
# 2. Connect to ChromaDB
# --------------------------------------------------

client = chromadb.PersistentClient(
    path="data/chroma"
)


# --------------------------------------------------
# 3. Create or connect to collection
# --------------------------------------------------

collection = client.get_or_create_collection(
    name="novatech_documents"
)


# --------------------------------------------------
# 4. Read documents and create chunks
# --------------------------------------------------

documents_path = Path("documents")

all_chunks = []
metadata = []
ids = []


for file_path in documents_path.glob("*.txt"):

    text = file_path.read_text(
        encoding="utf-8"
    )

    chunks = chunk_text(text)

    for chunk_number, chunk in enumerate(chunks):

        all_chunks.append(chunk)

        if "policy" in file_path.stem:
            document_type = "policy"
        elif "guide" in file_path.stem:
            document_type = "product_documentation"
        else:
            document_type = "general"


        metadata.append({
            "filename": file_path.name,
            "chunk_number": chunk_number,
            "document_type": document_type
        })
        

        ids.append(
            f"{file_path.stem}_{chunk_number}"
        )


# --------------------------------------------------
# 5. Create embeddings
# --------------------------------------------------

embeddings = model.encode(
    all_chunks
)


# --------------------------------------------------
# 6. Store embeddings in ChromaDB
# --------------------------------------------------

collection.upsert(
    ids=ids,
    documents=all_chunks,
    embeddings=embeddings.tolist(),
    metadatas=metadata
)


# --------------------------------------------------
# 7. Display results
# --------------------------------------------------

print("Embedding process completed!")

print(
    f"Number of chunks: {len(all_chunks)}"
)

print(
    f"Documents stored in ChromaDB: {collection.count()}"
)