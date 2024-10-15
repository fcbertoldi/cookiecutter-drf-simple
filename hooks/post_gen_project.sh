#!/bin/sh
set -e

make build-venv
make lock
make sync
