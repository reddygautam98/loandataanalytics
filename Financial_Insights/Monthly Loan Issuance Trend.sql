--What is the trend of loan issuance amounts over time, grouped by month and year?
SELECT 
    DATE_TRUNC('month', TO_DATE(l.issue_date, 'DD-MM-YYYY')) AS month,
    SUM(l.loan_amount) AS total_loan_amount
FROM 
    loans l
GROUP BY 
    month
ORDER BY 
    month;
