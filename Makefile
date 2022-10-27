install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv t1_test.py

format:
	black *.py


lint:
	pylint --disable=R,C t1.py

all: install lint test