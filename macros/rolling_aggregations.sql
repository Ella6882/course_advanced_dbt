{% macro rolling_average_7_periods(column_name, partition_by, order_by) %}
    avg( {{ column_name }} ) OVER (
                PARTITION BY {{ partition_by }}
                ORDER BY {{ order_by }}
                ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
            ) AS avg_7_periods_{{ column_name }}
{% endmacro %}

{% macro rolling_aggregation_x_periods(column_name, partition_by, order_by, time_period=7, aggregation_type='avg') %}
    {{ aggregation_type }}( {{ column_name }} ) OVER (
                PARTITION BY {{ partition_by }}
                ORDER BY {{ order_by }}
                ROWS BETWEEN {{ time_period }} PRECEDING AND CURRENT ROW
            ) AS {{ aggregation_type }}_{{ time_period }}_periods_{{ column_name }}
{% endmacro %}
