CREATE TABLE IF NOT EXISTS users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO users (name, email)
VALUES 
  ('John Doe', 'johndoe@example.com'),
  ('Jane Doe', 'janedoe@example.com'),
  ('Bob Smith', 'bobsmith@example.com');
