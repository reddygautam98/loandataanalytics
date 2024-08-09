--How do loan repayment trends vary by employment length and loan status?
SELECT 
    e.emp_length, 
    l.loan_status, 
    COUNT(l.loan_id) AS num_loans, 
    AVG(l.total_payment) AS avg_total_payment
FROM 
    loans l
JOIN 
    members m ON l.member_id = m.member_id
JOIN 
    employment e ON m.emp_id = e.emp_id
GROUP BY 
    e.emp_length, l.loan_status
ORDER BY 
    e.emp_length, l.loan_status;
