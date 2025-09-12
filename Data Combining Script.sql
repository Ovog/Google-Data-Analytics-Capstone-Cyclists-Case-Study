drop table IF EXISTS cyclistic.combined_tripdata

#This drop table IF, and the next create table IF, ensure that in the process of debugging, a new table can be created in place of the old one.

create table if not exists cyclistic.combined_tripdata as (
	select * from cyclistic.202408_divvy_tripdata
	union all
	select * from cyclistic.202409_divvy_tripdata
	union all
	select * from cyclistic.202410_divvy_tripdata
	union all
	select * from cyclistic.202411_divvy_tripdata
	union all
	select * from cyclistic.202412_divvy_tripdata
	union all
	select * from cyclistic.202501_divvy_tripdata
	union all
	select * from cyclistic.202502_divvy_tripdata
	union all
	select * from cyclistic.202503_divvy_tripdata
	union all
	select * from cyclistic.202504_divvy_tripdata
	union all
	select * from cyclistic.202505_divvy_tripdata
	union all
	select * from cyclistic.202506_divvy_tripdata
	union all
	select * from cyclistic.202507_divvy_tripdata
	);
