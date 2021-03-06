set -x TERM xterm-256color
set -x VISUAL vim
set -x EDITOR vim
set -x MAN_POSIXLY_CORRECT 1

set -U fish_greeting 'Welcome to another shitty day. Make it better!'

starship init fish | source

#set -g theme_color_scheme gruvbox

if test -d $HOME/go
    set -x GOPATH $HOME/go
    set -x GOBIN $GOPATH/bin
end

if test -d $HOME/.yarn/bin -a $HOME/.yarn-config
    set -x YARNBIN $HOME/.yarn/bin
    set -x YARNGLOBALBIN $HOME/.yarn-config/global/node_modules/.bin
end

if test -d $HOME/.cargo/bin
    set -x CARGOBIN $HOME/.cargo/bin
end

if test -d /usr/bin/ccache
    set -x CCACHEBIN /usr/bin/ccache
end

if test -d /usr/local/sbin
    set -x LOCALSBIN /usr/local/sbin
end

if test -d /usr/local/bin
    set -x USRLOCALBIN /usr/local/bin
end

if test -d /usr/sbin
    set -x SBIN /usr/sbin
end

if test -d $HOME/.poetry/bin
    set -x POETRYBIN $HOME/.poetry/bin
end

set -U fish_user_paths $GOPATH $GOBIN $YARNBIN $YARNGLOBALBIN $CARGOBIN $LOCALSBIN $USRLOCALBIN $SBIN $POETRYBIN

source $HOME/.config/fish/aliases.fish
