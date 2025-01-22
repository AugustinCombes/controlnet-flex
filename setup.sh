#!/bin/bash
set -e

apt update
apt install python3.11 python3.11-venv

curl -sSL https://install.python-poetry.org | POETRY_HOME=/etc/poetry python3 -

echo 'export PATH="/etc/poetry/bin:$PATH"' >> ~/.bashrc
export PATH="/etc/poetry/bin:$PATH"
source ~/.bashrc

poetry install