--How does loan performance vary across different sub-grades in terms of the number of loans, average interest rates, and total payments?
SELECT 
    l.sub_grade, 
    COUNT(l.loan_id) AS num_loans, 
    AVG(l.int_rate) AS avg_interest_rate, 
    SUM(l.total_payment) AS total_payments
FROM 
    loans l
GROUP BY 
    l.sub_grade
ORDER BY 
    l.sub_grade;
