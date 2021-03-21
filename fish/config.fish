set PATH /goinfre/ael-hach/.brew/bin /usr/local/bin /usr/bin /bin /usr/sbin /sbin /usr/local/munki /Users/ael-hach/.cargo/bin $PATH
starship init fish | source
function norm
    ~/.norminette/norminette.rb $argv
end

set -x GOPATH $HOME/go
set -x GOBIN $GOPATH/bin
set -x PATH $PATH GOBIN
