#!/usr/bin/env bash
set -euo pipefail

msg="${1:-}"
if [ -z "$msg" ]; then
  echo 'Usage: bash scripts/git_ship.sh "feat(week01): add expense tracker"'
  exit 1
fi

# optional: run pre-commit if installed
if command -v pre-commit >/dev/null 2>&1; then
  pre-commit run --all-files || true
fi

# tests & lint (best-effort)
bash scripts/run_tests.sh || true
make lint || true

# stage, commit, push
git add -A
git commit -m "$msg" || echo "Nothing to commit."
current_branch="$(git rev-parse --abbrev-ref HEAD)"
git push -u origin "$current_branch" || echo "⚠️ Push failed. Did you set the remote?"
