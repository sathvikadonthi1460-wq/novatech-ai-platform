import re

from pathlib import Path


DOCUMENTS_DIR = Path("documents")


def split_into_sentences(text):
    """
    Split a document into individual sentences.
    """

    sentences = re.split(
        r'(?<=[.!?])\s+',
        text
    )

    return [
        sentence.strip()
        for sentence in sentences
        if sentence.strip()
    ]


def chunk_text(
    text,
    max_words=60,
    overlap_sentences=1
):
    """
    Create chunks while keeping complete sentences together.
    """

    sentences = split_into_sentences(text)

    chunks = []

    current_chunk = []
    current_word_count = 0

    for sentence in sentences:

        sentence_word_count = len(
            sentence.split()
        )

        # If adding the sentence would make
        # the chunk too large, save the current chunk.
        if (
            current_chunk
            and
            current_word_count + sentence_word_count
            > max_words
        ):

            chunks.append(
                " ".join(current_chunk)
            )

            # Keep the last sentence as overlap.
            current_chunk = current_chunk[
                -overlap_sentences:
            ]

            current_word_count = sum(
                len(sentence.split())
                for sentence in current_chunk
            )

        current_chunk.append(sentence)

        current_word_count += sentence_word_count

    # Add the final chunk
    if current_chunk:

        chunks.append(
            " ".join(current_chunk)
        )

    return chunks


if __name__ == "__main__":

    for file_path in DOCUMENTS_DIR.glob("*.txt"):

        text = file_path.read_text(
            encoding="utf-8"
        )

        chunks = chunk_text(text)

        print("=" * 70)
        print(file_path.name)
        print("=" * 70)

        print(
            f"Number of chunks: {len(chunks)}"
        )

        for i, chunk in enumerate(chunks):

            print(
                f"\n--- Chunk {i} ---"
            )

            print(chunk)