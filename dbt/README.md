# dbt

- Rawデータは通常dbtの外部にあり、実案件ではsource()を使用します。
- モデルの構造はstaging / intermediate / martsです。
- サンプルはDuckDBとSeedだけで確認できます。

```bash
cp dbt/profiles.yml.example dbt/profiles.yml
cd dbt
poetry run dbt build --profiles-dir .
```

接続情報を含むprofiles.ymlはコミットしないでください。BigQuery・Snowflake案件はアダプターとprofileを切り替えてください。
