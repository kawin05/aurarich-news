#!/bin/bash
# Push index.html to GitHub Pages
# Token is stored securely in Windows Credential Manager
cd "$(dirname "$0")"

# Stage and commit any changes first
git add index.html hero-thumb.png
if git diff --cached --quiet; then
    echo "No changes to commit"
else
    git commit -m "Daily update $(date '+%Y-%m-%d %H:%M')" --no-gpg-sign 2>&1
fi

# Pull latest (handles remote changes)
git pull origin main --no-rebase 2>&1

# Push
git push origin main 2>&1

echo "Deployed: $(date '+%Y-%m-%d %H:%M')"
