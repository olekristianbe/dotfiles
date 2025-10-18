# Dotfiles

Personal configuration files managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Setup

```bash
brew install stow fzf
cd ~/dotfiles
stow aerospace claude codex cursor fzf gh git karabiner nvim tmux zsh
```

Install zsh plugins:
```bash
mkdir -p ~/.zsh-plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh-plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.zsh-plugins/zsh-syntax-highlighting
```

Restore Claude Code MCP servers after first login:
```bash
cat ~/.claude.json.template >> ~/.claude.json
```
