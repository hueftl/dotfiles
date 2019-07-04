function mdc; mkdir -p $argv; and cd $argv; end
function debup; sudo aptitude update; and sudo aptitude safe-upgrade; end

alias .. "cd ../"
alias ... "cd ../../"

alias c "clear"
alias cat "bat"

alias debadd "sudo aptitude install"
alias debrem "sudo aptitude remove"
alias debget "aptitude search"
alias doco "docker-compose"
alias dsp "docker system prune"
alias dip "docker image prune"
alias dnp "docker network prune"
alias dvp "docker volume prune"`

alias ff "find . -name"

alias g "git"
alias ga "git add"
alias gaa "git add -A"
alias gb "git branch -vva"
alias gbd "git branch -D"
alias gc "git clone"
alias gco "git checkout"
alias gd "git diff"
alias gfa "git fetch -p --all"
alias gp "git pull"
alias gpom "git pull origin master"
alias gpu "git push"
alias gst "git status"

alias m "make"
alias mc "make clean"
alias md "mkdir -p"
alias mj "make -j32"

alias off "sudo shutdown -P now"

alias p "ping -3"
alias ping "ping -c3"
alias pycdel "find . -iname '*.pyc' -delete "

alias ua "uname -a"

alias v "vim"
