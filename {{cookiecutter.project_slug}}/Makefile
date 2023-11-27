VENV_NAME = {{cookiecutter.project_slug}}

build-venv:
	pew new -p=python3.10 -a . -r requirements.txt $(VENV_NAME)


lock: requirements.txt


sync:
	pew in $(VENV_NAME) pip-sync requirements.txt


%.txt: %.in
	pew in $(VENV_NAME) pip-compile --generate-hashes --output-file $@ $<
