DROP TABLE cars;

CREATE TABLE users (
    id UUID PRIMARY KEY,
    firstname VARCHAR NOT NULL,
    lastname VARCHAR NOT NULL,
	birthdate DATE
);

CREATE TABLE activitytypes (
	id UUID PRIMARY KEY,
	name VARCHAR NOT NULL,
    description VARCHAR NOT NULL,
);

CREATE TABLE activities (
    id UUID PRIMARY KEY,
	userid UUID REFERENCES users(id),
	activitytypeid UUID REFERENCES activitytypes(id),
	durationmilliseconds BIGINT
);

