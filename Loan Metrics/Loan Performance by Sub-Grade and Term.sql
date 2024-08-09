--Evaluate the loan performance (e.g., fully paid, charged off) by sub-grade and term.
SELECT 
    l.sub_grade, 
    l.term, 
    l.loan_status, 
    COUNT(*) AS status_count
FROM 
    loans l
GROUP BY 
    l.sub_grade, l.term, l.loan_status
ORDER BY 
    l.sub_grade, l.term, status_count DESC;
