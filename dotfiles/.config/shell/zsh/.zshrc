# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/shell/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.config/shell/zsh/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
unsetopt beep extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/squareddot/.config/shell/zsh/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


fpath+=${ZDOTDIR:-~}/.zsh_functions
source $ZDOTDIR/themes/powerlevel10k/powerlevel10k.zsh-theme
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[[ ! -f ~/.config/shell/zsh/.p10k.zsh ]] || source ~/.config/shell/zsh/.p10k.zsh

