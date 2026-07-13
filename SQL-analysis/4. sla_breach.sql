
-- sla_breach.sql
-- List all high severity incidents (SLA breach)
SELECT *
FROM sir_incidents
WHERE severity = 'high';
