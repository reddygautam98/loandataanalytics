--What are the average loan amounts and total payments for different loan purposes, and how do they compare for fully paid and defaulted loans?
SELECT l.purpose, l.loan_status, AVG(l.loan_amount) AS avg_loan_amount, SUM(ld.total_payment) AS total_payment
FROM loans l
JOIN loan_details ld ON l.loan_id = ld.loan_id
GROUP BY l.purpose, l.loan_status
ORDER BY total_payment DESC, avg_loan_amount DESC;
