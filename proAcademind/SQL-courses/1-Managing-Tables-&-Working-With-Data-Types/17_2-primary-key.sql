DROP TABLE users;
DROP TABLE employers;
DROP TABLE conversations;

-- Postgres + ENUM => We have to create a custom type FIRSTCRE
-- CREATE TYPE employment_status AS ENUM('employed', 'self-employed', 'unemployed'); -- Postgres syntax
CREATE TABLE users (
  -- id SERIAL PRIMARY KEY, -- Postgres syntax
  id INT PRIMARY KEY AUTO_INCREMENT, -- MySQl syntax
  first_name VARCHAR(200) NOT NULL,
  last_name VARCHAR(200) NOT NULL,
  full_name VARCHAR(401) GENERATED ALWAYS AS (CONCAT(first_name,' ',last_name)),
  yearly_salary INT CHECK (yearly_salary > 0),
  -- current_status employment_status -- Postgres syntax
  current_status ENUM('employed', 'self-employed', 'unemployed') -- MySQl syntax
);

CREATE TABLE employers (
  -- id SERIAL PRIMARY KEY, -- Postgres syntax
  id INT PRIMARY KEY AUTO_INCREMENT, -- MySQl syntax
  company_name VARCHAR(300) NOT NULL,
  company_address VARCHAR(300) NOT NULL,
  yearly_revenue FLOAT CHECK (yearly_revenue > 0),
  is_hiring BOOLEAN DEFAULT FALSE
);

CREATE TABLE conversations (
  -- id SERIAL PRIMARY KEY, -- Postgres syntax
  id INT PRIMARY KEY AUTO_INCREMENT, -- MySQl syntax
  user_id INT,
  employer_id INT,
  message TEXT NOT NULL,
  date_rent TIMESTAMP DEFAULT CURRENT_TIMESTAMP
 );