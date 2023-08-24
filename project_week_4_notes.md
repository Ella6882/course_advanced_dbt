## Task 1

- stg_bingeflix_events was changed to an incremental model.
- Added a look-back window of at least 3 days to ensure you account for late-arriving data to the incremental model.
- Created a custom macro to easily apply the WHERE clause inside of the is_incremental() macro logic.

## Task 2

The code shared below calculates the Top 10 costliest queries in the last 60 days (derived from https://select.dev/docs/dbt-snowflake-monitoring/example-usage#top-10-costliest-queries-in-the-last-30-days).

```
with
max_date as (
    select max(date(end_time)) as date
    from query_history_enriched
)
select
    md5(query_history_enriched.query_text_no_comments) as query_signature,
    any_value(query_history_enriched.query_text) as query_text,
    sum(query_history_enriched.query_cost) as total_cost_last_60d,
    total_cost_last_30d*12 as estimated_annual_cost,
    max_by(warehouse_name, start_time) as latest_warehouse_name,
    max_by(warehouse_size, start_time) as latest_warehouse_size,
    max_by(query_id, start_time) as latest_query_id,
    avg(execution_time_s) as avg_execution_time_s,
    count(*) as num_executions
from query_history_enriched
cross join max_date
where
    schema_name = 'DBT_EWHER12GMAILCOM'
    and query_history_enriched.start_time >= dateadd('day', -60, max_date.date)
    and query_history_enriched.start_time < max_date.date -- don't include partial day of data
group by 1
order by total_cost_last_60d desc
limit 10
```

These included:
- insert into dev.dbt_ewher12gmailcom.unit_test_dim_subscriptions (subscription_id,  user_id,  starts_at,  ends_at,  plan_name,  pricing,  billing_period) values
- insert into dev.dbt_ewher12gmailcom.dbt_project_evaluator_exceptions (fct_name, column_name, id_to_exclude, comment) values
- create or replace transient table dev.dbt_ewher12gmailcom.base_node_relationships
- create or replace transient table dev.dbt_ewher12gmailcom.stg_exposures
- insert into dev.dbt_ewher12gmailcom.unit_test_dim_dates
- insert into dev.dbt_ewher12gmailcom.stg_sources values
- create or replace transient table dev.dbt_ewher12gmailcom.stg_node_relationships
- create or replace transient table dev.dbt_ewher12gmailcom.int_all_graph_resources
- two queries run to extract data for information schema

Looks like dbt tests (unit tests as well as dbt_project_evaluator) are our top costly queries.

## Task 3 (Optional) Refactor mrr.sql to proactively avoid a modelneck

The Bingeflix project has a model called mrr.sql that provides a great opportunity to simplify.
Review the mrr.sql model, and consider where it could be simplified/broken down into some intermediate models.
Refactor the mrr.sql model to create the necessary intermediate models.
Hint: subscription_periods may be a good intermediate model!
Hint: If you need additional inspiration, this model is based on this MRR playbook from dbt.
https://github.com/dbt-labs/mrr-playbook/blob/master/models/mrr.sql
