#!/bin/bash
# Push index.html to GitHub Pages
# Token is stored securely in Windows Credential Manager (git credential-manager)
cd "$(dirname "$0")"

# Pull latest (in case of remote changes)
git pull origin main --rebase 2>&1

# Stage, commit, push
git add index.html
git commit -m "Daily update $(date '+%Y-%m-%d %H:%M')" --no-gpg-sign 2>&1
git push origin main 2>&1

echo "Deployed: $(date '+%Y-%m-%d %H:%M')"
