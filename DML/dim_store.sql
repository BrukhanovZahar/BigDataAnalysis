INSERT INTO dim_store (name, location, city, state, country, phone, email)
SELECT DISTINCT
  store_name,
  store_location,
  store_city,
  store_state,
  store_country,
  store_phone,
  store_email
FROM mock_data
WHERE store_name IS NOT NULL
ON CONFLICT (name) DO NOTHING;