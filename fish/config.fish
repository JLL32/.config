set PATH /goinfre/ael-hach/.brew/bin /usr/local/bin /usr/bin /bin /usr/sbin /sbin /usr/local/munki /Users/ael-hach/.cargo/bin $PATH

function norm
    ~/.norminette/norminette.rb $argv
end

set -x PATH $PATH /opt/homebrew/bin
set -x PATH $PATH /Users/jll32/.local/bin
set -x GOPATH (go env GOPATH)
set -x PATH $PATH (go env GOPATH)/bin

starship init fish | source