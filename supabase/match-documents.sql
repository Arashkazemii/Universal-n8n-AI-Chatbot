CREATE OR REPLACE FUNCTION match_documents(
    query_embedding VECTOR(3072),
    match_count     INT DEFAULT 20,
    filter          JSONB DEFAULT NULL
)
RETURNS TABLE (
    id UUID,
    content TEXT,
    metadata JSONB,
    similarity FLOAT
)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT
        d.id,
        d.content,
        d.metadata,
        1 - (d.embedding <=> query_embedding) AS similarity
    FROM documents d
    WHERE (filter IS NULL OR d.metadata @> filter)
    ORDER BY similarity DESC
    LIMIT match_count;
END;
$$;
