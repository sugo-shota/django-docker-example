djangoをコンテナで使える環境を作る為のサンプル。

- mac
    - python
    - pyenv
    - pipenv
- docker for mac

# pyenvのインストール

```
$ brew install pyenv
```

## パスを通す

```
$ echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
$ echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
$ echo 'eval "$(pyenv init -)"' >> ~/.bash_profile

$ source ~/.bash_profile
```

### 利用可能なpythonを調べる

```
$ pyenv install --list
```

## python3.7のインストール

```
$ pyenv install 3.7.0
```

### バージョンの確認

この時点ではmacのデフォ = 2.7とか

```
$ pyenv version
```

```
$ python --version
```

### 現在インストールされているバージョン一覧の確認

```
$ pyenv versions
```

## グローバルバージョンの変更

```
$ pyenv global 3.7.0
```

### バージョンの確認

3.7.0に変更されている事を確認

```
$ pyenv version
```

```
$ python --version
```

# pipenvのインストール

```
$ brew install pipenv
```

# pipenvによる仮想環境の構築

```
$ pipenv install --python 3.7.0
```

# 仮想環境へパッケージのインストール

```
$ pipenv install [package name]
```

# 仮想環境のshellを起動

```
$ pipenv shell
```

# djangoの初期化

```
(なんか仮想環境名みたいなの書いてる) $ django-admin startproject app .
```

## 仮想環境のshellから抜ける

```
(なんか仮想環境名みたいなの書いてる) $ exit
```

# コンテナの立ち上げ

## 初回（というか、まだコンテナが存在しないとき）

```
$ docker-compose up --build
```

## 2回目以降

```
$ docker-compose up
```

## 起動やリクエスト/レスポンスのログを黒い画面で見たくない時

```
$ docker-compose up -d
```

## 停止

```
$ docker-compose down
```

## コンテナ内でなにかしらコマンドを実行するとき

```
$ docker-compose run --no-deps --rm 
```

# ブラウザからアクセスする

http://localhost:3000/