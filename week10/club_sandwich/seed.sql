DROP TABLE IF EXISTS sandwich;

CREATE TABLE sandwich (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  -- 255 is default value
  description TEXT
);

INSERT INTO sandwich (title, description) VALUES ('Ham', 'tasty');
INSERT INTO sandwich (title, description) VALUES ('Jam', ' not so tasty');
INSERT INTO sandwich (title, description) VALUES ('Spam', 'sort of tasty');
INSERT INTO sandwich (title, description) VALUES ('Clam', 'much tasty');
INSERT INTO sandwich (title, description) VALUES ('Lamb', ' very tasty');
