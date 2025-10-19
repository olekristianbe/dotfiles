# ===== Base environment =====
eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$(npm prefix -g)/bin:$PATH"

# ===== Completion =====
autoload -Uz compinit
compinit
zmodload zsh/complist   # speeds up completion menus

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=*'
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' group-name ''

# ===== Options =====
setopt interactivecomments

# ===== Plugins =====
[[ -f ~/.zsh-plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ]] && source ~/.zsh-plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
[[ -f ~/.zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] && source ~/.zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ===== Aliases =====
# Better defaults
alias cat='bat'
alias ls='eza --icons'
alias ll='eza -la --icons --git'
alias tree='eza --tree'
alias grep='rg'
alias find='fd'

# Utilities
alias cls='clear'
alias t='tmux attach || tmux'

# ===== Prompt =====
autoload -Uz vcs_info colors && colors
setopt prompt_subst

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' formats ' %F{white}git%f(%F{208}%b%f)'
zstyle ':vcs_info:git:*' actionformats ' %F{white}git%f(%F{208}%b|%a%f)'

precmd() { vcs_info }

PROMPT='%F{blue}%1~%f${vcs_info_msg_0_} %F{240}%#%f '

# ===== zoxide =====
if command -v zoxide >/dev/null 2>&1; then
  eval "$(zoxide init zsh)"
fi
