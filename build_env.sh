#!/bin/sh
git pull
source .venv/bin/activate
python -m pip install --upgrade pip
pip install -r requirements.txt
pip freeze | awk -F "==" '{ print $1 }' > requirements.txt 
