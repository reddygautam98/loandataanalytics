--What are the average interest rates for 'Fully Paid' loans by purpose and verification status?
SELECT 
    l.purpose, 
    l.verification_status, 
    AVG(l.int_rate) AS avg_interest_rate
FROM 
    loans l
WHERE 
    l.loan_status = 'Fully Paid'
GROUP BY 
    l.purpose, l.verification_status
ORDER BY 
    avg_interest_rate DESC;
