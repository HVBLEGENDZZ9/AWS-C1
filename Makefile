install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

format:
	black *.py

lint:
	pylint --disable=R,C t1.py

test:
	python -m pytest -vv --cov=t1 t1_test.py

all: install lint format test