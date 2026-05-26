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

### 🔹 1. Total Rides by User Type

```sql
SELECT member_casual,
       COUNT(*) AS total_rides
FROM cleaned
GROUP BY member_casual;
```
### 🔹 2. Average Ride Duration
```sql
SELECT member_casual,
       AVG(ride_length) AS avg_ride_length_minutes
FROM cleaned
GROUP BY member_casual;
```
### 🔹 3. Weekly Usage Trends
```sql
SELECT member_casual,
       day_of_week,
       COUNT(*) AS ride_count
FROM cleaned
GROUP BY member_casual, day_of_week;
```
### 🔹 4. Monthly Usage Trends
```sql
SELECT member_casual,
       month,
       COUNT(*) AS ride_count
FROM cleaned
GROUP BY member_casual, month;
```

markdown id="insights_final"
## 🔍 Key Insights

- 📌 Casual riders take longer, leisure-based trips  
- 📌 Members ride consistently on weekdays (commuting behavior)  
- 📌 Casual riders peak on weekends  
- 📌 Ride demand increases in summer months (seasonality effect)

## 📊 Behavioral Summary

- Members = routine commuters  
- Casual riders = recreational users  
- Clear opportunity exists to convert weekend casual riders into members  

## 📌 Business Recommendations

🎯 Weekend Strategy

Offer weekend-focused membership promotions
Target casual riders who already prefer weekends


🎯 Conversion Strategy

Identify frequent casual riders
Send targeted offers to convert them into members


🎯 Trial Strategy

Introduce short-term trial memberships
Allow users to experience full benefits


🎯 Seasonal Strategy

Run campaigns during peak summer months
Increase marketing during high-demand periods


## 📊 Conclusion

📌 Summary of Findings

Clear behavioral differences exist between casual riders and members
Casual riders are more recreational users
Members show consistent commuter-style usage


## 📈 Business Impact

- Identifies high-value casual riders for conversion  
- Supports targeted marketing campaigns  
- Improves membership growth strategy using real usage data  
- Helps optimize seasonal marketing efforts



## 🚀 Final Takeaway

Understanding rider behavior enables data-driven decisions that can increase Cyclistic membership growth and improve marketing efficiency.

## ⚠️ Limitations

- Data is historical and not real-time  
- Weather and external factors not included  
- Some ride anomalies may still exist after cleaning 

## 👤 Author

👨‍💻 Ahmed Basheer

Aspiring Data Analyst



🛠️ Skills

SQL
Google Sheets
Data Visualization
Data Analysis


## 📫 Contact

Email: ab11999333@gmail.com
LinkedIn: http://linkedin.com/in/ahmed-basheer93
