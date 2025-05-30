INSERT INTO dim_customer (customer_id, first_name, last_name, age, email, country, postal_code)
SELECT DISTINCT
  sale_customer_id,
  customer_first_name,
  customer_last_name,
  customer_age,
  customer_email,
  customer_country,
  customer_postal_code
FROM mock_data
WHERE sale_customer_id IS NOT NULL
ON CONFLICT (customer_id) DO NOTHING;