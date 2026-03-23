## Vector DB Use Case

A traditional keyword-based search would not be sufficient for searching large legal contracts. Keyword search only looks for exact word matches and does not understand the meaning of the query. For example, if a lawyer searches for "termination clauses," a keyword-based system may miss relevant sections that use different wording like "contract cancellation" or "agreement ending conditions."

Vector databases solve this problem by using embeddings, which capture the semantic meaning of text. In this system, the contract would be divided into smaller sections, and each section would be converted into embeddings using a model like all-MiniLM-L6-v2.

When a lawyer asks a question in plain English, the query is also converted into an embedding. The vector database then finds the most similar sections based on meaning, not just keywords. This allows the system to return accurate and relevant results even if the wording is different.

Therefore, a vector database plays a crucial role in enabling semantic search, improving accuracy, and making it easier for lawyers to quickly find relevant information in large documents.
