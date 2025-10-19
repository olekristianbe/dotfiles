# Dotfiles

Personal configuration files managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Setup

```bash
brew install stow fzf bat eza ripgrep fd
cd ~/dotfiles
stow aerospace claude codex cursor fzf gh git karabiner nvim tmux zsh
```

**Claude Code MCP servers:**

```bash
cat ~/.claude.json.template >> ~/.claude.json
```

## What's Included

- **Aerospace** - Tiling window manager
- **Karabiner** - Hyper key, app launcher, Raycast integration
- **Tmux** - Terminal multiplexer
- **Neovim** - LSP, Treesitter, Telescope
- **Zsh** - Shell aliases (bat, eza, ripgrep, fd)
- **Git** - Config and LFS
