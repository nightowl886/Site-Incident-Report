-- incident_overview.sql
-- Count incidents by severity (High / Medium / Low)
SELECT severity, COUNT(*) AS incident_count
FROM sir_incidents
GROUP BY severity;
