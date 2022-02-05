SELECT
    listid

FROM {{ source('tickit', 'listings') }}