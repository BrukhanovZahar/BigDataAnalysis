DROP TABLE IF EXISTS dim_seller CASCADE;
CREATE TABLE dim_seller (
  seller_id_sk SERIAL PRIMARY KEY,
  seller_id BIGINT NOT NULL UNIQUE,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  email VARCHAR(255),
  country VARCHAR(100),
  postal_code VARCHAR(20)
);