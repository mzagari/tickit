SELECT
    venueid,
    venuecity

FROM {{ source('tickit', 'venue') }}