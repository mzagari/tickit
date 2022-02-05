SELECT
    eventid, buyerid, dateid, saletime, commission

FROM {{ source('tickit', 'sales') }}