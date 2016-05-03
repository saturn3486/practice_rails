### 補足

#### gemコマンド

Rubyでライブラリを扱う際のパッケージ管理システムであるRubyGemsを扱うためのコマンド。
このようなRubyGemsで扱うライブラリをgemパッケージと呼ぶ。
このgemコマンドを使うことで、gemパッケージのインストールや検索などが行える。

#### rakeコマンド

rakeコマンドはRakeと呼ばれるビルドツールを実行するためのコマンドです。
ビルドツールと紹介しましたが、実際の所、その他の定形処理を実行するためのコマンドとして、利用される事も良くある。
Rakeで実行する処理の単位をタスクと呼ぶ。

Railsでは、プロジェクトの雛形を作製すると、プロジェクト内で使用するための多くのRakeタスクが用意されます。

```ruby
desc 'Hello, Rake Task'
task :hello do
    puts 'Hello, Rake!'
end
```

上の内容をRakefileとして保存し、`rake -T`を実行。
ファイル名が異なる場合は、`-f`オプションで指定。

```
$ rake -T
rake hello  # Hello, Rake Task
$ rake hello
Hello, Rake!
```

helloっていうタスクが使用出来ることが出力されていて、
desc以降の内容が概要として同時に出力される。

#### Bundlerでgemパッケージを束ねる。

Bundlerはgemパッケージの仕組みを進化させ、「開発しているプロジェクト内でどのgemパッケージを使っているのか」、そして
「どのバージョンを使用しているのか」ということを明示する仕組むを提供する。

Bundlerで使用するパッケージをまとめるには、Gemfileにgemパッケージ名を記載していきます。

基本的にgemコマンドでinstallするのはBundlerパッケージのみで、その他のgemパッケージはBundler経由でinstallするのが良いでしょう。

このBundler自体はgemパッケージとして提供されているので、gemコマンドでinstallを行います。

良く使われるBundlerコマンド  

|コマンド名      |内容     |
|:-----        |:-----  |
|bundle install|Gemfileに記載されたgemパッケージをインストールする|
|bundle update|インストール済みのgemパッケージを更新する|
|bundle list|インストール済みのgemパッケージの一覧を表示する|
|bundle init|Gemfileを生成する|
|bundle exec|コマンド名Bundlerでインストールされているgemパッケージを使用してコマンドを実行する|

## Railsの思想
-------

#### CoC(Convention over Configuration)

設定より規約。

- データベースのテーブル名はモデル名の複数形にする。（モデル名がEmployeeの場合、テーブル名はemployeesとなる。）
- /emplueesというURLは社員の一覧を表す
- 社員ID:1の社員情報を表すURL/employees/1である

#### DRY(Don't Repeat Yourself)



#### REST(Representational State Transfer)


#### 自動テスト

