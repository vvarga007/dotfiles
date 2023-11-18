# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh
[[ -f ~/.zsh/functions.zsh ]] && source ~/.zsh/functions.zsh

if [[ $TERM_PROGRAM != "WarpTerminal" ]]; then
##### WHAT YOU WANT TO DISABLE FOR WARP - BELOW
	[[ -f ~/.zsh/iterm2.zsh ]] && source ~/.zsh/iterm2.zsh
##### WHAT YOU WANT TO DISABLE FOR WARP - ABOVE
fi

if [[ $TERM_PROGRAM == "WarpTerminal" ]]; then
##### WHAT YOU WANT TO ENABLE FOR WARP - BELOW
	[[ -f ~/.zsh/starship.zsh ]] && source ~/.zsh/starship.zsh
	# Load Starship
	eval "$(starship init zsh)"
##### WHAT YOU WANT TO ENABLE FOR WARP - ABOVE
fi
