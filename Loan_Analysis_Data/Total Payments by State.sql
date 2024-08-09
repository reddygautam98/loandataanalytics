--What is the total payment made by borrowers in each state?
SELECT s.state_code, SUM(ld.total_payment) AS total_payment
FROM loans l
JOIN states s ON l.state_code = s.state_code
JOIN loan_details ld ON l.loan_id = ld.loan_id
GROUP BY s.state_code
ORDER BY total_payment DESC;
