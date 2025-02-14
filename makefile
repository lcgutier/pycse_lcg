flake8:
	pre-commit run flake8

black:
	pre-commit run black

pylint:
	#pre-commit run pylint
	pylint --rcfile=setup.cfg pycse

test:
	nosetests

clean:
	rm -fr build dist

upload:
	python setup.py sdist bdist_wheel
	twine upload dist/*
