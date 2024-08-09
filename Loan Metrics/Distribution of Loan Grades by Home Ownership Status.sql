--What is the distribution of loan grades across different home ownership statuses?
SELECT 
    l.home_ownership, 
    l.grade, 
    COUNT(l.loan_id) AS loan_count
FROM 
    loans l
GROUP BY 
    l.home_ownership, l.grade
ORDER BY 
    l.home_ownership, l.grade;
