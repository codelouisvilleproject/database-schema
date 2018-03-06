DELETE FROM authtokens;

ALTER TABLE authtokens
    ADD COLUMN user_id  BIGINT NOT NULL REFERENCES users (id);
