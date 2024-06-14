# curl -s https://raw.githubusercontent.com/gregsmi/dotfiles/main/config.sh | bash
cd ~

CUSTOM_DIR="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"
# Install powerlevel10k if it doesn't exist.
if [ ! -d "$CUSTOM_DIR/themes/powerlevel10k" ]; then
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $CUSTOM_DIR/themes/powerlevel10k
fi
# Install zsh-autosuggestions if it doesn't exist.
if [ ! -d "$CUSTOM_DIR/plugins/zsh-autosuggestions" ]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions $CUSTOM_DIR/plugins/zsh-autosuggestions
fi

# Copy config files.
mv .zshrc .zshrc.bak
curl 'https://raw.githubusercontent.com/gregsmi/dotfiles/main/.p10k.zsh' > .p10k.zsh
curl 'https://raw.githubusercontent.com/gregsmi/dotfiles/main/.zshrc' > .zshrc

