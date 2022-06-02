#!/bin/bash
#
# add your solution after each of the 10 comments below
#

# count the number of unique stations
cut -d, -f5 201402-citibike-tripdata.csv | grep '[0-9]' | sort | uniq | wc -l
# count the number of unique bikes
cut -d, -f12 201402-citibike-tripdata.csv | grep '[0-9]' | sort | uniq | wc -l
# count the number of trips per day
 cut -d, -f2 201402-citibike-tripdata.csv | cut -c2-11 | grep '[0-9]' | sort -n | uniq -c | sort
# find the day with the most rides
cut -d, -f2 201402-citibike-tripdata.csv | cut -c2-11 | grep '[0-9]' | sort -n | uniq -c | sort | tail -n1
# find the day with the fewest rides
cut -d, -f2 201402-citibike-tripdata.csv | cut -c2-11 | grep '[0-9]' | sort -n | uniq -c | sort | head -n1
# find the id of the bike with the most rides
cut -d, -f12 201402-citibike-tripdata.csv | grep '[0-9]' | sort -n | uniq -c | sort | tail -n1 | cut -c5-15
# count the number of rides by gender and birth year
cut -d, -f14-15 201402-citibike-tripdata.csv | sort | grep '[0-9]' | uniq -c | sort -k2
# count the number of trips that start on cross streets that both contain numbers (e.g., "1 Ave & E 15 St", "E 39 St & 2 Ave", ...)
cut -d, -f5 201402-citibike-tripdata.csv | sort | grep '[0-9].*[0-9]' | wc -l
# compute the average trip duration



# head -n1 201402-citibike-tripdata.csv |tr ,  '\n' | cat -n