
-- root_cause.sql
-- Count incidents by issue_type (root cause analysis)
SELECT issue_type, COUNT(*) AS incident_count
FROM sir_incidents
GROUP BY issue_type
ORDER BY incident_count DESC;
