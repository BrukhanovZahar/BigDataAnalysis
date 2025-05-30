DROP TABLE IF EXISTS dim_product CASCADE;
CREATE TABLE dim_product (
  product_id_sk SERIAL PRIMARY KEY,
  product_id BIGINT NOT NULL UNIQUE,
  name VARCHAR(255) NOT NULL,
  category VARCHAR(100),
  weight NUMERIC(8,3),
  color VARCHAR(50),
  size VARCHAR(50),
  brand VARCHAR(100),
  material VARCHAR(100),
  description TEXT,
  rating NUMERIC(3,2),
  reviews INT,
  release_date DATE,
  expiry_date DATE,
  unit_price NUMERIC(10,2)
);
