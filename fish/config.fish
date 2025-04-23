starship init fish | source
zoxide init fish | source

set -U fish_greeting # disable fish greeting
set -U fish_key_bindings fish_vi_key_bindings

set -Ux EDITOR nvim
set -Ux ATAC_KEY_BINDINGS ~/Develop/.atac-files/vim_key_bindings.toml

set -x PATH /Users/macbook/.local/bin $PATH

thefuck --alias | source

abbr gst "git status -sb"
abbr n nvim
abbr n. "nvim ."
abbr no n
abbr e exit
abbr c clear
abbr ls "eza --tree --icons=always --no-time --no-user --no-permissions --level=1"
abbr lz lazygit
abbr ld lazydocker
abbr tcp "theme_changer.py"

test -e {$HOME}/.iterm2_shell_integration.fish; and source {$HOME}/.iterm2_shell_integration.fish
