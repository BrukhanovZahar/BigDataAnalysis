INSERT INTO dim_seller (seller_id, first_name, last_name, email, country, postal_code)
SELECT DISTINCT
  sale_seller_id,
  seller_first_name,
  seller_last_name,
  seller_email,
  seller_country,
  seller_postal_code
FROM mock_data
WHERE sale_seller_id IS NOT NULL
ON CONFLICT (seller_id) DO NOTHING;