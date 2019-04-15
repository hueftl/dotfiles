function mdc; mkdir -p $argv; and cd $argv; end

alias .. "cd ../"
alias ... "cd ../../"

alias dockerclean "docker images -f=dangling=true -qa | xargs -r docker rmi -f" # removes images
alias dockerrma "docker rmi -f (docker images -q); docker rm (docker ps -a -q)" #

alias g "git"
alias ga "git add"
alias gaa "git add -A"
alias gb "git branch -vva"
alias gc "git clone"
alias gco "git checkout"
alias gd "git diff"
alias gp "git pull"
alias gpu "git push"
alias gst "git status"
alias m "make"
alias mc "make clean"
alias md "mkdir -p"
alias mm "make -j32"
alias ua "uname -a"
alias v "vim"
