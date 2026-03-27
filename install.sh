#!/bin/bash
# Dotfiles install script

set -e

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Installing dotfiles from $DOTFILES_DIR..."

# Backup function
backup_if_exists() {
    if [ -e "$1" ] && [ ! -L "$1" ]; then
        echo "Backing up existing $1 to $1.backup"
        mv "$1" "$1.backup"
    fi
}

# Install a config file
install_config() {
    local src="$1"
    local dst="$2"
    
    backup_if_exists "$dst"
    
    # Create parent directory if needed
    mkdir -p "$(dirname "$dst")"
    
    # Create symlink
    ln -sf "$src" "$dst"
    echo "Linked: $dst -> $src"
}

# Tmux
install_config "$DOTFILES_DIR/.tmux.conf" "$HOME/.tmux.conf"

# Zsh
install_config "$DOTFILES_DIR/.zshrc" "$HOME/.zshrc"

# Git
install_config "$DOTFILES_DIR/.gitconfig" "$HOME/.gitconfig"

# Claude Code
mkdir -p "$HOME/.claude"
install_config "$DOTFILES_DIR/.claude/settings.json" "$HOME/.claude/settings.json"

echo ""
echo "Dotfiles installed successfully!"
echo ""
echo "To apply changes:"
echo "  - Tmux: tmux source-file ~/.tmux.conf"
echo "  - Zsh:  source ~/.zshrc"
echo "  - Git:  (already active)"
