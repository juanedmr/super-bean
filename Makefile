install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	#python -m pytest -vv test_application.py

lint:
	pylint --disable=R,C application.py

deploy:
	echo "Deploying app"
	unset $(git rev-parse --local-env-vars)
	eb deploy super-bean-env

all: install lint test 