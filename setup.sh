# install homebrew
echo "install homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# execute homebrew
echo "execute homebrew"
brew bundle

# set up visual studio code Extension
echo "set up visual studio code Extension"
code --install-extension codezombiech.gitignore
code --install-extension donjayamanne.git-extension-pack
code --install-extension golang.go
code --install-extension jebbs.plantuml
code --install-extension mechatroner.rainbow-csv
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-ceintl.vscode-language-pack-ja
code --install-extension ms-mssql.mssql
code --install-extension tht13.python
code --install-extension waderyan.gitblame