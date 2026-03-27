# Dotfiles

Personal configuration files for development environment setup.

## What's Included

| File | Description |
|------|-------------|
| `.tmux.conf` | Tmux configuration - keybindings, mouse support, pane navigation |
| `.zshrc` | Zsh shell configuration with Oh My Zsh |
| `.gitconfig` | Git configuration with SSH signing |

| `.claude/settings.json` | Claude Code CLI settings |

## Quick Install

```bash
# Clone the repo
git clone <repo-url> ~/dotfiles
cd ~/dotfiles

# Run install script
./install.sh
```

## Manual Install

```bash
# Tmux
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf

# Zsh
ln -sf ~/dotfiles/.zshrc ~/.zshrc

# Git
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig

# Claude Code
mkdir -p ~/.claude
ln -sf ~/dotfiles/.claude/settings.json ~/.claude/settings.json
```

## Tmux Key Bindings

| Key | Action |
|-----|--------|
| `Ctrl+a` | Prefix key (instead of Ctrl+b) |
| `=` | Split horizontally |
| `-` | Split vertically |
| `Alt+Arrow` | Navigate panes |
| `Ctrl+a + H/J/K/L` | Resize panes |
| `Alt+1-5` | Switch windows |
| `Ctrl+a + r` | Reload config |
| `x` | Kill pane |
| `z` | Toggle zoom |

## Requirements

- [Tmux](https://github.com/tmux/tmux)
- [Zsh](https://www.zsh.org/) + [Oh My Zsh](https://ohmyz.sh/)
- [Claude Code](https://claude.ai/code) (optional)

## Notes

- The `.gitconfig` uses SSH signing - ensure your SSH key is set up
