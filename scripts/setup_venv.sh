#!/usr/bin/env bash
set -e
python3 -m venv .venv
source .venv/bin/activate
python -m pip install --upgrade pip
pip install -r requirements.txt
python -m ipykernel install --user --name ai-ml-90day --display-name "ai-ml-90day"
echo "✅ Virtual env ready. Activate with: source .venv/bin/activate"