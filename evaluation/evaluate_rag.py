import json
import time
from pathlib import Path
import sys


# Allow imports from src/retrieval
sys.path.append(
    str(Path(__file__).resolve().parent.parent / "src" / "retrieval")
)

from hybrid_search import hybrid_search
from reranker import rerank_results
from rag_pipeline import build_context, create_prompt, generate_answer


TEST_FILE = Path("evaluation/test_questions.json")


def load_test_questions():
    with open(TEST_FILE, "r", encoding="utf-8") as file:
        return json.load(file)


def evaluate_question(test_case):

    question = test_case["question"]
    expected_answer = test_case["expected_answer"].lower()
    expected_source = test_case["expected_source"]

    start_time = time.time()

    # Step 1: Hybrid retrieval
    results = hybrid_search(
        question,
        top_k=5
    )

    # Step 2: Rerank
    results = rerank_results(
        question,
        results,
        top_k=3
    )

    # Step 3: Check retrieval source
    retrieved_sources = [
        result["filename"]
        for result in results
    ]

    source_hit = expected_source in retrieved_sources

    # Step 4: Build RAG context
    context = build_context(results)

    # Step 5: Generate answer
    prompt = create_prompt(
        question,
        context
    )

    answer = generate_answer(prompt)

    # Step 6: Basic answer check
    answer_match = (
        expected_answer in answer.lower()
    )

    elapsed_time = time.time() - start_time

    return {
        "question": question,
        "expected_source": expected_source,
        "retrieved_sources": retrieved_sources,
        "source_hit": source_hit,
        "expected_answer": test_case["expected_answer"],
        "generated_answer": answer,
        "answer_match": answer_match,
        "latency_seconds": round(elapsed_time, 2)
    }


if __name__ == "__main__":

    test_questions = load_test_questions()

    results = []

    print("\nRAG EVALUATION")
    print("=" * 70)

    for test_case in test_questions:

        result = evaluate_question(test_case)

        results.append(result)

        print("\nQuestion:")
        print(result["question"])

        print("\nExpected source:")
        print(result["expected_source"])

        print("\nRetrieved sources:")
        print(result["retrieved_sources"])

        print("\nSource Hit:")
        print(result["source_hit"])

        print("\nExpected answer:")
        print(result["expected_answer"])

        print("\nGenerated answer:")
        print(result["generated_answer"])

        print("\nAnswer Match:")
        print(result["answer_match"])

        print("\nLatency:")
        print(
            result["latency_seconds"],
            "seconds"
        )

        print("-" * 70)

    total_tests = len(results)

    source_hits = sum(
        result["source_hit"]
        for result in results
    )

    answer_matches = sum(
        result["answer_match"]
        for result in results
    )

    print("\nFINAL METRICS")
    print("=" * 70)

    print(
        f"Retrieval Hit Rate: "
        f"{source_hits / total_tests:.2%}"
    )

    print(
        f"Answer Match Rate: "
        f"{answer_matches / total_tests:.2%}"
    )

    average_latency = sum(
        result["latency_seconds"]
        for result in results
    ) / total_tests

    print(
        f"Average Latency: "
        f"{average_latency:.2f} seconds"
    )