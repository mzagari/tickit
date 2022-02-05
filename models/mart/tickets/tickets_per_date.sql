SELECT date2008.caldate, COUNT(DISTINCT buyerid) as unique_buyers
FROM tickit.sales
JOIN tickit.date2008
ON sales.dateid = date2008.dateid
GROUP BY date2008.caldate
ORDER BY date2008.caldate