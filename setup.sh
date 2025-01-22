#!/bin/bash
set -e

apt update
apt install python3.11 python3.11-venv

curl -sSL https://install.python-poetry.org | POETRY_HOME=/etc/poetry python3 -

echo 'export PATH="/etc/poetry/bin:$PATH"' >> ~/.bashrc
export PATH="/etc/poetry/bin:$PATH"
source ~/.bashrc

poetry config virtualenvs.in-project true
poetry config virtualenvs.create true

poetry install --no-root

source .venv/bin/activate
jupyter notebook --no-browser --port=8080 --ip=0.0.0.0 --allow-root --NotebookApp.token='' --NotebookApp.password=''