set PATH /usr/local/bin /usr/bin /bin /usr/sbin /sbin /usr/local/munki  /Users/jll32/.cargo/bin /usr/local/bin /usr/bin /bin /usr/sbin /sbin  /usr/local/share/dotnet ~/.dotnet/tools /usr/local/go/bin /Library/Frameworks/Mono.framework/Versions/Current/Commands /usr/local/munki 
starship init fish | source

function norm
    ~/.norminette/norminette.rb $argv
end

set -x GOPATH $HOME/go
set -x GOBIN $GOPATH/bin
set -x PATH $PATH GOBIN

# ghcup-env
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME
test -f /Users/jll32/.ghcup/env ; and set -gx PATH $HOME/.cabal/bin /Users/jll32/.ghcup/bin $PATH
