set -x TERM xterm-256color
set -x VISUAL vim
set -x EDITOR vim
set -x MAN_POSIXLY_CORRECT 1

if test -d $HOME/.yarn/bin -a $HOME/.yarn-config
    set -x YARNBIN $HOME/.yarn/bin
    set -x YARNGLOBALBIN $HOME/.yarn-config/global/node_modules/.bin
end

if test -d $HOME/.cargo/bin
    set -x CARGOBIN $HOME/.cargo/bin
end

set -U fish_user_paths $YARNBIN $YARNGLOBALBIN $CARGOBIN

source $HOME/.config/fish/aliases.fish



starship init fish | source
