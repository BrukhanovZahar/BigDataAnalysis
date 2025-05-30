INSERT INTO fact_sales (date_id_sk, customer_id_sk, seller_id_sk, product_id_sk, store_id_sk, supplier_id_sk, sale_quantity, sale_total, unit_price)
SELECT
  d.date_id_sk,
  c.customer_id_sk,
  s.seller_id_sk,
  p.product_id_sk,
  st.store_id_sk,
  sup.supplier_id_sk,
  md.sale_quantity,
  md.sale_total_price,
  md.product_price
FROM mock_data md
JOIN dim_date d ON md.sale_date = d.sale_date
JOIN dim_customer c ON md.sale_customer_id = c.customer_id
JOIN dim_seller s ON md.sale_seller_id = s.seller_id
JOIN dim_product p ON md.sale_product_id = p.product_id
JOIN dim_store st ON md.store_name = st.name
JOIN dim_supplier sup ON md.supplier_name = sup.name
WHERE md.sale_customer_id IS NOT NULL AND md.sale_seller_id IS NOT NULL AND md.sale_product_id IS NOT NULL;
