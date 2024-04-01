# unlink before installing deps
stow -D .
# get neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
rm nvim-linux64.tar.gz
echo "export PATH=\"$PATH:/opt/nvim-linux64/bin/\"" >> .zshrc

# get oh-my-zsh
rm -rf ~/.oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)" "" --unattended
rm -rf ~/.zshrc

# oh-my-zsh plugins
rm -rf ~/.omz-custom
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git ~/.omz-custom/plugins/zsh-autocomplete

# nv-chad
rm -rf ~/.config/nvim
git clone https://github.com/NvChad/starter ~/.config/nvim

# link dotfiles
stow .
