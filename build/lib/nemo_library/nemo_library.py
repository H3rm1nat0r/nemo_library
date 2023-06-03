import configparser
import json
import requests

# GLOBAL VARS
COGNITO_URL = 'https://cognito-idp.eu-central-1.amazonaws.com/eu-central-1_1oayObkcF'
COGNITO_APPCLIENTID = '8t32vcmmdvmva4qvb79gpfhdn'
COGNITO_AUTHFLOW = 'USER_PASSWORD_AUTH'

NEMO_URL = "https://enter.nemo-ai.com"
ENDPOINT_URL_REPORT_RESULT = NEMO_URL + "/api/nemo-report/report_results"

FILE_UPLOAD_CHUNK_SIZE = 5 * 1024 * 1024  # 5MB
ENDPOINT_URL_PROJECTS = NEMO_URL + "/api/nemo-projects/projects"
ENDPOINT_URL_PROJECT_FILE_RE_UPLOAD_INITIALIZE = NEMO_URL + \
    "/api/nemo-projects/file-re-upload/initialize"
ENDPOINT_URL_PROJECT_FILE_RE_UPLOAD_KEEP_ALIVE = NEMO_URL + \
    "/api/nemo-projects/projects/{projectId}/upload/{uploadId}/keep-alive"
ENDPOINT_URL_PROJECT_FILE_RE_UPLOAD_FINALIZE = NEMO_URL + \
    "/api/nemo-projects/file-re-upload/finalize"

ENDPOINT_URL_PROJECT_FILE_RE_UPLOAD_ABORT = NEMO_URL + \
    "/api/nemo-projects/file-re-upload/abort"


class NemoLibrary:

    @staticmethod
    def _login():

        config = configparser.ConfigParser()
        config.read('config.ini')
        userid = config['Cognito']['userid']
        password = config['Cognito']['password']

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
