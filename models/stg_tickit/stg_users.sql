SELECT
    userid

FROM {{ source('tickit', 'users') }}