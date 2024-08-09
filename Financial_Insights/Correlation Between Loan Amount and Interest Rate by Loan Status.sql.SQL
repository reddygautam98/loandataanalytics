--What is the correlation between loan amount and interest rate for 'Fully Paid' and 'Charged Off' loans?
WITH correlation_data AS (
    SELECT 
        l.loan_amount,
        l.int_rate,
        l.loan_status
    FROM 
        loans l
    WHERE 
        l.loan_status IN ('Fully Paid', 'Charged Off')
)
SELECT 
    loan_status,
    CORR(loan_amount, int_rate) AS correlation
FROM 
    correlation_data
GROUP BY 
    loan_status;
