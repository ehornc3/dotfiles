# get neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz

# get oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# oh-my-zsh plugins
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git ./.omz-custom/plugins/zsh-autocomplete

# nv-chad
git clone https://github.com/NvChad/starter ~/.config/nvim

# link dotfiles
stow .
