git pull
conda activate nemo_library
conda update --all -y
python --version
python -m pip install --upgrade pip
pip install --upgrade -r requirements.txt
# pip freeze > requirements.txt
pip freeze | ForEach-Object { ($_ -split "==")[0] -replace " @.*", "" } > requirements.txt
