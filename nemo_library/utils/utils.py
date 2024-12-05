import re


def display_name(column: str,idx: int=None) -> str:
    if idx:
        return f"{column} ({idx:03})"
    else:
        return column

def internal_name(column: str,idx: int=None) -> str:
    return sanitized_name(display_name(column,idx))

def import_name(column: str,idx: int=None) -> str:
    return sanitized_name(display_name(column,idx))

def sanitized_name(displayName: str) -> str:
    return re.sub(r"[^a-z0-9_]", "_", displayName.lower()).strip()
