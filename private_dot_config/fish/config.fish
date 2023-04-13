set PATH /Users/devinward/.cargo/bin $PATH

# Override fish colors
set fish_color_normal white
set fish_color_quote bryellow
set fish_color_autosuggestion brblack
set fish_color_command brwhite
set fish_color_comment yellow
set fish_color_end brwhite
set fish_color_error brred
set fish_color_cancel brred
set fish_color_operator green
set fish_color_param cyan
set fish_color_escape red
set fish_color_redirection magenta
set fish_color_cwd magenta
set fish_pager_color_progress brwhite --background=blue
set fish_pager_color_completion blue
set fish_pager_color_description yellow
set fish_color_match brwhite --background=brmagenta
set fish_color_history_current brgreen

# look at creating a .alias file to source all shells; for now just alias here
# macos doesnt like sourcing this alias
alias ls="exa --icons"
alias find="fd"
alias htop="btm"
alias top="btm"
alias diff="delta"
alias colordiff="delta"
alias ps="procs"
alias less="bat --decorators=never"
alias .j="just --justfile ~/.justfile --working-directory ~"
alias j="just --justfile ~/.justfile --working-directory ."

# ADD ALTER ALIASES HERE

# CUSTOMS
alias ..="cd .."
alias ....="cd ../.."
alias home="cd ~/"
alias justconfig="code -n ~/.justfile" # requires just
alias fishconfig="code -n ~/.config/fish/config.fish"
alias alacrittyconfig="code -n ~/.config/alacritty/alacritty.yml" # requires alacritty

test -x (which starship); and starship init fish | source
test -x (which zoxide); and zoxide init fish | source