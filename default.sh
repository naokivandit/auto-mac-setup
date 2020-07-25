#!/bin/bash

if [ "$(uname)" != "Darwin" ] ; then
  echo 'Not macOS!'
  exit 1
fi

echo 'Setup MacOS'

# BluetoothAudioAgent
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40 # Bluetooth ヘッドフォン・ヘッドセットの音質を向上させる

# CrashReporter
defaults write com.apple.CrashReporter DialogType -string "none" # クラッシュレポートを無効化する

# dashboard
defaults write com.apple.dashboard mcx-disabled -bool true # Dashboard を無効化する

# desktopservices
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true # USB やネットワークストレージに .DS_Store ファイルを作成しない
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Dock
defaults write com.apple.dock autohide -bool false # Dock:自動的に隠さない
defaults write com.apple.dock autohide-delay -float 0 # Dock が表示されるまでの待ち時間を無効にする
defaults write com.apple.dock mcx-expose-disabled -bool false # Mission Control を使用可にする

# Finder
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true # Finder のタイトルバーにフルパスを表示する
defaults write com.apple.finder _FXSortFoldersFirst -bool true # 名前で並べ替えを選択時にディレクトリを前に置くようにする
defaults write com.apple.finder AnimateWindowZoom -bool false # フォルダを開くときのアニメーションを無効にする
defaults write com.apple.finder AppleShowAllFiles true # Finder:隠しファイル/フォルダを表示
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf" # 検索時にデフォルトでカレントディレクトリを検索する
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false # 拡張子変更時の警告を無効化する
defaults write com.apple.finder QLEnableTextSelection -bool true # クイックルックでテキストを選択可能にする
defaults write com.apple.Finder QuitMenuItem -bool true # Finder を終了させる項目を追加する
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false　# ハードディスク 表示オフ
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false　# 外部ディスク 表示オフ
defaults write com.apple.finder ShowMountedServersOnDesktop -bool false　# CD，DVD，および iPod 表示オフ
defaults write com.apple.finder ShowPathbar -bool true # パスバーを表示する
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false　# 接続しているサーバ 表示オフ
defaults write com.apple.finder ShowStatusBar -bool true # ステータスバーを表示する
defaults write com.apple.finder ShowTabView -bool true # タブバーを表示する
defaults write com.apple.finder SidebarDevicesSectionDisclosedState -bool true
defaults write com.apple.finder SidebarPlacesSectionDisclosedState -bool true
defaults write com.apple.finder WarnOnEmptyTrash -bool true # ゴミ箱を空にする前の警告を有効化する

# keyboard
# CapsLock を Ctrl に変更する
keyboard_id="$(ioreg -c AppleEmbeddedKeyboard -r | grep -Eiw "VendorID|ProductID" | awk '{ print $4 }' | paste -s -d'-\n' -)-0"
defaults -currentHost write -g com.apple.keyboard.modifiermapping.${keyboard_id} -array-add "
<dict>
  <key>HIDKeyboardModifierMappingDst</key>\
  <integer>30064771300</integer>\
  <key>HIDKeyboardModifierMappingSrc</key>\
  <integer>30064771129</integer>\
</dict>
"
# LaunchServices
defaults write com.apple.LaunchServices LSQuarantine -bool false # 未確認のアプリケーションを実行する際のダイアログを無効にする

# menuextra
defaults write com.apple.menuextra.battery ShowPercent -string "YES" # バッテリー数表示
defaults write com.apple.menuextra.clock IsAnalog 0 # 時計 デジタルで表示
defaults write com.apple.menuextra.clock DateFormat -string "M\u6708d\u65e5(EEE)  H:mm:ss" # 日付と時刻のフォーマット（24時間表示、秒表示あり、日付・曜日を表示）

# NetworkBrowser
defaults write com.apple.NetworkBrowser ShowThisComputer -bool false # ファイル共有を有効にした時、共有先に自分の Mac を表示させる

# screencapture
defaults write com.apple.screencapture disable-shadow -bool false # スクリーンキャプチャの影をなくす
defaults write com.apple.screencapture type -string "png" # スクリーンショットの保存形式を PNG にする

# 画面上部　システムメニューの表示
defaults write com.apple.systemuiserver "NSStatusItem Visible Siri" 0
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.airport" 1
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.battery" 1
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.bluetooth" 1
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.clock" 1
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.volume" 1

# terminal
defaults write com.apple.terminal "Default Window Settings" -string "Pro"
defaults write com.apple.terminal StringEncodings -array 4 # UTF-8 のみを使用する

# trackpad
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -int 1 # タップでクリックを許可
defaults write -g com.apple.trackpad.scaling -float 15 # カーソルの移動速度を変更 （1〜15）

# NSAutomaticWindowAnimationsEnabled
defaults write -g NSAutomaticWindowAnimationsEnabled -bool false # ファイルを開くときのアニメーションを無効にする

# NSInitialToolTipDelay
defaults write -g NSInitialToolTipDelay -integer 0 # ツールチップ表示までのタイムラグをなくす

# NSGlobalDomain
defaults write NSGlobalDomain AppleShowAllExtensions -bool true # 全ての拡張子のファイルを表示する
defaults write NSGlobalDomain AppleShowScrollBars -string "Always" # スクロールバーを常時表示する
defaults write NSGlobalDomain com.apple.springing.delay -float 0 # スプリングロード遅延を除去する
defaults write NSGlobalDomain com.apple.springing.enabled -bool true # ディレクトリのスプリングロードを有効にする
defaults write NSGlobalDomain KeyRepeat -int 2 # キーリピートの速度
defaults write NSGlobalDomain InitialKeyRepeat -int 15 # キーリピート開始までのタイミング
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001 # コンソールアプリケーションの画面サイズ変更を高速にする

# 上記設定後は、Finder, Dock, SystemUIServerを再起動する
echo "Reboot Dock And Findler And SystemUIServer"
killall Dock
killall Finder
killall Terminal
killall SystemUIServer

echo 'Finished'

# finder home 表示
# 通知の設定
# docksの整理
# カレンダーの通知設定をなしにする
# 自動変換を止める
