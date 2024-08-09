--Which loans have the highest installment payments?
SELECT l.loan_id, l.installment, l.loan_amount, l.int_rate
FROM loans l
ORDER BY l.installment DESC
LIMIT 5;
