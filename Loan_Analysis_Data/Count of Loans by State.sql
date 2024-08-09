--How many loans have been issued in each state?
SELECT s.state_code, COUNT(l.loan_id) AS loan_count
FROM loans l
JOIN states s ON l.state_code = s.state_code
GROUP BY s.state_code
ORDER BY loan_count DESC;
