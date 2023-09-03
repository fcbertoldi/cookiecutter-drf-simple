build-venv:
	pew new -p=python3.10 -a . -r requirements.txt {{cookiecutter.project_slug}}


lock: requirements.txt


sync:
	pip-sync requirements.txt


%.txt: %.in
	pip-compile --generate-hashes --output-file $@ $<
