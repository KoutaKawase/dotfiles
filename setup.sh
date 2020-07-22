#!/usr/bin/fish

set DOT_FILES .vimrc .tmux.conf

for file in $DOT_FILES
    ln -sf $HOME/work/dotfiles/$file $HOME/$file
end

ln -sf $HOME/work/dotfiles/fish $HOME/.config/fish
ln -sf $HOME/work/dotfiles/bin/ide $HOME/bin/ide
ln -sf $HOME/work/dotfiles/bin/svnd $HOME/bin/svnd
