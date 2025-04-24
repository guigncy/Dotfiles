#!/bin/bash

DOTFILES_DIR="$HOME/dotfiles"
FILES=(.bashrc .aliases .gitconfig .gitignore_global)

for file in "${FILES[@]}"; do
    ln -sf "$DOTFILES_DIR/$file" "$HOME/$file"
    echo "Linked $file"
done

echo "Dotfiles installed. Restart your terminal or source ~/.bashrc"