set fish_greeting

set -gx TERM    xterm-256color
set -gx EDITOR  nvim
set -gx LANG    en_PH.UTF-8
set -gx LC      en_PH.UTF-8

zoxide init fish --cmd cd | source
starship init fish | source
