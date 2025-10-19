# Dotfiles

Personal configuration files managed with [GNU Stow](https://www.gnu.org/software/stow/).

For detailed Mac setup guide, see [MAC_SETUP.md](MAC_SETUP.md).

## Setup

**Install all packages from Brewfile:**

```bash
cd ~/dotfiles/homebrew
brew bundle install
```

**Or install apps (casks) interactively (with yes/no prompts):**

```bash
~/dotfiles/homebrew/install-apps
```

**Stow dotfiles:**

```bash
cd ~/dotfiles
command find . -name ".DS_Store" -type f -delete
for dir in */; do
  [[ "$dir" != "macos/" ]] && [[ "$dir" != "homebrew/" ]] && stow "${dir%/}"
done
```

**Stow a single folder:**

```bash
cd ~/dotfiles
command find . -name ".DS_Store" -type f -delete
stow <folder-name>
```

**Apply macOS system preferences:**

```bash
bash ~/dotfiles/macos/.macos
```

**Claude Code MCP servers:**

```bash
cat ~/.claude.json.template >> ~/.claude.json
```

## What's Included

- **Aerospace** - Tiling window manager
- **Karabiner** - Hyper key, app launcher, Raycast integration
- **Homebrew** - Brewfile and interactive installer
- **macOS** - System preferences (trackpad, keyboard, Dock, Finder, screenshots)
- **Tmux** - Terminal multiplexer
- **Neovim** - LSP, Treesitter, Telescope
- **Zsh** - Shell aliases (bat, eza, ripgrep, fd)
- **Git** - Config and LFS

## Utilities

**Capture current macOS settings:**

```bash
~/dotfiles/macos/.local/bin/capture-macos-settings
```

**Export settings to new .macos file:**

```bash
~/dotfiles/macos/.local/bin/export-macos-settings
```
