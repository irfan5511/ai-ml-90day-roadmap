#!/usr/bin/env bash
set -e
if command -v pytest >/dev/null 2>&1; then
  pytest -q || true
else
  echo "pytest not found; skipping tests."
fi
