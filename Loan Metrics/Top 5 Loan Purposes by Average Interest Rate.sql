--Identify the top 5 loan purposes with the highest average interest rates.
SELECT 
    l.purpose, 
    AVG(ld.int_rate) AS avg_int_rate
FROM 
    loans l
JOIN 
    loan_details ld ON l.loan_id = ld.loan_id
GROUP BY 
    l.purpose
ORDER BY 
    avg_int_rate DESC
LIMIT 5;
