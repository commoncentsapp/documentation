# Introduction

Get your API Keys

{% hint style="info" %}
Something cool here.&#x20;
{% endhint %}





## System Organization

The use\_cases directory organizes services. These are grouped for types of uses cases, 00 is for updating the database, other groups will be for other kinds of services. The second number provides a rough priority for what needs to be implemented, so it's easier to organize work without adding a lot of project management.

The ddl directory provides the data definition language changes, the tables and indexes we need to store state information. We don't have a migration service yet, so we use the XX.YY grouping and prioritizing convention so we can run the migrations in the right order.

The DDL was generated in a Rails application to quickly generate up to date, consistent DDL. This means we have strange keys, sometimes, and some of the constraints are redundant, but it creates a consistent set of definitions.
