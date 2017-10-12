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
/*Advanced Select*/
SELECT Company.Company_code, Company.founder, COUNT(DISTINCT Employee.Lead_Manager_code),
COUNT(DISTINCT Employee.senior_manager_code), COUNT(DISTINCT Employee.manager_code),
COUNT(DISTINCT Employee.employee_code) FROM Company INNER JOIN Employee ON Employee.Company_Code = Company.Company_Code,
GROUP BY Company.Company_Code, Company.founder ORDER BY Company.Company_code;

/*Project conditions*/
SELECT T1.Start_Date,T2.End_Date FROM ( SELECT Start_Date,ROW_NUMBER() OVER (ORDER BY Start_Date) RN FROM Projects WHERE Start_Date NOT IN (SELECT END_Date FROM Projects) ) AS T1 INNER JOIN (
SELECT End_Date,ROW_NUMBER() OVER (ORDER BY End_Date) RN FROM Projects WHERE End_Date NOT IN (SELECT Start_Date FROM Projects)
) AS T2 ON T1.RN = T2.RN ORDER BY DATEDIFF(Day,T1.Start_Date,T2.End_Date),T1.Start_Date;
