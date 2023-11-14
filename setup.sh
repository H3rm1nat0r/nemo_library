#!/bin/sh
git pull
source .venv/bin/activate
python -m pip install --upgrade pip
pip install --upgrade -r requirements.txt
# pip freeze > requirements.txt 
pip freeze | awk -F "==" '{ print $1 }' > requirements.txt 
