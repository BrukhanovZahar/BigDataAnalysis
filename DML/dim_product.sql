INSERT INTO dim_product (product_id, name, category, weight, color, size, brand, material, description, rating, reviews, release_date, expiry_date, unit_price)
SELECT DISTINCT
  sale_product_id,
  product_name,
  product_category,
  product_weight,
  product_color,
  product_size,
  product_brand,
  product_material,
  product_description,
  product_rating,
  product_reviews,
  product_release_date,
  product_expiry_date,
  product_price
FROM mock_data
WHERE sale_product_id IS NOT NULL
ON CONFLICT (product_id) DO NOTHING;