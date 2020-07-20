# auto-mac-setup
PCを新しく買い替え、環境構築の自動化しようと思い作成しました。

## やっていること
1. Homebrewのインストール
2. Mac上で使用するアプリのインストール
3. Visual Studio Code拡張機能のインストール
4. Macの基本環境設定

## セットアップ方法
1. `git clone https://github.com/naokivandit/auto-mac-setup.git`
2. `sh auto-mac-setup/setup.sh`

## その他
- プログラミング言語のインストールに関しては、アプリケーション毎にdocker-compose.yamlを作成するようにするため最低限の言語のみインストールする。
