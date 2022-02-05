SELECT
  eventid,
  venueid,
  catid

FROM {{ source('tickit', 'event') }}