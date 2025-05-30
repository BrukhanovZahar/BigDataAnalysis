INSERT INTO dim_date (sale_date, year, quarter, month, day, weekday)
SELECT DISTINCT
  sale_date,
  EXTRACT(YEAR FROM sale_date)::SMALLINT,
  EXTRACT(QUARTER FROM sale_date)::SMALLINT,
  EXTRACT(MONTH FROM sale_date)::SMALLINT,
  EXTRACT(DAY FROM sale_date)::SMALLINT,
  EXTRACT(DOW FROM sale_date)::SMALLINT
FROM mock_data
WHERE sale_date IS NOT NULL
ON CONFLICT (sale_date) DO NOTHING;