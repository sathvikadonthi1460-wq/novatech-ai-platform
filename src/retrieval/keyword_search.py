from pathlib import Path
import re


DOCUMENTS_DIR = Path("documents")


def tokenize(text):
    """
    Convert text into lowercase words.
    """

    return re.findall(
        r"\b\w+\b",
        text.lower()
    )


def keyword_score(query, text):
    """
    Count how many query words appear in the text.
    """

    query_words = set(tokenize(query))
    text_words = set(tokenize(text))

    common_words = query_words.intersection(text_words)

    return len(common_words)


def keyword_search(query, top_k=3):

    results = []

    for file_path in DOCUMENTS_DIR.glob("*.txt"):

        text = file_path.read_text(
            encoding="utf-8"
        )

        score = keyword_score(
            query,
            text
        )

        if score > 0:
            results.append({
                "filename": file_path.name,
                "text": text,
                "score": score
            })

    results.sort(
        key=lambda item: item["score"],
        reverse=True
    )

    return results[:top_k]


if __name__ == "__main__":

    question = "How long does it take to get my money back?"

    results = keyword_search(
        question,
        top_k=3
    )

    print("\nKEYWORD SEARCH RESULTS")
    print("=" * 60)

    for i, result in enumerate(results):

        print(f"\nResult {i + 1}")
        print("-" * 60)

        print("Filename:")
        print(result["filename"])

        print("\nScore:")
        print(result["score"])

        print("\nText:")
        print(result["text"])