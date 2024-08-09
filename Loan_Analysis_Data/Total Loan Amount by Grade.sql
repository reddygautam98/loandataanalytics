--What is the total loan amount distributed across different loan grades?
SELECT l.grade, SUM(l.loan_amount) AS total_loan_amount
FROM loans l
GROUP BY l.grade
ORDER BY total_loan_amount DESC;


