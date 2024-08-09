--What are the counts of loans by purpose and grade?

SELECT l.purpose, l.grade, COUNT(l.loan_id) AS loan_count
FROM loans l
GROUP BY l.purpose, l.grade
ORDER BY loan_count DESC;
