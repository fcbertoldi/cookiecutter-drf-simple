VENV_NAME = {{cookiecutter.project_slug}}
UV_TOOL := $(shell command -v uv)

ifeq ($(UV_TOOL),)
	PIP := python -m pip
	PIP_COMPILE := pip-compile
	PIP_SYNC := pip-sync --pip-args "--no-deps"
else
	PIP := $(UV_TOOL) pip
	PIP_COMPILE := $(UV_TOOL) pip compile
	PIP_SYNC := $(UV_TOOL) pip sync
endif


build-venv:
	pew new -p=python3.10 -a . -r requirements.txt $(VENV_NAME)


lock: requirements.txt


sync:
	pew in $(VENV_NAME) $(PIP_SYNC) requirements.txt


%.txt: %.in
	pew in $(VENV_NAME) $(PIP_COMPILE) --generate-hashes --output-file $@ $<
