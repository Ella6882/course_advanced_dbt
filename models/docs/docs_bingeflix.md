# Bingeflix Docs
This file contains docs blocks for Bingeflix sources

## Events
This section contains documentation from the Bingeflix Events table.

{% docs bingeflix_events %}
This table contains information about the behavioral events of users while they interact with the Bingeflix platform.
{% enddocs %}

{% docs bingeflix_event_created_at %}
When the event was logged in the Bingeflix application.
{% enddocs %}

{% docs bingeflix_event_id %}
 The unique identifier of the event in Bingeflix.
{% enddocs %}

{% docs bingeflix_event_name %}
The name of the event in Bingeflix.
{% enddocs %}

{% docs bingeflix_event_session_id %}
The unique identifier of the session in the Bingeflix application.
{% enddocs %}

## Subscriptions and Subscription Plans
This section contains documentation from the Bingeflix Subscription and Subscription Plans tables.

{% docs bingeflix_subscriptions %}
This table contains information about the Bingeflix's subscriptions.
{% enddocs %}

{% docs bingeflix_subscription_plans %}
This table contains information about various subscription plans available on Bingeflix.
{% enddocs %}

{% docs bingeflix_subscription_ends_at %}
When the subscription ends. This value is NULL if the subscription is active.
{% enddocs %}

{% docs bingeflix_subscription_id %}
The unique identifier for the subscription.
{% enddocs %}

{% docs bingeflix_subscription_payment_period %}
The recurring payment period for the subscription.
{% enddocs %}

{% docs bingeflix_subscription_plan_id %}
The unique identifier of the subscription plan.
{% enddocs %}

{% docs bingeflix_subscription_plan_name %}
The name of the subscription plan.
{% enddocs %}

{% docs bingeflix_subscription_pricing %}
The price of the subscription.
{% enddocs %}

{% docs bingeflix_subscription_starts_at %}
When the subscription started.
{% enddocs %}

## Users
This section contains documentation from the Bingeflix Users table.

{% docs bingeflix_users %}
This is table contains information about Bingeflix users.
{% enddocs %}

{% docs bingeflix_user_birthdate %}
The Bingeflix user's birthdate.
{% enddocs %}

{% docs bingeflix_user_country %}
Where the Bingeflix user resides.
{% enddocs %}

{% docs bingeflix_user_created_at %}
When date when the Bingeflix user was created.
{% enddocs %}

{% docs bingeflix_user_deleted_at %}
The date of when the Bingeflix user's account was deleted. The value is NULL if the account has not been deleted.
{% enddocs %}

{% docs bingeflix_user_email %}
The Bingeflix user's email address.
{% enddocs %}

{% docs bingeflix_user_id %}
The unique identifier of the Bingeflix user.
{% enddocs %}

{% docs bingeflix_user_name %}
The full name of the Bingeflix user (first and last).
{% enddocs %}

{% docs bingeflix_user_phone_number %}
The user's phone number.
{% enddocs %}

{% docs bingeflix_user_region %}
Where the Bingeflix user resides (i.e. the state or province).
{% enddocs %}

{% docs bingeflix_user_sex %}
The Bingeflix user's sex at birth.
{% enddocs %}

{% docs bingeflix_user_username %}
The Bingeflix username for login to Bingeflix.
{% enddocs %}