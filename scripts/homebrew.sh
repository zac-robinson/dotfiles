# Check for homebrew and install if needed
echo "Installing homebrew ..."

which -s brew
if [[ $? != 0 ]] ; then
  yes |/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Homebrew already installed ..."
fi

brew update

# Install GNU core utilities (those that come with OS X are outdated).
brew install coreutils
ln -sv /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install zsh
brew install zsh
brew install zsh-syntax-highlighting
brew install zsh-autosuggestions
brew install zplug
brew install scmpuff
brew install nnn
brew install exa

brew install git

brew cleanup
