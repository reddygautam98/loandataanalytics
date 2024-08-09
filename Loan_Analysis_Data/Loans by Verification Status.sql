--What is the distribution of loans by verification status?


SELECT l.verification_status, COUNT(l.loan_id) AS loan_count
FROM loans l
GROUP BY l.verification_status
ORDER BY loan_count DESC;
