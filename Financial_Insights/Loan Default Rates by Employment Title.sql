--What are the loan default rates associated with different employment titles?
SELECT 
    e.emp_title, 
    COUNT(l.loan_id) FILTER (WHERE l.loan_status = 'Charged Off')::FLOAT / COUNT(l.loan_id) AS default_rate
FROM 
    loans l
JOIN 
    members m ON l.member_id = m.member_id
JOIN 
    employment e ON m.emp_id = e.emp_id
GROUP BY 
    e.emp_title
ORDER BY 
    default_rate DESC;
