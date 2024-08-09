--Which states have the highest number of high-risk loans (grades D and below)?
SELECT 
    s.state_code, 
    COUNT(l.loan_id) AS high_risk_loans
FROM 
    loans l
JOIN 
    members m ON l.member_id = m.member_id
JOIN 
    states s ON m.state_id = s.state_id
WHERE 
    l.grade IN ('D', 'E', 'F', 'G')
GROUP BY 
    s.state_code
ORDER BY 
    high_risk_loans DESC;
