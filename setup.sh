# install homebrew
echo "install homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# execute homebrew
echo "execute homebrew"
brew bundle

# set up visual studio code Extension
echo "set up visual studio code Extension"
sh vscode.sh