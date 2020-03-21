# 「試して理解 Linux のしくみ」の動作確認用リポジトリ

## 各種リンク

- 書籍サイト：[試して理解 Linux のしくみ - 実験と図解で学ぶ OS とハードウェアの基礎知識](http://gihyo.jp/book/2018/978-4-7741-9607-7)（技術評論者，2018）
- [サンプルコードのリポジトリ](https://github.com/satoru-takeuchi/linux-in-practice)

## 実行環境

Vagrant で構築した Ubuntu の仮想環境上でサンプルコードを実行した．

- ホスト OS：macOS Mojave 10.15.3
- ゲスト OS：Ubuntu 18.04.4 LTS (GNU/Linux 4.15.0-76-generic x86_64)
- Vagrant 2.2.7
- VirtualBox v6.1.2

書籍の「はじめに」では，**仮想マシン（VM）上ではなく実機上で Ubuntu を動作させることを推奨している**が，Ubuntu 用の実機がないので VM で妥協した．また，検証環境としては，Docker コンテナよりは VM が良いと判断した．

## Vagrant での動作確認

- VM の起動

```sh
$ git clone [repo-url]
$ cd my-repo
$ vagrant init bento/ubuntu-18.04
$ vagrant up
```

- VM 環境に入る

```sh
$ vagrant status  # VM が起動中であることを確認
$ vagrant ssh

# 以下 VM 環境
# サンプルコードの動作に必要なパッケージのインストール
vagrant@vagrant:~$ cd /vagrant
vagrant@vagrant:~$ sh install.sh
```

- VM の停止

```sh
$ vagrant halt
```
