{% macro look_back_window(unique_key, lookback_window = 3, interval = 'day') -%}
    WHERE {{ unique_key }} > (SELECT DATEADD({{ interval}}, -{{ lookback_window }}, MAX({{ unique_key }})) FROM {{ this }})
{%- endmacro %}
