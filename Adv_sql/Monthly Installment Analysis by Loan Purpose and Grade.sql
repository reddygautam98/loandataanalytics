-- What is the average monthly installment for different loan purposes and grades?
SELECT l.purpose, l.grade, AVG(l.installment) AS avg_installment, COUNT(l.loan_id) AS loan_count
FROM loans l
GROUP BY l.purpose, l.grade
ORDER BY avg_installment DESC, loan_count DESC;
