from sentence_transformers import CrossEncoder


# Load reranking model
reranker = CrossEncoder(
    "cross-encoder/ms-marco-MiniLM-L6-v2"
)


def rerank_results(query, results, top_k=3):

    if not results:
        return []

    pairs = [
        [query, result["text"]]
        for result in results
    ]

    scores = reranker.predict(pairs)

    for result, score in zip(results, scores):
        result["rerank_score"] = float(score)

    ranked_results = sorted(
        results,
        key=lambda item: item["rerank_score"],
        reverse=True
    )

    return ranked_results[:top_k]


# --------------------------------------------------
# TEST
# --------------------------------------------------

if __name__ == "__main__":

    from hybrid_search import hybrid_search

    question = "How long does it take to get my money back?"

    results = hybrid_search(
        question,
        top_k=5
    )

    ranked_results = rerank_results(
        question,
        results,
        top_k=3
    )

    print("\nRERANKED RESULTS")
    print("=" * 70)

    for i, result in enumerate(ranked_results, start=1):

        print(f"\nResult {i}")
        print("-" * 70)

        print(result["text"])

        print("\nFilename:")
        print(result["filename"])

        print("\nRRF Score:")
        print(result["rrf_score"])

        print("\nRerank Score:")
        print(result["rerank_score"])