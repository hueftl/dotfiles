function db; pgcli -h $argv[1] -U postgres -d $argv[2]; end
function mdc; mkdir -p $argv; and cd $argv; end

alias .. "cd ../"
alias ... "cd ../../"

alias c "clear"
alias cat "bat"

alias doco "docker-compose"
alias dsp "docker system prune"
alias dspa "docker system prune -a --volumes"
alias dil "docker images"
alias dila "docker images -a"
alias dip "docker image prune"
alias dnp "docker network prune"
alias dvp "docker volume prune"`

alias ff "find . -name"
alias fp "fzf --preview 'bat {} --color=always {} | head -300'"

alias g "git"
alias ga "git add"
alias gaa "git add -A"
alias gb "git branch -vv"
alias gba "git branch -vva"
alias gbd "git branch -D"
alias gc "git clone"
alias gco "git checkout"
alias gd "git diff"
alias gfa "git fetch -p --all"
alias giba "gitbatch"
alias gp "git pull"
alias gpom "git pull origin master"
alias gpu "git push"
alias gst "git status"

alias kn "killall node"

alias ll "exa -l"
alias la "exa -la"
alias lat "exa -laT"
alias ls "exa"
alias lt "exa -T"

alias m "make"
alias mc "make clean"
alias md "mkdir -p"
alias mj "make -j32"

alias off "sudo shutdown -P now"

alias ping "ping -c3"
alias pycdel "find . -iname '*.pyc' -delete "

alias ua "uname -a"

alias v "vim"
