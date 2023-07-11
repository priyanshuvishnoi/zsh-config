export GPG_TTY=$(tty)
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
source $ZDOTDIR/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source $ZDOTDIR/zsh-autosuggestions/zsh-autosuggestions.zsh

source $ZDOTDIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

zstyle ':completion:*' list-colors ''
zstyle :compinstall filename '/home/priyanshu/.zshrc'

autoload -Uz compinit
compinit

HISTSIZE=1000
SAVEHIST=10000

HISTFILE=$ZDOTDIR/.zsh_history

bindkey -e
setopt auto_cd

export PATH=$PATH:$HOME/bin/

alias vc="code ."
alias zconf="vim $ZDOTDIR/.zshrc"
alias zsrc="source $ZDOTDIR/.zshrc"
#alias neofetch="neofetch | lolcat -p 1000"
alias ls="exa -l --icons"
alias ll="exa -al --icons"
alias mirrors="sudo reflector -c India -c Pakistan -c Bangladesh -c Germany -c Singapore -c 'Hong Kong' -a 6 --sort rate --save /etc/pacman.d/mirrorlist  "
alias cls="clear"
alias flutter="$HOME/bin/fvm flutter"

source $ZDOTDIR/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f $ZDOTDIR/.p10k.zsh ]] || source $ZDOTDIR/.p10k.zsh

#[ -z "$NVM_DIR" ] && export NVM_DIR="$HOME/.nvm"
#source /usr/share/nvm/nvm.sh
#source /usr/share/nvm/install-nvm-exec
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
export CHROME_EXECUTABLE=/usr/bin/google-chrome-stable


