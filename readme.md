# SourceTreeCustomActions
Sourcetree のカスタムアクションで使用するシェルスクリプト

## 使用方法
1. Git Pull
2. chmodで実行権限を付与
```
chmod +x [実行用スクリプトのファイル名]
```

## export_diff.shファイルに関して
### 概要
コミットログの差から差分（物理ファイル）を抽出。  
抽出した差分は、archiveディレクトリに格納される。

### スクリプト解説

## export_diff_list.shファイルに関して
コミットログの差から差分（ファイル名）を抽出。  
抽出した差分は、`diff_list.txt`に格納される。

## remove_marged_local_branch.shファイルに関して
### 概要
masterブランチにマージ済みのローカルブランチの削除

### スクリプト解説
- `#!/bin/sh` : Shebang。 書かないと動かない
- `git branch --merged master` : masterブランチにマージされているものの一覧を取得。この時masterブランチ自身も含まれる点に注意。
- `grep -vE '^\*|master$'` : 現在のブランチ（* で表示されるもの）とmasterで終わるブランチ 以外 を表示
- `xargs -I % git branch -d %` : xargsコマンドでgrepの結果を利用して、ローカルのブランチを削除