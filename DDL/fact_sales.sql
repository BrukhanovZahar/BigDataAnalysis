DROP TABLE IF EXISTS fact_sales CASCADE;
CREATE TABLE fact_sales (
  sale_id_sk SERIAL PRIMARY KEY,
  date_id_sk INT NOT NULL REFERENCES dim_date(date_id_sk),
  customer_id_sk INT NOT NULL REFERENCES dim_customer(customer_id_sk),
  seller_id_sk INT NOT NULL REFERENCES dim_seller(seller_id_sk),
  product_id_sk INT NOT NULL REFERENCES dim_product(product_id_sk),
  store_id_sk INT NOT NULL REFERENCES dim_store(store_id_sk),
  supplier_id_sk INT NOT NULL REFERENCES dim_supplier(supplier_id_sk),
  sale_quantity INT,
  sale_total NUMERIC(12,2),
  unit_price NUMERIC(10,2)
);