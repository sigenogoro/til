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

# タグ一覧を表示

```
git tag
```

# タグ名からブランチを作成したい場合

```
git branch 新規ブランチ名 タグ名
```



