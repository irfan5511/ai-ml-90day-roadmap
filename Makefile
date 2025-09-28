.PHONY: install test lint run-app

install:
	python -m pip install --upgrade pip
	pip install -r requirements.txt

test:
	pytest -q

lint:
	python3 -m compileall src

run-app:
	streamlit run project_templates/STREAMLIT_APP_TEMPLATE.py
