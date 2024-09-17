# ローカルでの起動方法

1. 以下コマンドでコンテナを立ち上げます
   * docs配下を`jekyll serve` します
    ```shell
    docker compose up
    ```
2. ブラウザで以下にアクセスします
    * http://localhost:4000


## できること
* 既存ファイルの内容変更に伴うauto reload

## できないこと

* 新規Markdownファイルの作成に伴うルーティングのauto reload
  * 新規Markdownファイルへのリンクを作成し、遷移してもnot foundになってしまう
    * リンクが、新規MarkdownファイルをHTMLにconvertした結果のリンクになっていないため
  * 解決策
    * コンテナの立ち上げ直し