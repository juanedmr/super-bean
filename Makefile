install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	#python -m pytest -vv test_application.py

lint:
	pylint --disable=R,C application.py

deploy:
	echo "Deploying app"
	eb use super-bean-env
	eb status super-bean-env
	eb deploy super-bean-env

all: install lint test 