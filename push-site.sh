#!/bin/bash
#
# push-site.sh — check for changes in the website repo, commit, and push to GitHub.
#
# Usage:
#   ./push-site.sh                  → commits with an auto-generated message
#   ./push-site.sh "My message"     → commits with your own message
#
# Safe to run any time: if nothing changed, it does nothing.

set -e

REPO_DIR="/Users/sachinmbs/Research/GitHub_Webpage/sachingautham.github.io"

cd "$REPO_DIR" || { echo "Could not find repo at $REPO_DIR — edit REPO_DIR in this script if you moved it."; exit 1; }

# Nothing to do if the working tree is clean
if [ -z "$(git status --porcelain)" ]; then
  echo "No changes detected in $REPO_DIR — nothing to commit."
  exit 0
fi

echo "Changes detected:"
git status --short
echo ""

# Use a custom message if given, otherwise a timestamped default
if [ -n "$1" ]; then
  MSG="$1"
else
  MSG="Update site - $(date '+%Y-%m-%d %H:%M')"
fi

git add -A
git commit -m "$MSG"

echo ""
echo "Syncing with GitHub before pushing (in case anything changed remotely)..."
git pull --rebase origin master

echo "Pushing..."
git push origin master

echo ""
echo "Done. Pushed: \"$MSG\""
echo "GitHub Pages usually takes a minute or two to rebuild: https://sachingautham.github.io/"
