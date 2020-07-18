# auto-mac-setup
PCを新しく買い替え、環境構築の自動化しようと思い作成しました。

## やっていること
1. Homebrewのインストール
2. Mac上で使用するアプリのインストール
3. Visual Studio Code拡張機能のインストール

## セットアップ方法
1. `git clone https://github.com/naokivandit/auto-mac-setup.git`
2. `sh auto-mac-setup/setup.sh`

## その他
- プログラミング言語のインストールに関しては、アプリケーション毎にdocker-compose.yamlを作成するようにするためインストールしない。

- トラックパッドのカーソルスピード変更などMacの基本設定の環境構築ができていないので今後、自動化していく。