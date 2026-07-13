
-- category_analysis.sql
-- Count incidents by category (system / capacity / user / infrastructure)
SELECT category, COUNT(*) AS incident_count
FROM sir_incidents
GROUP BY category
ORDER BY incident_count DESC;
