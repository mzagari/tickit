SELECT
  sum(s.commission) as total_revenue
FROM {{ ref('stg_sales') }} s