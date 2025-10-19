# Mac Setup

A comprehensive guide to my macOS configuration, applications, and productivity workflow.

---

## Table of Contents

- [Package Management](#package-management)
- [Essential Apps](#essential-apps)
- [System Configuration](#system-configuration)
- [Keyboard Shortcuts](#keyboard-shortcuts)
- [Productivity Tips](#productivity-tips)
- [Configuration Files](#configuration-files)

---

## Package Management

### Homebrew

Package manager for macOS. See [README.md](README.md#setup) for installation and setup instructions.

**Installation options:**
- **Bulk install:** `brew bundle install` (installs everything from Brewfile)
- **Interactive install:** `~/dotfiles/homebrew/install-apps` (prompts for each app)

---

## Essential Apps

### Productivity

<details>
<summary><strong>Raycast</strong></summary>

Replaces Spotlight with a powerful launcher and productivity tool.

**Features I use:**
- Launch apps instantly
- Clipboard history
- Snippets (text replacements starting with `!`)
- Extensions: Color Picker, Cursor, Figma File Search, Kill Process, Linear, TinyPNG

**Installation:** `brew install --cask raycast`

</details>

<details>
<summary><strong>Akiflow</strong></summary>

Task and calendar management in one place.

**Installation:** `brew install --cask akiflow`

</details>

<details>
<summary><strong>Slack</strong></summary>

Team communication.

**Installation:** `brew install --cask slack`

</details>

<details>
<summary><strong>Linear</strong></summary>

Issue tracking and project management.

**Installation:** `brew install --cask linear-linear`

</details>

### Creative

<details>
<summary><strong>Figma</strong></summary>

Design and prototyping tool.

**Installation:** `brew install --cask figma`

</details>

### Browsers

<details>
<summary><strong>Zen Browser</strong></summary>

Privacy-focused web browser.

**Installation:** `brew install --cask zen`

</details>

### Development

<details>
<summary><strong>Cursor</strong></summary>

Code editor with AI assistance.

**Installation:** `brew install --cask cursor`

</details>

<details>
<summary><strong>Ghostty</strong></summary>

Modern terminal application.

**Installation:** `brew install --cask ghostty`

</details>

### Utilities

<details>
<summary><strong>ChatGPT</strong></summary>

AI assistant desktop app.

**Installation:** `brew install --cask chatgpt`

</details>

<details>
<summary><strong>MacWhisper</strong></summary>

Offline audio transcription.

**Installation:** `brew install --cask macwhisper`

</details>

<details>
<summary><strong>Karabiner-Elements</strong></summary>

Powerful keyboard customization tool that allows complex key remapping.

**What I use it for:**
- Remap Caps Lock to Hyper key (Shift + Command + Control + Option)
- Create app launcher layers (Hyper + A activates a mode, then press another key to launch apps)
- Custom shortcuts for tmux (Hyper + T → Ctrl + A for tmux prefix)

**Installation:** `brew install --cask karabiner-elements`

**Config location:** `~/.config/karabiner/karabiner.json`

</details>

<details>
<summary><strong>Aerospace</strong></summary>

Tiling window manager that automatically organizes your windows across workspaces.

**Installation:** `brew install --cask aerospace`

**Config location:** `~/.config/aerospace/aerospace.toml`

</details>

### Setapp Apps

Subscription service with access to premium Mac apps.

<details>
<summary><strong>Apps I use from Setapp</strong></summary>

- **AlDente Pro** - Manage battery health and charging limits
- **CleanMyMac X** - Keep your Mac clean and optimized
- **CleanShot X** - Better screenshots and screen recording
- **ClearVPN** - VPN service
- **Gemini** - Find and remove duplicate files
- **Spark Mail** - Smart email client
- **Timing** - Automatic time tracking

**Installation:** `brew install --cask setapp`

</details>

---

## System Configuration

### Automated Settings

Most system settings can be applied automatically using the `.macos` script in this repository.

<details>
<summary><strong>Apply Settings</strong></summary>

Run the following command to apply all automated settings:

```bash
cd ~/dotfiles && bash macos/.macos
```

This will configure:
- Trackpad & Mouse speed
- Keyboard repeat rate
- Dock appearance and behavior
- Finder preferences
- Screenshot settings
- Security settings
- And more...

</details>

### Manual Configuration

Some settings require manual configuration through System Settings.

#### Wi-Fi & Network

<details>
<summary><strong>Set DNS to Cloudflare</strong></summary>

Faster and more private browsing:

1. System Settings → Wi-Fi
2. Click **Details** next to your network
3. Go to **DNS** tab
4. Click **+** and add:
   - `1.1.1.1`
   - `1.0.0.2`
   - `2606:4700:4700::1111`
   - `2606:4700:4700::1001`

</details>

<details>
<summary><strong>Enable Firewall</strong></summary>

1. System Settings → Network
2. Click **Firewall**
3. Turn it **ON**

</details>

#### Battery

<details>
<summary><strong>Low Power Mode</strong></summary>

1. System Settings → Battery
2. Set "Low Power Mode" to **Only on Battery**

</details>

<details>
<summary><strong>If Using AlDente Pro</strong></summary>

AlDente Pro manages battery health better than macOS:

1. System Settings → Battery → Battery Health
2. Turn **OFF** "Optimized Battery Charging"

This prevents conflicts between macOS and AlDente Pro.

</details>

#### Appearance

<details>
<summary><strong>Dark Mode & Sidebar</strong></summary>

1. System Settings → Appearance
2. Choose **Light**, **Dark**, or **Auto**
3. Set sidebar icon size to **Small**

</details>

<details>
<summary><strong>Clean Up Menu Bar</strong></summary>

1. System Settings → Control Center
2. Set everything to "Don't Show in Menu Bar" **except Focus**
3. Turn off all "Other Modules"

Result: Minimal, distraction-free menu bar.

</details>

#### Desktop & Dock

<details>
<summary><strong>Dock Settings</strong></summary>

My Dock configuration for a clean, minimal workspace:

1. System Settings → Desktop & Dock
2. Configure:
   - Dock size: **Small** (30)
   - Magnification: **On** (minimal)
   - Position: **Bottom**
   - Minimize using: **Scale Effect** (faster than Genie)
   - ✅ Minimize windows into application icon
   - ✅ Automatically hide and show the Dock
   - ❌ Show recent applications in Dock
   - ✅ Show indicators for open applications

**Mission Control:**
- ❌ Automatically rearrange Spaces based on most recent use
- ✅ Group windows by application

</details>

<details>
<summary><strong>Set Default Browser</strong></summary>

System Settings → Desktop & Dock → Default web browser → Choose **Zen** (or your preference)

</details>

#### Display

<details>
<summary><strong>More Space</strong></summary>

Get more screen real estate:

1. System Settings → Displays
2. Select **"More Space"**

Result: Smaller UI elements, more content on screen.

</details>

<details>
<summary><strong>True Tone</strong></summary>

Turn **OFF** if color accuracy is important (design work, photo editing).

</details>

<details>
<summary><strong>Night Shift</strong></summary>

Automatically adjusts display colors to warmer tones at night.

1. System Settings → Displays
2. Click **Night Shift...**
3. Configure:
   - Schedule: **Custom** or **Sunset to Sunrise**
   - Color Temperature: Adjust to preference

Turn **OFF** if you need consistent color accuracy for design/photo work.

</details>

#### Keyboard

<details>
<summary><strong>Disable Unused Shortcuts</strong></summary>

1. System Settings → Keyboard → Keyboard Shortcuts...
2. Go through each category:

**Launchpad & Dock:**
- Turn off if you don't use Launchpad

**Input Sources:**
- Turn off if you don't switch languages

**Screenshots:**
- Turn off if using CleanShot X

**Services:**
- Turn off "Search With Google"
- Turn off rarely used text shortcuts

**Spotlight:**
- Turn off if using Raycast instead

</details>

#### Privacy & Security

<details>
<summary><strong>FileVault</strong></summary>

1. System Settings → Privacy & Security
2. Scroll to **FileVault**
3. Turn **ON** (if not already enabled)

Encrypts your entire disk for security.

</details>

#### Notifications

<details>
<summary><strong>Reduce Distractions</strong></summary>

1. System Settings → Notifications
2. Turn off notifications when:
   - ✅ Sleeping
   - ✅ Screen is locked
   - ✅ Screen sharing

3. Go through each app:
   - Keep only: FaceTime, Find My, Messages, Reminders
   - Turn off everything else

Result: Fewer interruptions, more focus.

</details>

#### Siri

<details>
<summary><strong>Disable Siri</strong></summary>

If you don't use Siri:

1. System Settings → Siri & Spotlight
2. Turn **OFF** "Ask Siri"

</details>

---

## Keyboard Shortcuts

**Note:** These shortcuts are based on Norwegian ISO layout (standard Mac keyboard). Some key combinations may differ on other keyboard layouts.

### macOS Basics

<details>
<summary><strong>General Shortcuts</strong></summary>

- `Command + Q` - Quit app
- `Command + W` - Close window
- `Command + ,` - Open preferences
- `Command + Tab` - Switch between apps
- `Command + `` ` `` - Switch windows within app
- `Command + Space` - Spotlight (or Raycast)
- `Command + Option + Escape` - Force quit

</details>

<details>
<summary><strong>Text Editing</strong></summary>

- `Command + C` - Copy
- `Command + X` - Cut
- `Command + V` - Paste
- `Command + Shift + V` - Paste without formatting
- `Command + Z` - Undo
- `Command + Shift + Z` - Redo
- `Command + A` - Select all
- `Command + F` - Find
- `Shift + Arrow` - Select text by character
- `Shift + Option + Arrow` - Select by word
- `Shift + Command + Arrow` - Select to beginning/end of line

</details>

<details>
<summary><strong>Finder</strong></summary>

- `Command + N` - New Finder window
- `Command + Shift + N` - New folder
- `Command + Delete` - Move to trash
- `Command + Up` - Go to parent folder
- `Command + Down` - Open selected item
- `Space` - Quick Look preview
- `Command + Shift + .` - Show/hide hidden files
- `Command + 1/2/3/4` - Switch view (icons/list/columns/gallery)

</details>

<details>
<summary><strong>Screenshots</strong></summary>

- `Command + Shift + 3` - Capture entire screen
- `Command + Shift + 4` - Capture selected area
- `Command + Shift + 4` + `Space` - Capture window
- Add `Control` to copy to clipboard instead of saving
- `Command + Shift + 5` - Screenshot toolbar

**Tip:** If using CleanShot X, these shortcuts are replaced with better functionality.

</details>

<details>
<summary><strong>Web Browser</strong></summary>

- `Command + T` - New tab
- `Command + W` - Close tab
- `Command + Shift + T` - Reopen closed tab
- `Command + L` - Focus address bar
- `Command + R` - Refresh
- `Command + Shift + R` - Hard refresh (clear cache)
- `Control + Tab` - Next tab
- `Command + 1-9` - Go to tab 1-9

</details>

### App-Specific Shortcuts

<details>
<summary><strong>Slack</strong></summary>

- `Option + Shift + Down/Up` - Jump to unread
- `Command + N` - New message
- `Option + Click` - Mark message as unread
- `Command + K` - Quick switcher
- `Command + /` - Keyboard shortcuts help

</details>

<details>
<summary><strong>Google Sheets</strong></summary>

**Selection:**
- `Shift + Space` - Select row
- `Control + Space` - Select column

**Insert:**
- `Command + K` - Insert link
- `Command + Option + +` then `R` - Insert rows above
- `Command + Option + +` then `C` - Insert columns to the left

**Delete:**
- `Command + Option + -` then `R` or `C` - Delete row/column

**Hide:**
- `Command + Option + 9` - Hide row
- `Command + Option + 0` - Hide column

**Other:**
- `Command + Shift + H` - Find and replace

</details>

### Window Management (Aerospace)

<details>
<summary><strong>Navigate Windows</strong></summary>

- `Alt + H` - Focus window to the left
- `Alt + J` - Focus window below
- `Alt + K` - Focus window above
- `Alt + L` - Focus window to the right

</details>

<details>
<summary><strong>Move Windows</strong></summary>

- `Alt + Shift + H/J/K/L` - Move window in direction

</details>

<details>
<summary><strong>Workspaces</strong></summary>

Organize your apps across 6 different workspaces. Apps can automatically open in specific workspaces.

**Switch workspace:**
- `Alt + 1-6` - Go to workspace 1-6

**Move app to workspace:**
- `Alt + Shift + 1-6` - Move current window to workspace

**Other:**
- `Alt + Tab` - Toggle between last two workspaces
- `Alt + F` - Fullscreen
- `Alt + /` - Toggle window layout
- `Alt + R` - Resize mode (use H/J/K/L to resize)

</details>

---

## Productivity Tips

### Text Replacement

<details>
<summary><strong>Raycast Snippets</strong></summary>

Create custom text shortcuts that expand automatically.

**How I use it:**
All my snippets start with `!` for easy access.

**Examples:**
- `!email` → your@email.com
- `!address` → Your full address
- `!signature` → Email signature
- `!meeting` → Meeting link template

**Setup:** Raycast → Extensions → Snippets

</details>

### macOS Tips

<details>
<summary><strong>Quick Look Everything</strong></summary>

Select a file in Finder and press `Space` to preview it without opening.

Works for images, PDFs, videos, documents, and more.

</details>

<details>
<summary><strong>Smart Folders</strong></summary>

Create saved searches in Finder:

1. Finder → File → New Smart Folder
2. Add search criteria
3. Save to Sidebar

Example: Show all files modified today, or all large files.

</details>

<details>
<summary><strong>Show Hidden Files</strong></summary>

Press `Command + Shift + .` in Finder to toggle hidden files.

Useful for accessing system files and dotfiles.

</details>

<details>
<summary><strong>Take Better Screenshots with CleanShot X</strong></summary>

If using CleanShot X:

- Capture scrolling screenshots
- Add annotations instantly
- Hide desktop icons automatically
- Copy to clipboard or save to cloud

</details>

<details>
<summary><strong>Use Spotlight/Raycast as Calculator</strong></summary>

Press `Command + Space` and type math:

- `450 * 1.25`
- `100 USD to EUR`
- `50% of 200`

Instant results without opening Calculator.

</details>

<details>
<summary><strong>Rename Multiple Files</strong></summary>

1. Select files in Finder
2. Right-click → Rename X Items...
3. Choose format: Replace text, Add text, or Format

</details>

<details>
<summary><strong>Force Quit Frozen Apps</strong></summary>

`Command + Option + Escape` → Select app → Force Quit

Or right-click app in Dock while holding `Option` → Force Quit

</details>

<details>
<summary><strong>Preview Path in Finder</strong></summary>

Enable path bar (`Command + Option + P`) to see exactly where you are.

Click any folder in the path to jump to it.

</details>

<details>
<summary><strong>Drag & Drop Tricks</strong></summary>

- Drag file to Terminal → Inserts file path
- Drag image to email → Attaches it
- Hold `Option` while dragging → Duplicates file
- Drag with `Command` → Moves instead of copies (between volumes)

</details>

<details>
<summary><strong>Multiple Desktops (Spaces)</strong></summary>

Swipe up with three fingers → See all windows

Drag window to top → "Add Desktop" to create new space

Switch between spaces: `Control + Left/Right Arrow`

</details>

---

## Configuration Files

Dotfiles are managed with GNU Stow - see [README.md](README.md) for setup instructions.

**Included configurations:**
- **Aerospace** - `~/.config/aerospace/`
- **Karabiner** - `~/.config/karabiner/`
- **Git** - `~/.gitconfig`
- **Zsh** - `~/.zshrc`
- **Tmux** - `~/.tmux.conf`
- **Neovim** - `~/.config/nvim/`
- **Cursor** - `~/.config/cursor/`

---

## Quick Setup Guide

Setting up a new Mac? Follow these steps:

1. **Install Homebrew** (see Homebrew section above)
2. **Clone dotfiles:** `git clone https://github.com/olekristianbe/dotfiles.git ~/dotfiles`
3. **Install apps** - See [README.md](README.md#setup) for installation commands
4. **Apply system settings:** `cd ~/dotfiles && bash macos/.macos`
5. **Apply dotfiles** - See [README.md](README.md#setup) for stow commands
6. **Complete manual configuration** (see System Configuration section above)

---

## Additional Resources

- [Aerospace Documentation](https://nikitabobko.github.io/AeroSpace/guide)
- [Karabiner-Elements Documentation](https://karabiner-elements.pqrs.org/)
- [Homebrew Documentation](https://docs.brew.sh/)
- [macOS defaults list](https://macos-defaults.com/)
