starship init fish | source
zoxide init fish | source

set -U fish_greeting # disable fish greeting
set -U fish_key_bindings fish_vi_key_bindings

set -Ux EDITOR nvim


abbr n "nvim"
abbr n. "nvim ."
abbr e "exit"
abbr c "clear"
abbr ls "lsd"
