#!/bin/bash
echo "Setting Up ZSHENV..."
echo "export ZDOTDIR=\$HOME/.zsh/" >> $HOME/.zshenv

mkdir $HOME/.zsh

echo "Copying config files..."
cp .p10k.zsh $HOME/.zsh/
cp .zshrc $HOME/.zsh/
# cp .zsh_history $HOME/.zsh/

echo "Getting required packages..."
cd $HOME/.zsh

git clone https://github.com/romkatv/powerlevel10k.git
git clone https://github.com/marlonrichert/zsh-autocomplete.git
git clone https://github.com/zsh-users/zsh-autosuggestions.git
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git



echo "Setup Complete"
echo "Run chsh -s \$(which zsh) to zsh as login shell."
