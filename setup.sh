#!/usr/bin/fish

set DOT_FILES .vimrc .tmux.conf

for file in $DOT_FILES
    ln -sf $HOME/work/dotfiles/$file $HOME/$file
end

ln -sf $HOME/work/dotfiles/fish $HOME/.config/fish
ln -sf $HOME/work/dotfiles/bin/ide $HOME/bin/ide
ln -sf $HOME/work/dotfiles/bin/svnd $HOME/bin/svnd
ln -sf $HOME/work/dotfiles/coc-settings.json $HOME/.vim/coc-settings.json
ln -sf $HOME/work/dotfiles/UltiSnips $HOME/.vim
