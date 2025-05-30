DROP TABLE IF EXISTS dim_date CASCADE;
CREATE TABLE dim_date (
  date_id_sk SERIAL PRIMARY KEY,
  sale_date DATE NOT NULL UNIQUE,
  year SMALLINT,
  quarter SMALLINT,
  month SMALLINT,
  day SMALLINT,
  weekday SMALLINT
);
