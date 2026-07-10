
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
(1, '2026-04-29 10:16:13', 'login_failure', 'system', 'high', 'Candidate unable to log in during exam launch'),
(2, '2026-04-29 11:35:43', 'session_timeout', 'capacity', 'medium', 'Session dropped during exam, likely due to high load'),
(3, '2026-04-30 09:16:18', 'exam_loading_delay', 'system', 'medium', 'Exam took long time to load'),
(4, '2026-04-30 10:18:53', 'login_failure', 'user', 'low', 'Incorrect credentials entered'),
(5, '2026-04-30 13:16:38', 'system_crash', 'system', 'high', 'System crashed during exam delivery'),
(6, '2026-05-01 12:33:28', 'session_timeout', 'capacity', 'medium', 'Session disconnected during high traffic'),
(7, '2026-05-01 13:06:03', 'login_failure', 'system', 'high', 'Login system unresponsive'),
(8, '2026-05-04 10:16:29', 'exam_loading_delay', 'capacity', 'medium', 'Slow loading during busy hours'),
(9, '2026-05-04 12:16:33', 'user_error', 'user', 'low', 'Candidate navigated incorrectly'),
(10, '2026-04-29 12:19:59', 'system_crash', 'system', 'high', 'System crash during peak usage'),
(11, '2026-05-01 09:01:03', 'network', 'infrastructure', 'high', 'Test site wifi Failure'),
(12, '2026-05-01 09:00:42', 'user endpoint', 'infrastructure', 'low', 'Computer cannot turn on'),
(13, '2026-05-05 09:55:23', 'exam_loading_delay', 'user', 'high', 'tests of 3 candidates were paused due to one candidate talks too loud'),
(14, '2026-05-05 10:05:08', 'exam_loading_delay', 'system', 'medium', 'page failed to load for 3 times'),
(15, '2026-05-05 10:08:37', 'user_error', 'environment_disruption', 'high', 'When candidates logged back, they lost 20 mins '),
(16, '2026-05-06 09:18:46', 'login_failure', 'system', 'high', 'No eligibility found '),
(17, '2026-05-06 09:22:59', 'login_failure', 'system', 'high', 'Last name doesnt match'),
(18, '2026-05-06 09:40:24', 'login_failure', 'system', 'high', 'No written test found'),
(19, '2026-05-06 09:03:00', 'login_failure', 'system', 'high', 'Last name & First name are switched'),
(20, '2026-05-05 14:35:00', 'exam_loading_delay', 'system', 'medium', 'page failed to load'),

(21, '2026-05-06 09:40:25', 'login_failure', 'system', 'high', 'Duplicate login failure alert'),
(22, '2026-05-06 10:00:00', 'system_crash', 'unknown', 'high', 'Unknown source crash'),
(23, '2026-05-06 10:05:00', 'user_error', 'user', 'high', 'User mistake caused non-critical issue'),

(24, '2026-05-07 09:00:08', 'network', 'infrastructure', 'high', 'Internet is out'),

(25, '2026-05-07 09:10:29', 'login_failure', 'system', 'medium', 'Name not on the roster'),
(26, '2026-05-07 12:47:51', 'login_failure', 'system', 'high', 'No valid test found for the eligibility(ticket # 082773581)')

(27, '2026-05-08 09:15:00', 'user_error', 'user', 'low', 'Candidate arrived late for 15 minutes')

(28, '2026-05-14 10:17:05', 'network', 'unknown', 'high', 'Three Candidates test window gone blank')

(29, '2026-05-15 09:56:29', 'login_failure', 'system', 'high', 'The TCNET changed the whole proctors passwords without notifying us(#08296256)
). '

(30, '2026-05-15 09:30:08', 'exam_loading_delay', 'system', 'medium', 'It takes 5 mins to log in'
). 
(31, '2026-05-15 10:56:08', 'login_failure', 'system', 'high', 'They changed the testing system password as well'
). 
(32, '2026-07-09 09:35:00', 'system_blackout', 'infrastructure', 'high', 
 'All candidates experienced sudden blackout; after re-login, exam timer continued, resulting in ~5 minutes lost');
