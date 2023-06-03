import configparser
import json
import requests

from nemo_library.symbols import COGNITO_APPCLIENTID, COGNITO_AUTHFLOW, COGNITO_URL

NEMO_URL = "https://enter.nemo-ai.com"

class NemoLibrary:

    #################################################################################################################################################################

    def __init__(self):

        config = configparser.ConfigParser()
        config.read('config.ini')
        self._userid_ = config['nemo_library']['userid']
        self._password_ = config['nemo_library']['password']
        self._nemo_url_ = config['nemo_library']['nemo_url']

        super().__init__()

    #################################################################################################################################################################

    def _login(self):

        headers = {
            'X-Amz-Target': 'AWSCognitoIdentityProviderService.InitiateAuth',
            'Content-Type': 'application/x-amz-json-1.1'
        }

        authparams = {
            'USERNAME': self._userid_,
            'PASSWORD': self._password_
        }

        data = {
            'AuthParameters': authparams,
            'AuthFlow': COGNITO_AUTHFLOW,
            'ClientId': COGNITO_APPCLIENTID
        }

        # login and get tokenb

        response_auth = requests.post(
            COGNITO_URL, headers=headers, data=json.dumps(data))
        if response_auth.status_code != 200:
            raise Exception(
                f"request failed. Status: {response_auth.status_code}, error: {response_auth.text}")
        tokens = json.loads(response_auth.text)
        return tokens["AuthenticationResult"]["IdToken"]

    #################################################################################################################################################################

    def UploadFile(self,filename):
        # Implementiere den Upload-Code hier
        print(f"Uploading file: {filename}")
        self._login()

    #################################################################################################################################################################

    def LoadReport(self,reportname):
        # Implementiere den Report-Lade-Code hier
        print(f"Loading report: {reportname}")
        self._login()
