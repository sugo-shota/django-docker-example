- pipenv install [package names]
    - 仮想環境にパッケージ等をインストールするコマンド
    - 裏側では `pip` コマンドが叩かれてる感じ
    - `--system` をつけると仮想環境ではなくシステム（今回の場合mac）のpipが実行される
        - たとえばコンテナ内で実行する場合なんかは仮想環境を作る必要はないので、このオプションを指定するとよい
    - `--dev` をつけるとdev環境のみで使うパッケージをインストール可能
        - pythonであるかはわからないけど、例えばlinterなんかはこのオプションを指定するようなイメージ
    - `--ignore-pipfile` はPipfileを無視してPipfile.lockを使ってインストールする
    - `--skip-lock`はPipfile.lockを無視してPipfileを使ってインストールする。そしてPipfileの変更部分をPipfile.lockに反映しない

- python test.py
    - mac自体にはパッケージがインストールされていないのでエラーになる
- pipenv run python test.py
    - 仮想環境（virtualenv）ではパッケージがインストールされているため、処理が行われる

- pipenv shell
    - rails で言うところの `rails c` した状態のshellをイメージ



