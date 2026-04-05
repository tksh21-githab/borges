#!/bin/bash
# Obsidianのtraducciones/からコピーしてpush

SRC="$HOME/Library/Mobile Documents/iCloud~md~obsidian/Documents/Notas/*Personal/tela nuestra/borges/*traducciones/"
DEST="$HOME/Desktop/borges/content/traducciones/"

mkdir -p "$DEST"
rsync -av --delete "$SRC" "$DEST"

cd "$HOME/Desktop/borges"
git add .
git commit -m "update: $(date '+%Y-%m-%d %H:%M')"
git push
