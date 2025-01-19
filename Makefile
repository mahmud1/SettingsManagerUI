
lint:
	flake8 --config=.flake8 . > ./tests/linting/flake8.log || \
	    (cat ./tests/linting/flake8.log && exit 1)
	pycodestyle  --config=.pycodestyle . > ./tests/linting/pycodestyle.log || \
	    (cat ./tests/linting/pycodestyle.log && exit 1)
