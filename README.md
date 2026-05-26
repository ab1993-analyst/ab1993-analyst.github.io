# 🚲 Cyclistic Bike-Share Case Study

## 📊 OVERVIEW

This project analyzes Cyclistic bike-share data to understand differences between casual riders and annual members.  
The goal is to improve marketing strategy and increase membership conversions.

---

## 🎯 BUSINESS PROBLEM

Cyclistic wants to convert casual riders into annual members by understanding:

- Usage differences between user types  
- Ride duration behavior  
- Weekly and monthly patterns  

---

## 🛠️ TOOLS USED

- SQL (BigQuery)  
- Google Sheets  
- Data Cleaning  
- Data Visualization  

---

## 📂 DATASET

- 12 months of Cyclistic trip data  
- Combined using UNION ALL  
- Cleaned for missing and invalid values  

---

## 🧹 DATA PREPARATION

- Merged monthly datasets  
- Removed NULL values  
- Filtered invalid rides  
- Created:
  - ride length  
  - day of week  
  - month  

---

## 📈 ANALYSIS

### Total Rides by User Type

```sql
SELECT member_casual,
 COUNT(*) AS total_rides
FROM cleaned
GROUP BY member_casual;
```
Average Ride Duration
```sql
SELECT member_casual,
 AVG(ride_length) AS avg_ride_length_minutes
FROM cleaned
GROUP BY member_casual;
```
Weekly Usage Trends
```sql
SELECT member_casual,
       day_of_week,
       COUNT(*) AS ride_count
FROM cleaned
GROUP BY member_casual, day_of_week;
```
Monthly Usage Trends
```sql
SELECT member_casual,
       month,
       COUNT(*) AS ride_count
FROM cleaned
GROUP BY member_casual, month;
```
🔍 KEY INSIGHTS

Casual riders take longer rides
Members ride more during weekdays
Casual riders prefer weekends
Higher usage in summer months


📌 BUSINESS RECOMMENDATIONS

Offer weekend membership discounts
Target frequent casual riders
Introduce trial memberships
Run seasonal campaigns


📊 CONCLUSION

This analysis reveals clear behavioral differences between casual riders and members, supporting targeted marketing strategies.



👤 AUTHOR

Ahmed Basheer
Aspiring Data Analyst
SQL | Tableau | Google Sheets | Data Visualization
