.PHONY: deps test

dep:
	pip install -r requirements.txt; \
		pip install -r test_requirements.txt

		## te 2 komendy pozwolą nam na uruchomienie aplikacji poprzez wywołanie polecenia make run i na uruchomienie testów poleceniem make test:
run:
	python main.py

test:
	PYTHONPATH=. py.test

test_verbose:
	PYTHONPATH=. py.test --verbose -s

lint:
	flake8 hello_world test
