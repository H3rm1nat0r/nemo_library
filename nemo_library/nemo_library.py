import configparser
import json
import requests

from nemo_library.symbols import COGNITO_APPCLIENTID, COGNITO_AUTHFLOW, COGNITO_URL

NEMO_URL = "https://enter.nemo-ai.com"

class NemoLibrary:

    @staticmethod
    def _login():

        config = configparser.ConfigParser()
        config.read('config.ini')
        userid = config['nemo_library']['userid']
        password = config['nemo_library']['password']

        headers = {
            'X-Amz-Target': 'AWSCognitoIdentityProviderService.InitiateAuth',
            'Content-Type': 'application/x-amz-json-1.1'
        }

        authparams = {
            'USERNAME': userid,
            'PASSWORD': password
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

    @staticmethod
    def UploadFile(filename):
        # Implementiere den Upload-Code hier
        print(f"Uploading file: {filename}")
        NemoLibrary._login()

    @staticmethod
    def LoadReport(reportname):
        # Implementiere den Report-Lade-Code hier
        print(f"Loading report: {reportname}")
