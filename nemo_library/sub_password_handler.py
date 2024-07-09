import sys
import keyring

class PasswordManager:
    def __init__(self, service_name, username):
        self.service_name = service_name
        self.username = username

    def set_password(self, password):
        """
        Speichert das Passwort im Credential Manager (Windows) oder im Keychain (macOS).
        
        Args:
            password (str): Das zu speichernde Passwort.
        """
        keyring.set_password(self.service_name, self.username, password)

    def get_password(self):
        """
        Ruft das Passwort aus dem Credential Manager (Windows) oder dem Keychain (macOS) ab.
        
        Returns:
            str: Das gespeicherte Passwort oder None, wenn kein Passwort gefunden wurde.
        """
        return keyring.get_password(self.service_name, self.username)


if __name__ == "__main__":
    # Beispielhafte Verwendung:
    service_name = "nemo_library"
    username = "schug_g_ca_proalpha"
    password = "vdcGz9CT3rX8uwhsLSdxGiDp5naP6kUF"

    pm = PasswordManager(service_name, username)

    # Passwort setzen
    pm.set_password(password)
    print(f"Passwort für Benutzer '{username}' im Dienst '{service_name}' wurde gespeichert.")

    # Passwort abrufen
    retrieved_password = pm.get_password()
    if retrieved_password:
        print(f"Das gespeicherte Passwort für Benutzer '{username}' ist: {retrieved_password}")
    else:
        print(f"Kein Passwort für Benutzer '{username}' im Dienst '{service_name}' gefunden.")