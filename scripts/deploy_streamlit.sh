#!/usr/bin/env bash
set -e
# Example deployment for Streamlit on Render/Streamlit Cloud
echo "Tip: For Streamlit Cloud, push this repo and set app entrypoint to project_templates/STREAMLIT_APP_TEMPLATE.py"
streamlit run project_templates/STREAMLIT_APP_TEMPLATE.py