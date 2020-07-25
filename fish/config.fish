alias ef 'vim ~/.config/fish/config.fish'
alias ev 'vim ~/.vimrc'

alias vi 'vim'

alias mk 'make'
alias gcz 'git-cz'

alias ll 'ls -ltr'
alias la 'ls -la'

alias mkdir 'mkdir -p'
alias rm 'rmtrash'
alias rmdir 'rmdirtrash'
alias sudo 'sudo '
alias cp 'cp -i'
alias mv 'mv -i'

alias .. 'cd ..'
alias ... 'cd ../..'
alias .... 'cd ../../..'
alias ..... 'cd ../../../..'

function cd
  builtin cd $argv; and ls
end

export PATH="$HOME/.cargo/bin:$PATH"
export DENO_INSTALL="/home/suhrkawase/.deno"

set -x GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin

set -g theme_color_scheme zenburn
set -g theme_display_date no

export LSCOLORS="hxfxcxdxbxegedabagacad"
