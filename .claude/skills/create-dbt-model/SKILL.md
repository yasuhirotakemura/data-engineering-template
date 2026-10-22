---
name: create-dbt-model
description: Create dbt models following this repository's staging, intermediate and marts conventions.
---

# dbt model creation

First define input and output grain. Use source() for raw data, ref() for other dbt models. Add descriptions, quality tests and clear SQL. Avoid unnecessary layers and materialization.
