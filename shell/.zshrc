ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=$HOME/.dotfiles/misc/oh-my-zsh-custom

# Set the ZSH theme
# Themes are found in ~./oh-my-zsh/themes
ZSH_THEME="avit"

# Hides the username in prompt
DEFAULT_USER=`whoami`

plugins=(git)

source $ZSH/oh-my-zsh.sh

for file in ~/.dotfiles/shell/.{aliases,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done

unset file