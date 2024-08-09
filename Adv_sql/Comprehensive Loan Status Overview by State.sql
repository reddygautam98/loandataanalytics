--What is the detailed report of loan statuses for each state?
SELECT s.state_code, l.loan_status, COUNT(l.loan_id) AS loan_count, SUM(l.loan_amount) AS total_loan_amount, AVG(l.int_rate) AS avg_int_rate
FROM loans l
JOIN states s ON l.state_code = s.state_code
GROUP BY s.state_code, l.loan_status
ORDER BY s.state_code, loan_count DESC;
