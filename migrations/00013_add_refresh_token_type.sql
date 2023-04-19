BEGIN;
CREATE TYPE refresh_token_type AS ENUM ('regular', 'pat');
ALTER TABLE auth.refresh_tokens
ADD COLUMN type refresh_token_type NOT NULL DEFAULT 'regular';
END;