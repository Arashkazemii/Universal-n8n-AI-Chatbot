-- Required for vector search
create extension if not exists vector with schema extensions;

-- Minimal vector-based document table
CREATE TABLE documents (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    content   TEXT NOT NULL,
    embedding VECTOR(3072),
    metadata  JSONB NOT NULL
);
