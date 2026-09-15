from ollama import chat
from hybrid_search import hybrid_search
from reranker import rerank_results

# --------------------------------------------------
# 1. Build context from retrieved chunks
# --------------------------------------------------

def build_context(results):

    context_parts = []

    for result in results:
        context_parts.append(
            f"[Source: {result['filename']}, "
            f"Chunk: {result['chunk_number']}]\n"
            f"{result['text']}"
        )

    return "\n\n".join(context_parts)


# --------------------------------------------------
# 2. Create prompt
# --------------------------------------------------

def create_prompt(question, context):

    prompt = f"""
You are a helpful NovaTech AI assistant.

Answer the user's question using ONLY the information
provided in the context.

If the answer is not available in the context, say:
"The information is not available in the provided documents."

CONTEXT:
{context}

USER QUESTION:
{question}

ANSWER:
"""

    return prompt


# --------------------------------------------------
# 3. Generate answer using Llama 3.2
# --------------------------------------------------

def generate_answer(prompt):

    response = chat(
        model="llama3.2",
        messages=[
            {
                "role": "user",
                "content": prompt
            }
        ]
    )

    return response["message"]["content"]


# --------------------------------------------------
# 4. Run complete RAG pipeline
# --------------------------------------------------
def answer_rag_question(question):

    # 1. Hybrid retrieval
    results = hybrid_search(
        question,
        top_k=5
    )

    # 2. Cross-encoder reranking
    results = rerank_results(
        question,
        results,
        top_k=3
    )

    # 3. Build context
    context = build_context(results)

    # 4. Create RAG prompt
    prompt = create_prompt(
        question,
        context
    )

    # 5. Generate answer with Llama 3.2
    answer = generate_answer(prompt)

    # 6. Collect sources
    sources = list({
        result["filename"]
        for result in results
    })

    return {
        "answer": answer,
        "sources": sources
    }
if __name__ == "__main__":

    question = "How long does it take to get my money back?"

    # Retrieve more candidate chunks using hybrid search
    results = hybrid_search(
    question,
    top_k=5
    )

    # Rerank candidates and keep the best 3
    results = rerank_results(
    question,
    results,
    top_k=3
    )

# Build context from the best chunks
    context = build_context(results)

    # Create prompt
    prompt = create_prompt(
        question,
        context
    )

    # Generate final answer
    answer = generate_answer(prompt)

    print("\n" + "=" * 60)
    print("USER QUESTION")
    print("=" * 60)
    print(question)

    print("\n" + "=" * 60)
    print("RETRIEVED CONTEXT")
    print("=" * 60)
    print(context)

    print("\n" + "=" * 60)
    print("LLAMA 3.2 ANSWER")
    print("=" * 60)
    print(answer)