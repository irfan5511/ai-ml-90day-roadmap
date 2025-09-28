# AI-ML 90-Day Roadmap 🚀

![CI](https://img.shields.io/github/actions/workflow/status/USER/REPO/ci.yml?label=CI)
![License](https://img.shields.io/badge/license-MIT-green)
![Python](https://img.shields.io/badge/python-3.11%2B-blue)


A production-ready repo scaffold to learn **Python → Data → ML → Deep Learning → Deployment** in 90 days — and build a portfolio that earns.

## Structure

```
ai-ml-90day-roadmap/
├─ docs/                 # Guides, reports, checklists
├─ notebooks/            # Jupyter experiments
├─ src/                  # Reusable Python packages
│  ├─ data/              # Load/make datasets
│  ├─ features/          # Feature engineering
│  ├─ models/            # Train/evaluate models
│  ├─ visualization/     # Plotting helpers
│  └─ app/               # Streamlit / FastAPI apps
├─ scripts/              # CLI scripts (setup, deploy, tests)
├─ tests/                # Unit tests
├─ data/{raw,processed}/ # Data folders (git-ignored)
├─ models/               # Saved models (git-ignored)
├─ reports/              # Reports & figures
├─ project_templates/    # Plug-and-play templates
└─ week_by_week/         # 12-week plan with tasks & links
```

## Getting Started

```bash
# 1) Create & activate venv
bash scripts/setup_venv.sh

# 2) Install dependencies
pip install -r requirements.txt

# 3) Launch Jupyter
jupyter lab

# 4) Run tests
bash scripts/run_tests.sh

# 5) Try a starter app
streamlit run project_templates/STREAMLIT_APP_TEMPLATE.py
```

## Tech Stack
- Python 3.11+, NumPy, Pandas, Scikit-learn, Matplotlib
- PyTorch / TensorFlow (choose one), Hugging Face (NLP)
- Streamlit (UI), FastAPI (API), Docker-ready
- PyTest for tests

## Roadmap
See `week_by_week/` for weekly tasks, datasets, and project briefs mapped to your 90-day plan.