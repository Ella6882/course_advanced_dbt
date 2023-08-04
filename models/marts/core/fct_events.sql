{{ config(materialized='table', tags=["weekly"])
}}

SELECT
    *
FROM {{ ref('stg_bingeflix_events') }}
