
-- trend_analysis.sql
-- Count incidents by date
SELECT DATE(incident_time) AS incident_date,
       COUNT(*) AS incident_count
FROM sir_incidents
GROUP BY incident_date
ORDER BY incident_date;
