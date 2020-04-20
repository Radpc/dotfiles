# CD's
alias s="cd ~/.scripts"
alias c="cd ~/.config"
alias x="cd ~/Desktop/Code"
alias m="cd ~/Music"

# Ranger
alias r=ranger

# Vim
alias v="vim -c "Goyo""

# I3 Config
alias ic="vim ~/.config/i3/config"

# X configs
alias xc="vim ~/.Xresources ; xrdb ~/.Xresources"

# Fuzzy Find
alias f="vim \$(fzf --height 40%)"

# Fuzzy execute
alias e="./\$(fzf --height 40%)"

# Sudo please
alias please="sudo"

# Python to python3
alias python="python3"

# Dotfiles' git
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
