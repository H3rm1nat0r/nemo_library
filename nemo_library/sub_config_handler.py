import configparser

class ConfigHandler:
    def __init__ (self,nemo_url=None,tenant=None,userid=None,password=None,environment=None,config_file="config.ini"):
        self.config = configparser.ConfigParser()
        self.config.read("config.ini")
        self.nemo_url = self.config["nemo_library"]["nemo_url"]
        self.tenant = self.config["nemo_library"]["tenant"]
        self.userid = self.config["nemo_library"]["userid"]
        self.password = self.config["nemo_library"]["password"]
        self.environment = self.config["nemo_library"]["environment"]
        self.cognito_authflow = "USER_PASSWORD_AUTH"
        