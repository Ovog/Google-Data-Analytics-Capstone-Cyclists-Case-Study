-- To check the null contents of each column, we use the count(*) to count all rows, and count (column_name) to count rows without nulls; their difference is the null count. Since we have a lot of columns, we ideally want to see only those that contain null entries. We could use a "Union ALL" to select each row individually, scan it, and build our final table, but that would be inefficient and slow.

--Instead, we use a subquery to create a temporary table with the contents of the null data "counts", and another subquery to get a table with the contents of the names of the data that will be associated, "column_list." We Cross Join then, and use "ON 1=1" since we don't have a key linking them, such that they are a 1 on 1 match. 

--Finally, we end up with HAVING null_count > 0 to exclude those entries with 0 nulls.


SELECT 
    column_list.column_name,
    CASE column_list.column_name
        WHEN 'ride_id' THEN counts.ride_id
        WHEN 'rideable_type' THEN counts.rideable_type
        WHEN 'started_at' THEN counts.started_at
        WHEN 'ended_at' THEN counts.ended_at
        WHEN 'start_station_name' THEN counts.start_station_name
        WHEN 'start_station_id' THEN counts.start_station_id
        WHEN 'end_station_name' THEN counts.end_station_name
        WHEN 'end_station_id' THEN counts.end_station_id
        WHEN 'start_lat' THEN counts.start_lat
        WHEN 'start_lng' THEN counts.start_lng
        WHEN 'end_lat' THEN counts.end_lat
        WHEN 'end_lng' THEN counts.end_lng
        WHEN 'member_casual' THEN counts.member_casual
    END AS null_count
FROM (
    SELECT 
        COUNT(*) - COUNT(ride_id) AS ride_id,
        COUNT(*) - COUNT(rideable_type) AS rideable_type,
        COUNT(*) - COUNT(started_at) AS started_at,
        COUNT(*) - COUNT(ended_at) AS ended_at,
        COUNT(*) - COUNT(start_station_name) AS start_station_name,
        COUNT(*) - COUNT(start_station_id) AS start_station_id,
        COUNT(*) - COUNT(end_station_name) AS end_station_name,
        COUNT(*) - COUNT(end_station_id) AS end_station_id,
        COUNT(*) - COUNT(start_lat) AS start_lat,
        COUNT(*) - COUNT(start_lng) AS start_lng,
        COUNT(*) - COUNT(end_lat) AS end_lat,
        COUNT(*) - COUNT(end_lng) AS end_lng,
        COUNT(*) - COUNT(member_casual) AS member_casual
    FROM cyclistic.combined_tripdata
) AS counts
CROSS JOIN (
    SELECT 'ride_id' AS column_name UNION ALL
    SELECT 'rideable_type' UNION ALL
    SELECT 'started_at' UNION ALL
    SELECT 'ended_at' UNION ALL
    SELECT 'start_station_name' UNION ALL
    SELECT 'start_station_id' UNION ALL
    SELECT 'end_station_name' UNION ALL
    SELECT 'end_station_id' UNION ALL
    SELECT 'start_lat' UNION ALL
    SELECT 'start_lng' UNION ALL
    SELECT 'end_lat' UNION ALL
    SELECT 'end_lng' UNION ALL
    SELECT 'member_casual'
) AS column_list
ON 1=1
HAVING null_count > 0;

--Moving on, we check for duplicates now. Being careful since Count(Distinct) also counts nulls, we use one of the columns that contains no null values. One of these is ride_id, which works for our ID, so we do the following count trick, using count(*) for safety.

SELECT 
    COUNT(*) AS total_rows,
    COUNT(DISTINCT ride_id) AS unique_rides,
    COUNT(*) - COUNT(DISTINCT ride_id) AS duplicate_rows
FROM cyclistic.combined_tripdata;

