# dotfiles

Personal configs managed with [GNU Stow](https://www.gnu.org/software/stow/). Built on [Omarchy](https://omakub.org/) (Arch + Hyprland).

## Setup

```sh
git clone https://github.com/voloshko/dotfiles.git ~/dotfiles
cd ~/dotfiles
stow helix tmux nvim ghostty hyprland
```

To stow individual packages: `stow helix`, `stow tmux`, etc.

## Packages

### helix

Helix editor config (`~/.config/helix/`).

- **config.toml** — tokyonight theme (matches nvim)
- **languages.toml** — Haskell: auto-format on save with ormolu, HLS as language server

Requires: `haskell-language-server-wrapper`, `ormolu`

### tmux

Tmux config (`~/.tmux.conf`).

- Vim-style pane navigation: `Ctrl-h/j/k/l`
- Window switching: `Alt-h` (previous), `Alt-l` (next)

### nvim

LazyVim-based Neovim config (`~/.config/nvim/`).

- LazyVim framework with lazy.nvim plugin manager
- Relative line numbers disabled
- Tokyonight-night colorscheme (via omarchy theme system)
- Hot-reload theme support (switch themes without restarting)
- Transparency support
- Themes available: tokyonight, catppuccin, gruvbox, kanagawa, rose-pine, everforest, nord, monokai-pro, bamboo, flexoki, and more

### ghostty

Ghostty terminal config (`~/.config/ghostty/`).

- JetBrainsMono Nerd Font, size 9
- Block cursor, no blink
- Window padding 14px
- Ctrl+Tab/Ctrl+Shift+Tab unbound (passed through to Hyprland)
- Shift+Insert paste, Ctrl+Insert copy
- Mouse scroll slowed to 0.95x
- Dynamic theme colors from omarchy

### hyprland

Hyprland window manager config (`~/.config/hypr/`). Overrides on top of omarchy defaults.

- **hyprland.conf** — main entry point, sources omarchy defaults then personal overrides
- **bindings.conf** — app launch shortcuts (Super+Return terminal, Super+Shift+B browser, Super+Shift+N editor, etc.), web app shortcuts (ChatGPT, email, calendar, YouTube, etc.)
- **monitors.conf** — display config, optimized for retina 2x displays, with presets for 4K and 1080p
- **input.conf** — US keyboard, Caps Lock as Compose key, repeat rate 40/delay 600, numlock on, touchpad scroll factor 0.4
- **looknfeel.conf** — visual overrides (gaps, borders, rounding, layout — all commented as defaults)
- **autostart.conf** — personal autostart apps
- **hypridle.conf** — idle/lock/suspend timers
- **hyprlock.conf** — lock screen appearance
- **hyprsunset.conf** — night light / blue light filter
