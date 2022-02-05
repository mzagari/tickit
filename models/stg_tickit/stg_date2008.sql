SELECT
    caldate,
    dateid

FROM {{ source('tickit', 'date2008') }}