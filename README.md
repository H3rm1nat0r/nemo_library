# NEMO Library

This library helps you with access to NEMO APIs

# Installation

pip install nemo_library

# configuration

please create a file "nemo_library_config.ini". This is an example for the content:
```
[nemo_library]
nemo_url = https://enter.nemo-ai.com
userid = <your userid>
password = <your password>
```

# usage

```python
from nemo_library import NemoLibrary

NemoLibrary.UploadFile(filename="test.csv")
NemoLibrary.LoadReport(reportname="21 MRR")
```

# Contributions

Contributions are welcome! If you would like to suggest improvements or have found a bug, please open an issue or submit a pull request.

# License

This project is released under the Unlicense. You can find the full text of the Unlicense in the [UNLICENSE](UNLICENSE) file. This means that the code is released into the public domain, and you are free to use, modify, distribute, and do whatever you want with it, without any restrictions or requirements.
