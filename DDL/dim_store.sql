DROP TABLE IF EXISTS dim_store CASCADE;
CREATE TABLE dim_store (
  store_id_sk SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE,
  location TEXT,
  city VARCHAR(100),
  state VARCHAR(100),
  country VARCHAR(100),
  phone VARCHAR(50),
  email VARCHAR(255)
);