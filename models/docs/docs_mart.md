# Bingeflix Mart Docs
This file contains docs blocks for Bingeflix mart-level event tables.

## Dates
This section contains documentation for dates.

{% docs date_month %}
The calendar month.
{% enddocs %}

## Events per Session Id
This section contains documentation for Bingeflix events tracked per session id.

{% docs bingeflix_session_user_logged_in_count %}
The number of times the user logged in during the specified session.
{% enddocs %}

{% docs bingeflix_session_user_logged_out_count %}
The number of times the user logged out during the specified session.
{% enddocs %}

{% docs bingeflix_session_video_watched_count %}
The number of times the user watched videos during the specified session. 
{% enddocs %}

## MRR
This section contains documentation for Bingeflix MRR.

{% docs bingeflix_mrr_amount %}
The amount of monthly recurring revenue generated from the subscription in a given month.
{% enddocs %}

{% docs bingeflix_mrr_change %}
The change in monthly recurring revenue from the associated subscription versus last month.
{% enddocs %}

{% docs bingeflix_mrr_change_category %}
The category the subscription falls into based on the current month (e.g. new, churned, retained, reactivated)
{% enddocs %}

{% docs bingeflix_mrr_month_retained_number %}
The number of months the subscription has been retained since it was started (first month = 0).
{% enddocs %}

{% docs bingeflix_previous_month_mrr_amount %}
The amount of monthly recurring revenue associated with the subscription earned in the previous month.
{% enddocs %}

{% docs bingeflix_retained_mrr_amount %}
The amount of monthly recurring revenue associated with the subscription retained from the previous month.
{% enddocs %}

{% docs bingeflix_mrr_surrogate_key %}
Surrogate key of date_month,  subscription_id and change_category for mrr model.
{% enddocs %}

## Subscriptions
This section contains documentation for Bingeflix dim_subscriptions.

{% docs bingeflix_subscription_billing_period %}
The cadence of the billing period for the subscription plan (e.g., monthly, annually).
{% enddocs %}

## Users
This section contains documentation for Bingeflix dim_users.

{% docs bingeflix_user_age_at_acquisition %}
The Bingeflix user's age at acquisition. 
{% enddocs %}

{% docs bingeflix_user_current_age %}
The Bingeflix user's current age. Derived from Bingeflix user's birthdate.
{% enddocs %}

