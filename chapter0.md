
# Ruby on Railsのインストール

参考→[https://tsuchikazu.net/mac_rail_setup/](ここを参考しました。)
何かHomebrewからイケば良いっぽいので、その通りに進める。

terminalで、`brew -v`してみると、動かない。


## Homebrewが動かなくなった。

エラーメッセージ。
```
$ brew -v
/System/Library/Frameworks/Ruby.framework/Versions/2.0/usr/lib/ruby/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require': cannot load such file -- mach (LoadError)
    from /System/Library/Frameworks/Ruby.framework/Versions/2.0/usr/lib/ruby/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
    from /usr/local/Library/Homebrew/extend/pathname.rb:2:in `<top (required)>'
    from /System/Library/Frameworks/Ruby.framework/Versions/2.0/usr/lib/ruby/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
    from /System/Library/Frameworks/Ruby.framework/Versions/2.0/usr/lib/ruby/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
    from /usr/local/Library/Homebrew/global.rb:3:in `<top (required)>'
    from /System/Library/Frameworks/Ruby.framework/Versions/2.0/usr/lib/ruby/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
    from /System/Library/Frameworks/Ruby.framework/Versions/2.0/usr/lib/ruby/2.0.0/rubygems/core_ext/kernel_require.rb:55:in `require'
    from /usr/local/Library/brew.rb:15:in `<main>'
```

というわけで、なんか`'require': cannot load such file -- mach`で検索。
なんかMacのOSを`El Capitan`にアップグレードしたら出るっぽい。

[http://qiita.com/takezoux2@github/items/aa2a5f0bef19cd0d8508](ここを参考に修正。)

これに従ったらとりあえず、`brew update`は成功した。

## rbenvのインストール

rubyのバージョン管理ツールのrbenvのインストール。

```
$ brew install rbenv ruby-build
$ echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
$ source ~/.bash_profile
```

[http://qiita.com/skinoshita/items/2cf0c27a6ff4f0602568#2-4](使い方はコッチ)

## rubyのインストール。

参考してるページ的には2.0.0なんだけど、今回は別の参考書で学ぶので、2.2.1をインストールする。

`rbenv install -l`で何のバージョンがインストール出来るか聞きます。

```
  2.2.0-rc1
  2.2.0
  2.2.1
  2.2.2
  2.2.3
  2.2.4
```

2.2.1が確認出来たので、`rbenv install 2.2.1`を実行。

```
$ rbenv install 2.2.1
Downloading ruby-2.2.1.tar.bz2...
-> https://cache.ruby-lang.org/pub/ruby/2.2/ruby-2.2.1.tar.bz2
Installing ruby-2.2.1...
Installed ruby-2.2.1 to /Users/saturn3486/.rbenv/versions/2.2.1

$ rbenv versions
* system (set by /Users/saturn3486/.rbenv/version)
  2.2.1

```

```
$ rbenv local 2.2.1
$ ruby -v
ruby 2.2.1p85 (2015-02-26 revision 49769) [x86_64-darwin15]
```

## rails のインストール

```
$ sudo gem install rails --version "4.2.1" --no-rdoc --no-ri
```

OKOK.
workspaceに移動して。

```
$ rails -v
Rails is not currently installed on this system. To get the latest version, simply type:

    $ sudo gem install rails

You can then rerun your "rails" command.

```

？？？
あれ？さっき入れたよな。。。

あ！

```
$ rbenv global 2.2.1
$ rails -v
Rails 4.2.1

```

OKOK.
localに設定すると、その場所だけになるのね。

これでサンプルコードも動くはず。

## railsアプリケーションを作ろう！

`rails new sample --skip-bundle`を実行。
`--skip-bundle` はbundle installせずに作っちゃう奴。
でもこれだと、`rails server`を実行した時にエラーが出るっぽい。

とりあえず、サンプルページが表示されたらOKです。


## ここでchapter0は終了！

次は実際にrailsのサイトを作っていきましょう。


### 参考サイト

- [http://qiita.com/htk_jp/items/1100a04f45151c928378](http://qiita.com/htk_jp/items/1100a04f45151c928378)
- [http://dqn.sakusakutto.jp/2014/02/rbenv_rehash_what_it_does.html](http://dqn.sakusakutto.jp/2014/02/rbenv_rehash_what_it_does.html)
- [https://tsuchikazu.net/mac_rail_setup/](https://tsuchikazu.net/mac_rail_setup/)
- [http://railsdoc.com/rails](http://railsdoc.com/rails)
- [http://carefree-se.hatenablog.com/entry/2015/07/22/125904](http://carefree-se.hatenablog.com/entry/2015/07/22/125904)
