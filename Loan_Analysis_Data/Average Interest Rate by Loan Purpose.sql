--What is the average interest rate for loans with different purposes?
SELECT l.purpose, AVG(l.int_rate) AS avg_int_rate
FROM loans l
GROUP BY l.purpose
ORDER BY avg_int_rate DESC;
