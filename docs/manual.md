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