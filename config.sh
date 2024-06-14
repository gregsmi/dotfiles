# curl -s https://raw.githubusercontent.com/gregsmi/dotfiles/main/config.sh | bash
cd ~

# Install powerlevel10k if it doesn't exist.
if [ ! -d "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k" ]; then
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
fi
# Install zsh-autosuggestions if it doesn't exist.
if [ ! -d "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions" ]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi

# Copy config files.
mv .zshrc .zshrc.bak
curl 'https://raw.githubusercontent.com/gregsmi/dotfiles/main/.p10k.zsh' > .p10k.zsh
curl 'https://raw.githubusercontent.com/gregsmi/dotfiles/main/.zshrc' > .zshrc

