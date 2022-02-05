SELECT
    buyerid,
    dateid

FROM {{ source('tickit', 'date2008') }}