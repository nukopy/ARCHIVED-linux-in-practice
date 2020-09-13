# 「試して理解 Linux のしくみ」実験用リポジトリ

## 各種リンク

- 書籍サイト
  - [試して理解 Linux のしくみ - 実験と図解で学ぶ OS とハードウェアの基礎知識](http://gihyo.jp/book/2018/978-4-7741-9607-7)（技術評論者，2018）
- リポジトリ
  - [satoru-takeuchi/linux-in-practice](https://github.com/satoru-takeuchi/linux-in-practice)

## 実行環境

Vagrant で構築した Ubuntu の仮想環境上でサンプルコードを実行した．

- ホスト OS：macOS Mojave 10.15.3
- ゲスト OS：Ubuntu 18.04.4 LTS (GNU/Linux 4.15.0-76-generic x86_64)
- Vagrant 2.2.7
- VirtualBox v6.1.2

書籍の「はじめに」では，**挙動が変わるために仮想マシン（VM）上ではなく実機上で Ubuntu を動作させることを推奨している**が，Ubuntu 用の実機がないので VM で妥協した．また，検証環境としては，Docker コンテナよりは VM が良いと判断した．

## Vagrant で環境構築

- VM の起動
  - `vagrant up` したディレクトリが VM の `/vagrant` 配下にマウントされる．

```sh
$ git clone [repo-url]
$ cd [my-repo]
$ vagrant init bento/ubuntu-18.04
$ vagrant plugin install vagrant-disksize  # ディスク容量を設定するためのプラグイン
$ vagrant up
# ログの最後らへんにマウントに関するログが出力されている
# ==> default: Mounting shared folders...
#    default: /vagrant => /Users/pyteyon/Projects/basics/OS/Linux/Linux-no-sikumi
```

- VM 環境に入り，マウントの確認

```sh
# ローカル環境
$ vagrant status  # VM が起動中であることを認確
$ vagrant ssh

# VM 環境
vagrant@vagrant:~$ cd /vagrant
vagrant@vagrant:/vagrant$ ls
install.sh  Makefile  note  README.md  sample-code  src  Vagrantfile
# マウントされてる
```

- VM 環境に入り，実験に必要なパッケージのインストール
  - インストールスクリプトをあらかじめ書いておいた．

```sh
# ローカル環境
$ vagrant ssh

# VM 環境
vagrant@vagrant:~$ cd /vagrant
vagrant@vagrant:~$ sh install.sh
```

- VM の停止

```sh
$ vagrant halt
```
