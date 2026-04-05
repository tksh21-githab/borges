#!/bin/bash
# Obsidianのtraducciones/からコピーしてpush

SRC="$HOME/Library/Mobile Documents/iCloud~md~obsidian/Documents/Notas/*Personal/tela nuestra/borges/*traducciones/"
DEST="$HOME/Documents/github/borges/content/traducciones/"

mkdir -p "$DEST"
rsync -av --delete "$SRC" "$DEST"

cd "$HOME/Documents/github/borges"
git add .
git commit -m "update: $(date '+%Y-%m-%d %H:%M')"
git push
