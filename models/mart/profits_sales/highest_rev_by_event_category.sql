--sales.commission to (((sales.eventid to event.eventid))) to (((event.catid to category.catid))) to category.catname
SELECT 
  c.catname,
  sum(s.commission) as revenue
FROM {{ ref('stg_sales') }} s
JOIN {{ ref('stg_event') }} e
  ON e.eventid = s.eventid
JOIN {{ ref('stg_category') }} c
  ON c.catid = e.catid
GROUP BY c.catname
ORDER BY revenue DESC