set fish_greeting

set -gx EDITOR  nvim
set -gx LANG    en_PH.UTF-8
set -gx LC      en_PH.UTF-8

starship init fish | source
zoxide init fish --cmd cd | source
