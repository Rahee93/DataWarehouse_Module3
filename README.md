# DataWarehouse_Module3

Homework 3: Data Warehousing for Data Engineering Zoomcamp 2025
https://github.com/DataTalksC…

Due date: 12 February 2025 18:00 (local time)

Questions
Question 1. Count of records for the 2024 Yellow Taxi Data (1 point)
1. 65,623
2. 840,402
3. 20,332,093   ======> CORRECT ANSWER
4. 85,431,289
   
Question 2. Estimated amount of data (1 point)
1. 18.82 MB for the External Table and 47.60 MB for the Materialized Table
2. 0 MB for the External Table and 155.12 MB for the Materialized Table  ======> CORRECT ANSWER
3. 2.14 GB for the External Table and 0MB for the Materialized Table
4. 0 MB for the External Table and 0MB for the Materialized Table

Question 3. Why are the estimated number of Bytes different? (1 point)
1. BigQuery is a columnar database, and it only scans the specific columns requested in the query. Querying two columns (PULocationID, DOLocationID) requires reading more data than querying one column (PULocationID), leading to a higher estimated number of bytes processed. ======> CORRECT ANSWER
2. BigQuery duplicates data across multiple storage partitions, so selecting two columns instead of one requires scanning the table twice, doubling the estimated bytes processed.
3. BigQuery automatically caches the first queried column, so adding a second column increases processing time but does not affect the estimated bytes scanned.
4. When selecting multiple columns, BigQuery performs an implicit join operation between them, increasing the estimated bytes processed

Question 4. How many records have a fare_amount of 0? (1 point)
1. 128,210
2. 546,578
3. 20,188,016
4. 8,333  ======> CORRECT ANSWER
   
Question 5. The best strategy to make an optimized table in Big Query (1 point)
1. Partition by tpep_dropoff_datetime and Cluster on VendorID   ======> CORRECT ANSWER
2. Cluster on by tpep_dropoff_datetime and Cluster on VendorID
3. Cluster on tpep_dropoff_datetime Partition by VendorID
4. Partition by tpep_dropoff_datetime and Partition by VendorID
   
Question 6. Estimated processed bytes (1 point)
1. 12.47 MB for non-partitioned table and 326.42 MB for the partitioned table
2. 310.24 MB for non-partitioned table and 26.84 MB for the partitioned table   ======> CORRECT ANSWER
3. 5.87 MB for non-partitioned table and 0 MB for the partitioned table
4. 310.31 MB for non-partitioned table and 285.64 MB for the partitioned table

Question 7. Where is the data for external tables stored? (1 point)
1. Big Query
2. Container Registry
3. GCP Bucket  ======> CORRECT ANSWER
4. Big Table

Question 8. Always clustering (1 point)
1.True
2. False  ======> CORRECT ANSWER
