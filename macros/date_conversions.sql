-- Returns the current timestamp in the UTC time zone
{% macro now_utc() %}
    CURRENT_TIMESTAMP()
{% endmacro %}

{% macro now_utc_date() %}
    CURRENT_DATE()
{% endmacro %}

-- Returns the current timestamp in the America/Toronto time zone
{% macro now_eastern() %}
    CONVERT_TIMEZONE('America/New_York', CURRENT_TIMESTAMP())
{% endmacro %}

{% macro truncate_to_date(column_name, date_aggregation='month') %}
   {% if column_name %}
        DATE(DATE_TRUNC({{ date_aggregation }}, {{ column_name }}))
    {% else %}
        DATE(DATE_TRUNC({{ date_aggregation }}, CURRENT_DATE()))
    {% endif %}
{% endmacro %}
