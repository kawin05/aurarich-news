#!/bin/bash
# Deploy updated index.html to GitHub Pages
# Called after the agent updates the articles in index.html
cd /c/Users/Pan/Desktop/aurarich-news || exit 1

git add index.html
git commit -m "Daily update $(date '+%Y-%m-%d %H:%M')" --no-gpg-sign 2>&1
git push origin main 2>&1

echo "Deployed: $(date '+%Y-%m-%d %H:%M')"
