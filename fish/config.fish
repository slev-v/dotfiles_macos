starship init fish | source
zoxide init fish | source

set -U fish_greeting # disable fish greeting
set -U fish_key_bindings fish_vi_key_bindings

set -Ux EDITOR nvim

set -x PATH /Users/macbook/.local/bin $PATH

abbr n "nvim"
abbr n. "nvim ."
abbr e "exit"
abbr c "clear"
abbr ls "lsd"
abbr lz "lazygit"
abbr tcp "theme_changer.py"

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

