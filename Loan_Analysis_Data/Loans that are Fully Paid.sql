-- Which loans have been fully paid off?
SELECT l.loan_id, l.loan_amount, l.issue_date, l.last_payment_date
FROM loans l
WHERE l.loan_status = 'Fully Paid'
ORDER BY l.last_payment_date DESC;
