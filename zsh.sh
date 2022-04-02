#!/bin/bash


sh -c "$(curl -fsSL https://raw.githubusercontent.com/romkatv/zsh-bin/master/install)"

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/agkozak/zsh-z $ZSH_CUSTOM/plugins/zsh-z

sed -i 's/ZSH_THEME=.*/ZSH_THEME=\"powerlevel10k\/powerlevel10k\"/' ~/.zshrc
sed -i 's/plugins=\(.*\)/plugins=\(git zsh-autosuggestions zsh-syntax-highlighting zsh-z\)/' ~/.zshrc

source ~/.zshrc

