--Which are the top 5 states with the highest average loan amount for 'Fully Paid' loans?
SELECT 
    s.state_code,
    AVG(l.loan_amount) AS avg_loan_amount
FROM 
    loans l
JOIN 
    states s ON l.state_code = s.state_code
WHERE 
    l.loan_status = 'Fully Paid'
GROUP BY 
    s.state_code
ORDER BY 
    avg_loan_amount DESC
LIMIT 5;

