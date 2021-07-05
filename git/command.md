## stashしたファイルの差分をみたい場合

```bash
git diff stash@{0}
```

## mergeしたけど、コンフリクトなどがあって、マージ前に戻したい

```bash

# 基本
git merge --abort

# コンフリクトを解消しようとして、編集したが戻したい
git merge --abort HEAD
```
