/*Look for baseball stadium sales by seat section and unsold tickets*/
SELECT SUM(remaining_ticket_count) FROM dbo.ticket_group WHERE event_id = 22823;
SELECT SUM(remaining_ticket_count) FROM dbo.ticket_group WHERE event_id = 22823 AND section LIKE '%20 Person%';
SELECT SUM(remaining_ticket_count) FROM dbo.ticket_group WHERE event_id = 22823 AND section LIKE '%Crown%';
SELECT SUM(remaining_ticket_count) FROM dbo.ticket_group WHERE event_id = 22823 AND standard_section_name LIKE '%Diamond Club%';
SELECT SUM(remaining_ticket_count) FROM dbo.ticket_group WHERE event_id = 22823 AND standard_section_name LIKE '%Dugout Box%';
SELECT SUM(remaining_ticket_count) FROM dbo.ticket_group WHERE event_id = 22823 AND standard_section_name LIKE '%Dugout Plaza%';
SELECT SUM(remaining_ticket_count) FROM dbo.ticket_group WHERE event_id = 22823 AND standard_section_name LIKE '%Field Box%';
ORDER BY event_id ASC, section ASC;

/*Same sales, but with sold seats*/
SELECT * FROM dbo.events WHERE event_name LIKE '%Kansas City Royals%' AND invoice_id IS NOT NULL;
ORDER BY event_id ASC, section ASC;

/*Basic Select; USA cities with one parameter (population)*/
SELECT * FROM City WHERE countrycode = "USA" AND population > 100000;

/*Binary Tree Nodes*/
SELECT N, CASE WHEN P IS NULL THEN 'Root' WHEN (SELECT COUNT(*) FROM BST WHERE P=B.N)>0 THEN 'Inner' ELSE 'Leaf' END FROM BST AS B ORDER BY N;
