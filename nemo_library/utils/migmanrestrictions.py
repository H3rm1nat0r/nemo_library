from dataclasses import dataclass


@dataclass
class MigmanRestrictions:
    """
    Represents a migman restriction
    """

    project: str
    mandatoryfields: list[str]
    uniquefields: list[str]


def get_migman_restriction(project: str) -> MigmanRestrictions:
    """
    Returns a list of migman restrictions
    """
    if project == "Customers":
        return MigmanRestrictions(
            project="Customers",
            mandatoryfields=[
                "S_Kunde.Kunde (001)",
                "S_Adresse.Name1 (003)",
                "S_Adresse.Staat (004)",
                "S_Adresse.Ort (005)",
            ],
            uniquefields=[
                "S_Kunde.Kunde (001)",
            ],
        )
    elif project == "Suppliers":
        return MigmanRestrictions(
            project="Suppliers",
            mandatoryfields=[
                "S_Lieferant.Lieferant (001)",
                "S_Adresse.Name1 (003)",
                "S_Adresse.Staat (004)",
                "S_Adresse.Ort (005)",
            ],
            uniquefields=[
                "S_Lieferant.Lieferant (001)",
            ],
        )
    elif project == "Parts":
        return MigmanRestrictions(
            project="Parts",
            mandatoryfields=[
                "S_Artikel.Artikel (001)",
            ],
            uniquefields=[
                "S_Artikel.Artikel (001)",
            ],
        )
    elif project == "Features (Assignments)":
        return MigmanRestrictions(
            project="Features (Assignments)",
            mandatoryfields=[
                "BS_Zuord.SMArt (001)",
                "BS_Zuord.SMLeiste (002)",
                "BS_Zuord.Merkmal (003)",
                "BS_Zuord.Auspr (004)",
            ],
            uniquefields=[
            ],
        )
    return None
