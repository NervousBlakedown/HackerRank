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
