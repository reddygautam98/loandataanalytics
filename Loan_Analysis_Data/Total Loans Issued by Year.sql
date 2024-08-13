--How many loans have been issued each year?
SELECT EXTRACT(YEAR FROM TO_DATE(l.issue_date, 'DD-MM-YYYY')) AS issue_year, COUNT(l.loan_id) AS loan_count
FROM loans l
GROUP BY issue_year
ORDER BY issue_year;
