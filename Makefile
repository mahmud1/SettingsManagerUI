.PHONY:


### linting
clean-lint:
	@echo "Cleaning test files..."
	rm -rf ./tests/linting

lint:
	@echo "Running linting..."
	mkdir -p ./tests/linting
	flake8 --config .flake8 . tests > ./tests/linting/flake8.log || \
		(cat ./tests/linting/flake8.log && exit 1)
	pycodestyle --config .pycodestyle . > ./tests/linting/pycodestyle.log || \
		(cat ./tests/linting/pycodestyle.log && exit 1)
	pylint --rcfile=.pylintrc . > ./tests/linting/pylint.log || \
		(cat ./tests/linting/pylint.log && exit 1)
