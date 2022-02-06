SELECT
    catid, 
    catname

FROM {{ source('tickit', 'category') }}