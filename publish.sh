#!/bin/bash
set -e  # Stops the script if any command fails
set -x  # Prints each command before executing it (Debugging)

# Initialize and activate Conda environment
eval "$(conda shell.bash hook)"
conda activate nemo_library

# Ensure the git repository is up to date
git pull

# Upgrade pip and dependencies
python -m pip install --upgrade pip
pip install --upgrade -r requirements.txt

# Update the requirements.txt file
pip freeze | awk -F "==" '{ print $1 }' > requirements.txt 

# Remove old distribution artifacts
rm -rf build dist *.egg-info

# Convert README.md to README.rst
pandoc -f markdown -t rst -o README.rst README.md

# Create the distribution
python -m build

# Configure Twine and upload the package
source config_twine.sh
twine upload dist/* -u "$USER" -p "$PWD" --verbose