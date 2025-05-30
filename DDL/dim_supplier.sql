DROP TABLE IF EXISTS dim_supplier CASCADE;
CREATE TABLE dim_supplier (
  supplier_id_sk SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE,
  contact_person VARCHAR(200),
  email VARCHAR(255),
  phone VARCHAR(50),
  address TEXT,
  city VARCHAR(100),
  country VARCHAR(100)
);