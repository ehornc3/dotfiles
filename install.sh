# get oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# oh-my-zsh plugins
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git ./.oh-my-zsh/custom/plugins/zsh-autocomplete

# nv-chad
git clone https://github.com/NvChad/starter ~/.config/nvim

# link dotfiles
stow .
