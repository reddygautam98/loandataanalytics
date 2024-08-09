--What is the total amount of payments made by borrowers in each state?
SELECT s.state_code, SUM(ld.total_payment) AS total_payment
FROM loans l
JOIN loan_details ld ON l.loan_id = ld.loan_id
JOIN states s ON l.state_code = s.state_code
GROUP BY s.state_code
ORDER BY total_payment DESC;
