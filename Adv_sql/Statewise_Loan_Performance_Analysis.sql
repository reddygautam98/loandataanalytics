--Analyze the loan performance across different states.
SELECT s.state_code, 
       SUM(l.loan_amount) AS total_loan_amount,
       AVG(l.int_rate) AS avg_interest_rate
FROM loans l
JOIN states s ON l.state_code = s.state_code
WHERE l.loan_status IN ('Fully Paid', 'Current')
GROUP BY s.state_code
ORDER BY total_loan_amount DESC;
