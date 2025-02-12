SELECT * FROM `myproject-450714.mydataset1.nyc_taxi_materialized` LIMIT 1000

--Question 2. Estimated amount of data (1 point)
SELECT  
  table_name,
  ROUND(SUM(total_logical_bytes) / 1024 / 1024, 2) AS size_mb
FROM 
  `myproject-450714.mydataset1.INFORMATION_SCHEMA.TABLE_STORAGE`
WHERE 
  table_name = 'nyc_taxi_materialized'
GROUP BY 
  table_name;

--Question 3. Why are the estimated number of Bytes different? (1 point)
--First retrieve only the PULocationID from the materialized table (nyc_taxi_materialized)
SELECT PULocationID
FROM `myproject-450714.mydataset1.nyc_taxi_materialized`;

--Now, retrieve both PULocationID and DOLocationID
SELECT PULocationID, DOLocationID
FROM `myproject-450714.mydataset1.nyc_taxi_materialized`;


SELECT COUNT(*) AS zero_fare_count
FROM `myproject-450714.mydataset1.nyc_taxi_materialized`
WHERE fare_amount = 0;







