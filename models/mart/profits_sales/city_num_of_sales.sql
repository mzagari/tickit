SELECT
  v.venuecity,
  COUNT(*) AS num_sales
FROM {{ ref('stg_sales') }} s
JOIN {{ ref('stg_event') }} e
  ON e.eventid = s.eventid
JOIN {{ ref('stg_venue') }} v
  ON v.venueid = e.venueid
GROUP BY v.venuecity
ORDER BY num_sales DESC