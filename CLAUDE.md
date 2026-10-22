# Claude Code project rules

- 必要最小限から始める。過度な抽象化を避ける。
- Pythonはpython/app.pyのmain()を起点とする。
- Python依存関係はPoetryで管理する。
- dbtのモデルはstaging/intermediate/martsに分ける。
- Rawは原則source()、dbt内部はref()で参照する。
- SQLの粒度・JOINの多重度・重複排除・NULL・パフォーマンスを確認する。
- 認証情報・秘密鍵・実データをコミットしない。
- 変更時はpytest、Ruff、dbt buildで検証する。
