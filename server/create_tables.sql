CREATE TABLE users (
    user_pk SERIAL PRIMARY KEY,
    user_id VARCHAR(32)
);

CREATE TABLE followers (
    follower_pk SERIAL PRIMARY KEY,
    user_fk INTEGER REFERENCES users(user_pk) NOT NULL,
    follower_id VARCHAR(32)
);

CREATE TABLE retweets (
    retweet_pk SERIAL PRIMARY KEY,
    user_fk INTEGER REFERENCES users(user_pk) NOT NULL,
    retweet_user_id VARCHAR(32),
    retweet_text VARCHAR(128)
);
