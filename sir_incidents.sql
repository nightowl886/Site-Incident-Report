
-- SIR system context
-- Data represents incidents from online proctoring exam platform
-- Time window: peak exam season
-- Severity follows SLA impact model
-- category represents incident ownership domain

CREATE TABLE sir_incidents (
    id INT PRIMARY KEY,
    incident_time DATETIME,
    issue_type VARCHAR(50),
    category VARCHAR(30), -- system / capacity / user / infrastructure
    severity VARCHAR(20), -- Severity Rules (documentation)
                          -- HIGH: exam interrupted / time loss / system unavailable
                          -- MEDIUM: performance degradation / partial failure
                          -- LOW: user mistake / non-blocking issue
    description TEXT
);



INSERT INTO sir_incidents VALUES
(1, '2026-04-29 10:16:13', 'login_failure', 'system', 'high', 'Authentication process failed during session'),
(2, '2026-04-29 11:35:43', 'session_timeout', 'capacity', 'medium', 'Session dropped unexpectedly under high load'),
(3, '2026-04-30 09:16:18', 'exam_loading_delay', 'system', 'medium', 'Interface took longer than expected to load'),
(4, '2026-04-30 10:18:53', 'login_failure', 'user', 'low', 'Invalid credentials entered'),
(5, '2026-04-30 13:16:38', 'system_crash', 'system', 'high', 'System crashed during delivery'),
(6, '2026-05-01 12:33:28', 'session_timeout', 'capacity', 'medium', 'Session disconnected during high traffic'),
(7, '2026-05-01 13:06:03', 'login_failure', 'system', 'high', 'Authentication system unresponsive during session'),
(8, '2026-05-04 10:16:29', 'exam_loading_delay', 'capacity', 'medium', 'Slow interface response during busy hours'),
(9, '2026-05-04 12:16:33', 'user_error', 'user', 'low', 'Navigation error occurred'),
(10, '2026-04-29 12:19:59', 'system_crash', 'system', 'high', 'System crash during peak usage'),
(11, '2026-05-01 09:01:03', 'network', 'infrastructure', 'high', 'Local network failure'),
(12, '2026-05-01 09:00:42', 'user endpoint', 'infrastructure', 'low', 'Endpoint device failed to start'),
(13, '2026-05-05 09:55:23', 'exam_loading_delay', 'user', 'high', 'Session temporarily paused due to environmental disruption'),
(14, '2026-05-05 10:05:08', 'exam_loading_delay', 'system', 'medium', 'Page failed to load multiple times'),
(15, '2026-05-05 10:08:37', 'user_error', 'environment_disruption', 'high', 'Session resumed after disruption, but ~20 minutes of time were lost'),
(16, '2026-05-06 09:18:46', 'login_failure', 'system', 'high', 'Eligibility record not found'),
(17, '2026-05-06 09:22:59', 'login_failure', 'system', 'high', 'Name mismatch detected'),
(18, '2026-05-06 09:40:24', 'login_failure', 'system', 'high', 'No valid test record found'),
(19, '2026-05-06 09:03:00', 'login_failure', 'system', 'high', 'Name fields incorrectly ordered'),
(20, '2026-05-05 14:35:00', 'exam_loading_delay', 'system', 'medium', 'Page failed to load'),

(21, '2026-05-06 09:40:25', 'login_failure', 'system', 'high', 'Duplicate authentication failure alert'),
(22, '2026-05-06 10:00:00', 'system_crash', 'unknown', 'high', 'Crash from unknown source'),
(23, '2026-05-06 10:05:00', 'user_error', 'user', 'high', 'Non-critical user input error'),

(24, '2026-05-07 09:00:08', 'network', 'infrastructure', 'high', 'Unexpected internet outage'),
(25, '2026-05-07 09:10:29', 'login_failure', 'system', 'medium', 'Authentication record not found'),
(26, '2026-05-07 12:47:51', 'login_failure', 'system', 'high', 'No valid eligibility record found'),
(27, '2026-05-08 09:15:00', 'user_error', 'user', 'low', 'Late session start'),
(28, '2026-05-14 10:17:05', 'network', 'unknown', 'high', 'Session window blank due to temporary error'),
(29, '2026-05-15 09:56:29', 'login_failure', 'system', 'high', 'Temporary authentication error'),
(30, '2026-05-15 09:30:08', 'exam_loading_delay', 'system', 'medium', 'Login process delayed by ~5 minutes'),
(31, '2026-05-15 10:56:08', 'login_failure', 'system', 'high', 'Temporary authentication error'),
(32, '2026-07-09 09:35:00', 'system_blackout', 'infrastructure', 'high', 'Sudden blackout; after re-login, timer continued, resulting in time loss'),
(33, '2026-07-16 10:14:00', 'ui_render_failure', 'system', 'high', 'UI rendering error caused layout distortion and non-functional input elements; session restart required')

