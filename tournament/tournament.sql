-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.
CREATE TABLE players (name TEXT NOT NULL,
                      id SERIAL UNIQUE);

CREATE TABLE matches (winner_id int REFERENCES players(id),
                      loser_id int REFERENCES players(id),
                      id SERIAL UNIQUE);
