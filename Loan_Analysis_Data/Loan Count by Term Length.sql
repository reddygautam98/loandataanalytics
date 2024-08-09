--How many loans have been issued for different term lengths (e.g., 36 months vs. 60 months)?
SELECT l.term, COUNT(l.loan_id) AS loan_count
FROM loans l
GROUP BY l.term
ORDER BY loan_count DESC;
