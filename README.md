# Data Engineering Template

データエンジニアリング案件の立ち上げに使う汎用テンプレートです。

## 技術
Docker / Dev Containers / Python 3.12 / Poetry / dbt Core / DuckDB（ローカルテスト）/ Claude Code / Ruff / pytest / SQLFluff / GitHub Actions。

## はじめに
1. DockerとVS CodeのDev Containers拡張を用意する。
2. VS Codeで **Reopen in Container** を実行する。
3. Poetryの依存解決を待ち、次を実行する。

```bash
poetry run python python/app.py
poetry run ruff check python tests
poetry run pytest
cp dbt/profiles.yml.example dbt/profiles.yml
cd dbt && poetry run dbt build --profiles-dir .
```

## ディレクトリ
- `.devcontainer/`: Docker・開発環境
- `.vscode/`: VS Code拡張12種類
- `.claude/`, `CLAUDE.md`: Claude Code用ルール・Skills
- `python/app.py`: 必要最小限のPythonスクリプト
- `dbt/`: staging / intermediate / marts の3層・DuckDB Seedサンプル
- `sql/`: dbt以外のSQL（案件ごとに拡張）
- `integrations/`: 外部サービス連携（案件ごとに拡張）
- `templates/excel/`: Excel設計書・テスト仕様書12種類
- `docs/`, `scripts/`, `sample_data/`: 補助資料・スクリプト・データ

## 方針
Poetryは非パッケージモードです。Rawは原則dbt外にあり、実案件ではsource()で参照します。初期dbtサンプルはSeedを利用します。認証情報、秘密鍵、顧客データをコミットしないでください。

`poetry.lock` は依存解決後に生成・コミットしてください。空のロックファイルは置いていません。GitHub Settingsで「Template repository」を有効にすると新規案件のテンプレートとして利用できます。
