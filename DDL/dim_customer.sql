DROP TABLE IF EXISTS dim_customer CASCADE;
CREATE TABLE dim_customer (
  customer_id_sk SERIAL PRIMARY KEY,
  customer_id BIGINT NOT NULL UNIQUE,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  age SMALLINT,
  email VARCHAR(255),
  country VARCHAR(100),
  postal_code VARCHAR(20)
);
