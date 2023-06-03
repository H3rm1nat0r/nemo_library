#!/bin/sh

# ensure newes sources
git pull

# bootstrap python
source .venv/bin/activate
python -m pip install --upgrade pip
pip install -r requirements.txt

# update requirements (sometimes, we forget to do this when we pip install something hot)
pip freeze | awk -F "==" '{ print $1 }' > requirements.txt 

# convert README.md for pypi
pandoc -f markdown -t rst -o README.rst README.md

# prepare distribution
python setup.py sdist bdist_wheel

# upload distribution
source config_twine.sh
twine upload dist/* -u "$USER" -p "$PWD"
