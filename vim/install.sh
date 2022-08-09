# Vim (~/.vim/autoload)
[ ! -f "$HOME/.vim/autoload/plug.vim" ] &&  echo 'Installing vim-plug for vim' &&  curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim && echo 'Installed vim-plug for vim' &&  wait;

# Neovim (~/.local/share/nvim/site/autoload)
[ ! -f "$HOME/.local/share/nvim/site/autoload/plug.vim" ] &&  echo 'Installing vim-plug for neovim' && curl -fLo $HOME/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim && echo 'Installed vim-plug for neovim' && wait;

[[ ! -d ".config/nvim" ]] && mkdir -p ~/.config/nvim

echo "set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc" > ~/.config/nvim/init.vim;

echo 'Installing vim plugins...'
vim -c :PlugInstall +qall
echo 'Installed nvim plugins...'
nvim --headless +PlugInstall +qall
vim -c +"Copilot setup" +qall
nvim --headless +"Copilot setup" +qall
