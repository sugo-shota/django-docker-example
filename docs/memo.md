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

- pipenv run [hogehoge]
    - 仮想環境でコマンドを実行

- pipenv shell
    - 仮想環境のshellを立ち上げる
    - たとえばdjangoをインストールしていた場合、scaffoldみたいなコマンドを打つのはここ
    - rails で言うところの `rails c` した状態のshellをイメージ？


# 参考になったサイト群

- pyenv
    - https://qiita.com/1000ch/items/93841f76ea52551b6a97

- pipenv
    - https://pipenv-ja.readthedocs.io/ja/translate-ja/
    - https://wonderwall.hatenablog.com/entry/2018/03/04/220000
    - https://qiita.com/subarunari/items/dcbdad68ba1809b721b9
    - https://qiita.com/nkt_dev/items/4feb760068de5c2ecbc6
    - https://qiita.com/nkt_dev/items/4feb760068de5c2ecbc6

- コンテナ
    - https://qiita.com/pottava/items/970d7b5cda565b995fe7

- もう少し真面目にやるとこの辺も必要
    - https://shotat.hateblo.jp/entry/2016/12/01/221631