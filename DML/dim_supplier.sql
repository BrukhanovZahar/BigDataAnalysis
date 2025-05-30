INSERT INTO dim_supplier (name, contact_person, email, phone, address, city, country)
SELECT DISTINCT
  supplier_name,
  supplier_contact,
  supplier_email,
  supplier_phone,
  supplier_address,
  supplier_city,
  supplier_country
FROM mock_data
WHERE supplier_name IS NOT NULL
ON CONFLICT (name) DO NOTHING;