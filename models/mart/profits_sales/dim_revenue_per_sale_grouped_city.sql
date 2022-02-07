SELECT
  r.venuecity,
  sum(r.revenue) / sum(s.num_sales) as revpersale
FROM {{ ref('fct_revenue_grouped_city') }} r
JOIN {{ ref('fct_num_sales_grouped_city') }} s
ON s.venuecity = r.venuecity
GROUP BY r.venuecity
ORDER BY revpersale DESC