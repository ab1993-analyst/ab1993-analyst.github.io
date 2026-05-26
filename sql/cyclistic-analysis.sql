/*
========================================================
CYCISTIC BIKE SHARE ANALYSIS
Author: Ahmed Basheer

OBJECTIVE:
Analyze differences between casual riders and members
to understand usage patterns and support marketing strategy.
========================================================
*/

WITH base AS (

SELECT *, 'Jan' AS month FROM `combined-data-495320.Combined12Months.January`
UNION ALL
SELECT *, 'Feb' AS month FROM `combined-data-495320.Combined12Months.February`
UNION ALL
SELECT *, 'Mar' AS month FROM `combined-data-495320.Combined12Months.March`
UNION ALL
SELECT *, 'Apr' AS month FROM `combined-data-495320.Combined12Months.April`
UNION ALL
SELECT *, 'May' AS month FROM `combined-data-495320.Combined12Months.May`
UNION ALL
SELECT *, 'Jun' AS month FROM `combined-data-495320.Combined12Months.June Part 1`
UNION ALL
SELECT *, 'Jun' AS month FROM `combined-data-495320.Combined12Months.June Part 2`
UNION ALL
SELECT *, 'Jul' AS month FROM `combined-data-495320.Combined12Months.July Part 1`
UNION ALL
SELECT *, 'Jul' AS month FROM `combined-data-495320.Combined12Months.July Part 2`
UNION ALL
SELECT *, 'Aug' AS month FROM `combined-data-495320.Combined12Months.August Part 1`
UNION ALL
SELECT *, 'Aug' AS month FROM `combined-data-495320.Combined12Months.August Part 2`
UNION ALL
SELECT *, 'Sep' AS month FROM `combined-data-495320.Combined12Months.September Part 1`
UNION ALL
SELECT *, 'Sep' AS month FROM `combined-data-495320.Combined12Months.September Part 2`
UNION ALL
SELECT *, 'Oct' AS month FROM `combined-data-495320.Combined12Months.October Part 1`
UNION ALL
SELECT *, 'Oct' AS month FROM `combined-data-495320.Combined12Months.October Part 2`
UNION ALL
SELECT *, 'Nov' AS month FROM `combined-data-495320.Combined12Months.November`
UNION ALL
SELECT *, 'Dec' AS month FROM `combined-data-495320.Combined12Months.December`

),

cleaned AS (

SELECT
  ride_id,
  member_casual,
  started_at,
  ended_at,

  TIMESTAMP_DIFF(ended_at, started_at, MINUTE) AS ride_length,
  FORMAT_DATE('%A', DATE(started_at)) AS day_of_week,
  EXTRACT(MONTH FROM started_at) AS month

FROM base
WHERE started_at IS NOT NULL
  AND ended_at IS NOT NULL
  AND ended_at > started_at

)

-- =========================================
-- 1. Average Ride Length
-- =========================================
SELECT
  member_casual,
  AVG(ride_length) AS avg_ride_length_minutes
FROM cleaned
GROUP BY member_casual;


-- =========================================
-- 2. Total Rides by User Type
-- =========================================
SELECT
  member_casual,
  COUNT(*) AS total_rides
FROM cleaned
GROUP BY member_casual
ORDER BY total_rides DESC;


-- =========================================
-- 3. Rides by Day of Week
-- =========================================
SELECT
  member_casual,
  day_of_week,
  COUNT(*) AS ride_count
FROM cleaned
GROUP BY member_casual, day_of_week
ORDER BY member_casual;


-- =========================================
-- 4. Rides by Month
-- =========================================
SELECT
  member_casual,
  month,
  COUNT(*) AS ride_count
FROM cleaned
GROUP BY member_casual, month
ORDER BY month;
