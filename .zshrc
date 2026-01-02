# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

###########################
#     Dotfiles Config     #
###########################
alias config='/usr/bin/git --git-dir=/Users/greg/.cfg/ --work-tree=/Users/greg'

###########################
#     Powerlevel10k       #
###########################
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.config/.p10k.zsh ]] || source ~/.config/.p10k.zsh

###########################
#        Postgres         #
###########################
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"

###########################
#          TMUX           #
###########################
alias tmk='tmux kill-sess -t' # Kill a tmux session
alias tmls='tmux ls' # List all active tmux sessions
alias tma='tmux -a -t' # Attach a tmux session
alias wallet='~/.config/tmux/setup/wallet' # Wallet API pre-configured setup

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

if [[ -f "$HOME/.zshrc.secrets" ]]; then
  source "$HOME/.zshrc.secrets"
fi
