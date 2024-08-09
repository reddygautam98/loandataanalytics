--Which states have the highest average loan amounts, and what are the top 3 states?
SELECT s.state_code, AVG(l.loan_amount) AS avg_loan_amount
FROM loans l
JOIN states s ON l.state_code = s.state_code
GROUP BY s.state_code
ORDER BY avg_loan_amount DESC
LIMIT 3;
