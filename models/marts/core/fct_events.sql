{{ config(materialized='table', tags=["weekly"])
}}

SELECT
    *
    , {{ rolling_aggregation_x_periods('event_id', 'user_id', 'created_at', 30, 'count') }}
FROM {{ ref('stg_bingeflix_events') }}
