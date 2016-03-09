#!/usr/bin/env bash
#
# script to install dotfile

# Install Python
if [[ `uname` == 'Linux' ]]; then
  sudo apt-get update
  sudo apt-get install python
  sudo pip install --upgrade pip
else
  brew update
  brew install python
fi

# Clone devenv from Github
if [ -d "$HOME/.devenv" ]; then
  echo "devenv github repo already cloned."
else
  git clone https://github.com/evangoad/devenv ~/.devenv
fi

# Install pip helper
if type devenv > /dev/null; then
  echo "devenv python script already installed."
else
  sudo pip install git+git://github.com/evangoad/devenv
fi

