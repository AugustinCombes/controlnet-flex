#!/bin/bash
set -e

curl -sSL https://install.python-poetry.org | POETRY_HOME=/etc/poetry python3 -
export PATH="/etc/poetry/bin:$PATH"
poetry install