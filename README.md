# Google-Data-Analytics-Capstone-Cyclistic-Case-Study

Course: [Google Data Analytics Capstone: Complete a Case Study](https://www.coursera.org/learn/google-data-analytics-capstone) 

This is a Capstone Project on the Google Data Analytics Course in Coursera, where I analyze data for the fictional company Cyclistic, to figure out the behaviour of users of the service the company provides.

## Introduction

In this case study, I work for a fictional company, Cyclistic, where I perform the real-world tasks a Junior Analyst would perform. In order to answer the business task, I will follow the process  of data analysis: [Ask](##Ask), [Prepare](##Prepare), [Process](##Process), [Analyze](##Analyze), [Share](##Share), and [Act](##Act).

### Quick Links

The Data Source can be found at: [divvy_tripdata](https://divvy-tripdata.s3.amazonaws.com/index.html). I used the data from 07/25 to 08/24, for a total of 12 months.

These were the SQL queries I used:
1
2
3
4

These are the Data Visualizations I made:

## Background

### Cyclistic

A bike-share program that features more than 5,800 bicycles and 600 docking stations. Cyclistic sets itself apart by also offering reclining bikes, hand tricycles, and cargo bikes, making bike-share more inclusive to people with disabilities and riders who can’t use a standard two-wheeled bike. The majority of riders opt for traditional bikes; about 8% of riders use the assistive options. Cyclistic users are more likely to ride for leisure, but about 30% use them to commute to work each day.

### Scenario

Until now, Cyclistic’s marketing strategy relied on building general awareness and appealing to broad consumer segments. One approach that helped make these things possible was the flexibility of its pricing plans: single-ride passes, full-day passes, and annual memberships. Customers who purchase single-ride or full-day passes are referred to as casual riders. Customers who purchase annual memberships are Cyclistic members.

Cyclistic’s finance analysts have concluded that annual members are much more profitable than casual riders. Although the pricing flexibility helps Cyclistic attract more customers, Moreno (the director of marketing and my manager) believes that maximizing the number of annual members will be key to future growth. Rather than creating a marketing campaign that targets all-new customers, Moreno believes there is a very good chance to convert casual riders into members. She notes that casual riders are already aware of the Cyclistic program and have chosen Cyclistic for their mobility needs.

Moreno (My direct Boss) has set a clear goal: Design marketing strategies aimed at converting casual riders into annual members. In order to do that, however, the marketing analyst team needs to better understand how annual members and casual riders differ, why casual riders would buy a membership, and how digital media could affect their marketing tactics. Moreno and her team are interested in analyzing the Cyclistic historical bike trip data to identify trends.

## Ask

### Analysis Questions

Three questions will guide the future marketing program:

1. How do annual members and casual riders use Cyclistic bikes differently?
2. Why would casual riders buy Cyclistic annual memberships?
3. How can Cyclistic use digital media to influence casual riders to become members?

Moreno has assigned me the first question to answer: How do annual members and casual riders use Cyclistic bikes differently?

### Business Task

Figure out marketing strategies to convert casual riders to members from the given data.

## Prepare

### Data Source
The Data Source can be found at: . I used the data from 07/25 to 08/24, for a total of 12 months.

I will use Cyclistic’s historical trip data to analyze and identify trends from August 2024 to July 2025, which can be downloaded from [divvy_tripdata](https://divvy-tripdata.s3.amazonaws.com/index.html). The data has been made available by Motivate International Inc. under this [license](https://divvybikes.com/data-license-agreement).

This is public data that can be used to explore how different customer types are using Cyclistic bikes. Data-privacy issues prohibit from using riders’ personally identifiable information. This means that we won’t be able to connect pass purchases to credit card numbers to determine if casual riders live in the Cyclistic service area or if they have purchased multiple single passes.

### Data Organization

There are 12 files with a naming convention of YYYYMM-divvy-tripdata, identifying the year and month the data was taken. Each file contains 13 columns which are:

-ride_id the id of each member.
-rideable_type the kind of bycicle the member used for that trip.
-started_at the time the member started their ride.
-ended_at the time the member ended their ride.
-start_station_name the name of the station where the member took off from.
-start_station_id the id of the station the member took off from.
-end_station_name the name of the station where the member finished their trip.
-end_station_id the id of the station where the member finished their trip.
-start_lat the latitude of the of the starting station.
-start_lng the longitude of the starting station.
-end_lat the latitude of the ending station.
-end_lng the longitude of the ending station.
-member_casual

## Process

MySQL is used to process and store the data, with help of DBeaver as a GUI tool.
This was chosen due to the inability of Sheets and Excel to deal with large amounts of data. Google Sheets can handle about 10 Million Cells, which for 13 columns would be aproximately 769 thousand rows. Since Cyclistic data exceeds this amount, I needed another way to process the data. The ideas for software were R, Python or SQL, the latter of which I decided for since I had the most familiarity.

### Data Combination
Since handling 12 diferent tables was not going to be much comfortable, the first thing to do was merging all 12 tables into a single one, holding the data for the entire year. However, I needed a way to ensure each table remains differentiated by month and year, so two aditional colums were made
This was done with the follow script (here).

### Data Exploration

### Data Cleaning

## Analyze

## Share

## Act
