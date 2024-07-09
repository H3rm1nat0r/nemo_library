import configparser
import requests
import json

def connection_get_headers():
    """
    Retrieve headers for authentication and API requests.

    This function gets the authentication tokens using `connection_get_tokens`
    and prepares the headers needed for API requests.

    Returns:
        dict: A dictionary containing headers with the authorization token,
              content type, API version, and refresh token.
    """
    tokens = connection_get_tokens()
    headers = {
        "accept": "application/json",
        "Content-Type": "application/json",
        "Authorization": f"Bearer {tokens[0]}",
        "refresh-token": tokens[2],
        "api-version": "1.0",
    }
    return headers

def connection_get_nemo_url():
    """
    Retrieve the Nemo URL from the configuration file.

    This function reads the `config.ini` file and retrieves the Nemo URL 
    specified under the `nemo_library` section.

    Returns:
        str: The Nemo URL.
    """
    config = configparser.ConfigParser()
    config.read("config.ini")
    return config["nemo_library"]["nemo_url"]

def connection_get_tenant():
    """
    Retrieve the tenant information from the configuration file.

    This function reads the `config.ini` file and retrieves the tenant 
    specified under the `nemo_library` section.

    Returns:
        str: The tenant information.
    """
    config = configparser.ConfigParser()
    config.read("config.ini")
    return config["nemo_library"]["tenant"]

def connection_get_userid():
    """
    Retrieve the user ID from the configuration file.

    This function reads the `config.ini` file and retrieves the user ID 
    specified under the `nemo_library` section.

    Returns:
        str: The user ID.
    """
    config = configparser.ConfigParser()
    config.read("config.ini")
    return config["nemo_library"]["userid"]

def connection_get_password():
    """
    Retrieve the password from the configuration file.

    This function reads the `config.ini` file and retrieves the password 
    specified under the `nemo_library` section.

    Returns:
        str: The password.
    """
    config = configparser.ConfigParser()
    config.read("config.ini")
    return config["nemo_library"]["password"]

def connection_get_environment():
    """
    Retrieve the environment information from the configuration file.

    This function reads the `config.ini` file and retrieves the environment 
    specified under the `nemo_library` section.

    Returns:
        str: The environment information.
    """
    config = configparser.ConfigParser()
    config.read("config.ini")
    return config["nemo_library"]["environment"]

def connection_get_cognito_authflow():
    """
    Retrieve the Cognito authentication flow type.

    This function returns the type of Cognito authentication flow to be used.

    Returns:
        str: The Cognito authentication flow type.
    """
    return "USER_PASSWORD_AUTH"

def connection_get_cognito_url():
    """
    Retrieve the Cognito URL based on the current environment.

    This function obtains the current environment using the `connection_get_environment`
    function and returns the corresponding Cognito URL. If the environment is
    not recognized, an exception is raised.

    Returns:
        str: The Cognito URL for the current environment.

    Raises:
        Exception: If the environment is unknown.
    """
    env = connection_get_environment()
    appclient_ids = {
        "demo": "https://cognito-idp.eu-central-1.amazonaws.com/eu-central-1_1ZbUITj21",
        "dev": "https://cognito-idp.eu-central-1.amazonaws.com/eu-central-1_778axETqE",
        "prod": "https://cognito-idp.eu-central-1.amazonaws.com/eu-central-1_1oayObkcF",
        "challenge": "https://cognito-idp.eu-central-1.amazonaws.com/eu-central-1_U2V9y0lzx",
    }
    
    try:
        return appclient_ids[env]
    except KeyError:
        raise Exception(f"unknown environment '{env}' provided")

def connection_get_cognito_appclientid():
    """
    Retrieve the Cognito App Client ID based on the current environment.

    This function obtains the current environment using the `connection_get_environment`
    function and returns the corresponding Cognito App Client ID. If the environment is
    not recognized, an exception is raised.

    Returns:
        str: The Cognito App Client ID for the current environment.

    Raises:
        Exception: If the environment is unknown.
    """
    env = connection_get_environment()
    appclient_ids = {
        "demo": "7tvfugcnunac7id3ebgns6n66u",
        "dev": "4lr89aas81m844o0admv3pfcrp",
        "prod": "8t32vcmmdvmva4qvb79gpfhdn",
        "challenge": "43lq8ej98uuo8hvnoi1g880onp",
    }
    
    try:
        return appclient_ids[env]
    except KeyError:
        raise Exception(f"unknown environment '{env}' provided")

def connection_get_tokens():
    """
    Retrieve authentication tokens from the Cognito service.

    This function performs a login operation using Cognito and retrieves
    the authentication tokens including IdToken, AccessToken, and RefreshToken.

    Returns:
        tuple: A tuple containing the IdToken, AccessToken, and optionally the RefreshToken.

    Raises:
        Exception: If the request to the Cognito service fails.
    """
    headers = {
        "X-Amz-Target": "AWSCognitoIdentityProviderService.InitiateAuth",
        "Content-Type": "application/x-amz-json-1.1",
    }

    authparams = {"USERNAME": connection_get_userid(), "PASSWORD": connection_get_password()}

    data = {
        "AuthParameters": authparams,
        "AuthFlow": connection_get_cognito_authflow(),
        "ClientId": connection_get_cognito_appclientid(),
    }

    # login and get token
    response_auth = requests.post(
        connection_get_cognito_url(), headers=headers, data=json.dumps(data)
    )
    if response_auth.status_code != 200:
        raise Exception(
            f"request failed. Status: {response_auth.status_code}, error: {response_auth.text}"
        )
    tokens = json.loads(response_auth.text)
    id_token = tokens["AuthenticationResult"]["IdToken"]
    access_token = tokens["AuthenticationResult"]["AccessToken"]
    refresh_token = tokens["AuthenticationResult"].get(
        "RefreshToken"
    )  # Some flows might not return a RefreshToken

    return id_token, access_token, refresh_token    

if __name__ == "__main__":
    print(connection_get_headers())