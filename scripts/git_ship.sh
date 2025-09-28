#!/usr/bin/env bash
set -e

if [ -z "$1" ]; then
  echo "Usage: bash scripts/git_ship.sh "feat(week01): add expense tracker""
  exit 1
fi

# Optional: run pre-commit if installed
if command -v pre-commit >/dev/null 2>&1; then
  pre-commit run --all-files || true
fi

# Run tests & lint
bash scripts/run_tests.sh || true
make lint || true

# Stage changes
git add -A

# Commit
git commit -m "$1" || echo "Nothing to commit."

# Push
CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
git push -u origin "$CURRENT_BRANCH" || echo "⚠️ Push failed. Did you set the remote?"