-- This table is not used by our applications, it's just used
-- as part of a Hello World endpoint demonstrating how to connect to and read
-- from the database. It may be removed in a later migration.

CREATE TABLE code_louisville_students (
	id BIGSERIAL,
	name VARCHAR NOT NULL
);

INSERT INTO code_louisville_students (name) VALUES ('Code Louisville Student One');