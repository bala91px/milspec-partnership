#!/usr/bin/env bash
# Roll the live Mil-Spec deck back to a previous version tag and redeploy.
# Usage:  ./rollback.sh <version>     e.g.  ./rollback.sh v1
# Versions are listed in VERSIONS.md
set -euo pipefail

if [ $# -lt 1 ]; then
  echo "Usage: ./rollback.sh <version-tag>"
  echo "Available versions:"; git tag -l | sort -V
  exit 1
fi

TAG="$1"
git fetch --tags --quiet

if ! git rev-parse "$TAG" >/dev/null 2>&1; then
  echo "Unknown version: $TAG"
  echo "Available versions:"; git tag -l | sort -V
  exit 1
fi

# Restore only the deployed site files from the chosen version.
git checkout "$TAG" -- index.html media fonts robots.txt .nojekyll
git commit -am "Rollback deck to $TAG"
git push origin main

echo "Live deck rolled back to $TAG. GitHub Pages updates within about a minute."
