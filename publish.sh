#!/bin/sh

# ensure proper python environment
source setup.sh

# convert README.md for pypi
pandoc -f markdown -t rst -o README.rst README.md

# prepare distribution using build (you need to install this tool if not already done)
python -m build

# upload distribution using twine
source config_twine.sh
twine upload dist/* -u "$USER" -p "$PWD" --verbose
