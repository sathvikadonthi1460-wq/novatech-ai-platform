import chromadb
from sentence_transformers import SentenceTransformer


# --------------------------------------------------
# 1. Load the same embedding model
# --------------------------------------------------

model = SentenceTransformer("all-MiniLM-L6-v2")


# --------------------------------------------------
# 2. Connect to our existing ChromaDB
# --------------------------------------------------

client = chromadb.PersistentClient(
    path="data/chroma"
)


# --------------------------------------------------
# 3. Connect to our document collection
# --------------------------------------------------

collection = client.get_collection(
    name="novatech_documents"
)


# --------------------------------------------------
# 4. Function to search for relevant information
# --------------------------------------------------
def detect_document_type(query):
    query_lower = query.lower()

    product_keywords = [
        "product",
        "plan",
        "basic",
        "standard",
        "premium",
        "feature",
        "features",
        "upgrade",
        "downgrade"
    ]

    policy_keywords = [
        "policy",
        "refund",
        "cancellation",
        "cancel",
        "discount",
        "retention"
    ]

    if any(word in query_lower for word in product_keywords):
        return "product_documentation"

    if any(word in query_lower for word in policy_keywords):
        return "policy"

    return None
def search_documents(query, number_of_results=5):

    # Convert the question into an embedding
    query_embedding = model.encode(query)
    document_type = detect_document_type(query)

    # Search ChromaDB
    query_parameters = {
    "query_embeddings": [query_embedding.tolist()],
    "n_results": number_of_results
    }

    if document_type is not None:
        query_parameters["where"] = {
        "document_type": document_type
        }

    results = collection.query(**query_parameters)
    return results

# --------------------------------------------------
# 5. Test our retrieval system
# --------------------------------------------------

if __name__ == "__main__":

    question = "How long does it take to get my money back?"

    results = search_documents(question)

    print("\nUSER QUESTION:")
    print(question)

    print("\nRETRIEVED INFORMATION:")
    print("=" * 60)

    for i, document in enumerate(results["documents"][0]):

        print(f"\nResult {i + 1}")
        print("-" * 60)
        print(document)

        print("\nMetadata:")
        print(results["metadatas"][0][i])

        print("\nDistance:")
        print(results["distances"][0][i])