# 🚲 Cyclistic Bike-Share Case Study

## 📊 Overview

This project analyzes Cyclistic bike-share data to understand how **casual riders** and **annual members** use bikes differently.  
The goal is to identify behavioral patterns that can help improve marketing strategies and increase membership conversions.

---

## 🎯 Business Problem

Cyclistic wants to convert casual riders into annual members.  
This analysis aims to understand:

- How casual riders differ from members
- When each group rides (day and month trends)
- How long each group rides

---

## 🛠️ Tools Used

- SQL (BigQuery)
- Google Sheets
- Data Cleaning
- Data Visualization

---

## 📂 Dataset

- 12 months of Cyclistic bike-share data
- Multiple monthly tables combined using SQL (UNION ALL)
- Cleaned to remove invalid and missing values

---

## 🧹 Data Preparation

- Combined 12 monthly datasets using UNION ALL
- Removed NULL values in start and end times
- Filtered invalid rides (end time before start time)
- Created new fields:
  - Ride duration (minutes)
  - Day of week
  - Month

---

## 📈 Analysis

### 1. Total Rides by User Type

```sql
SELECT member_casual,
       COUNT(*) AS total_rides
FROM cleaned
GROUP BY member_casual;

2. Average Ride Duration

SELECT member_casual,
       AVG(ride_length) AS avg_ride_length_minutes
FROM cleaned
GROUP BY member_casual;

3. Weekly Usage Trends


SELECT member_casual,
       day_of_week,
       COUNT(*) AS ride_count
FROM cleaned
GROUP BY member_casual, day_of_week;

4. Monthly Usage Trends


SELECT member_casual,
       month,
       COUNT(*) AS ride_count
FROM cleaned
GROUP BY member_casual, month;

🔍 Key Insights
- Casual riders take longer rides than members
- Members ride more consistently during weekdays
- Casual riders are more active on weekends
- Ride volume increases in warmer months
📌 Business Recommendations

- Offer weekend membership discounts
- Target frequent casual riders for conversion
- Introduce trial memberships
- Run seasonal marketing campaigns 

📊 Conclusion
This analysis provides insights into rider behavior and helps guide strategies to increase Cyclistic membership growth.

👤 Author
Ahmed Basheer
Aspiring Data Analyst
SQL | Tableau | Google Sheets | Data Visualization

