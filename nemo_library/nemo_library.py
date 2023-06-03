import configparser
import json
import requests
import pandas as pd

from nemo_library.symbols import COGNITO_APPCLIENTID, COGNITO_AUTHFLOW, COGNITO_URL, ENDPOINT_URL_REPORT_RESULT

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

    def LoadReport(self,report_guid,max_pages=None):

        print(f"Loading report: {report_guid}")

        token = self._login()
        headers = {
            'accept': 'application/json',
            'Content-Type': 'application/json',
            'Authorization': f'Bearer {token}'
        }

        page = 0
        result = pd.DataFrame()

        while (True):

            page += 1

            print("loading page:", page)

            # INIT REPORT PAYLOAD (REQUEST BODY)
            report_params = {
                "report_id" : report_guid,
                "page" : page
            }

            response_report = requests.post(
                self._nemo_url_ + ENDPOINT_URL_REPORT_RESULT, headers=headers, json=report_params)

            if response_report.status_code != 200:
                raise Exception(
                    f"request failed. Status: {response_report.status_code}, error: {response_report.text}")

            # Parse REPORT Respone
            resultjs = json.loads(response_report.text)
            records = resultjs["records"]

            df = pd.json_normalize(records)
            if page == 1:
                result = df
            else:
                result = pd.concat([result, df], ignore_index=True)

            if resultjs["max_page"] <= page:
                break
        
            if not max_pages is None and max_pages <= page:
                break

        return result