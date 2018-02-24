CREATE UNIQUE INDEX token_idx ON authtokens (token);

CREATE INDEX expire_idx ON authtokens (expiration);

ALTER TABLE authtokens ALTER COLUMN expiration SET DEFAULT now() + interval '1 hour';
