SELECT
  eventid
FROM {{ ref('stg_sales') }}