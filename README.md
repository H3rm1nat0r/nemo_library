# NEMO Library

This library helps you with access to NEMO APIs

# Installation

pip install nemo_library

# configuration

please create a file "config.ini". This is an example for the content:
```
[nemo_library]
nemo_url = https://enter.nemo-ai.com
userid = <your userid>
password = <your password>
```

# usage

```python
from nemo_library import NemoLibrary

nl = NemoLibrary()
nl.UploadFile(filename="test.csv")
nl.LoadReport(report_guid="b82cfed8-81a7-44e0-b3da-c76454540697")
```

## LoadReport method

This methode takes 1 parameter, the report_guid. You can find "your" guid in NEMO meta data. Just open the definition of the report in meta data and copy the GUID from your browser URL.

The report "(SAMPLE) Replenishment Time Analysis Purchased Parts" for example has this URL: https://enter.nemo-ai.com/nemo/metadata/report/b82cfed8-81a7-44e0-b3da-c76454540697 and thus the GUID you need is then "b82cfed8-81a7-44e0-b3da-c76454540697"

# Contributions

Contributions are welcome! If you would like to suggest improvements or have found a bug, please open an issue or submit a pull request.

# License

This project is released under the Unlicense. You can find the full text of the Unlicense in the [UNLICENSE](UNLICENSE) file. This means that the code is released into the public domain, and you are free to use, modify, distribute, and do whatever you want with it, without any restrictions or requirements.
