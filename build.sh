ln -s -f $(cd `dirname $0`; pwd)/oh-my-zsh/.zshrc $HOME
ln -s -f $(cd `dirname $0`; pwd)/rime/Library/Rime/default.custom.yaml $HOME/Library/Rime
ln -s -f $(cd `dirname $0`; pwd)/rime/Library/Rime/double_pinyin_flypy.custom.yaml $HOME/Library/Rime
ln -s -f $(cd `dirname $0`; pwd)/ss/.ShadowsocksX $HOME
# ln -s -f $(cd `dirname $0`; pwd)/vim/.vimrc $HOME
# Ln -s -f $(cd `dirname $0`; pwd)/vim/.vim/.vimrc.custom $HOME/.vim
# ln -s -f $(cd `dirname $0`; pwd)/vim/.vim/.vimrc.coding $HOME/.vim
# ln -s -f $(cd `dirname $0`; pwd)/vim/.vim/.vimrc.bundles $HOME/.vim
ln -s -f $(cd `dirname $0`; pwd)/vim/.ackrc $HOME
ln -s -f $(cd `dirname $0`; pwd)/nvim/init.vim $HOME/.vimrc  # use same config with neovim
ln -s -f $(cd `dirname $0`; pwd)/nvim $HOME/.config
ln -s -f $(cd `dirname $0`; pwd)/tmux/.tmux.conf.local $HOME
