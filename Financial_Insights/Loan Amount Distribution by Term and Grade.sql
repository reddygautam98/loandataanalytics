--How does loan amount distribution vary by loan term and grade for 'Fully Paid' loans?
SELECT 
    l.term,
    l.grade,
    COUNT(*) AS loan_count,
    SUM(l.loan_amount) AS total_loan_amount
FROM 
    loans l
WHERE 
    l.loan_status = 'Fully Paid'
GROUP BY 
    l.term, l.grade
ORDER BY 
    l.term, l.grade;
