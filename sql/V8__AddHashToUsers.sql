DELETE FROM users;

ALTER TABLE users 
    ADD COLUMN hashword VARCHAR NOT NULL;

