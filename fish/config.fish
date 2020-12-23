set PATH /goinfre/ael-hach/.brew/bin /usr/local/bin /usr/bin /bin /usr/sbin /sbin /usr/local/munki /Users/ael-hach/.cargo/bin $PATH
starship init fish | source
function norm
    ~/.norminette/norminette.rb $argv
end
