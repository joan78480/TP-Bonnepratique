import re

# Liste des mots-clés autorisés
keywords = ["feat", "fix", "docs", "ops", "test", "refactor", "perf", "style", "upgrade", "scaffold"]

# Construction dynamique de la partie "mot-clé" de la regex
keywords_pattern = "|".join(keywords)

# Définition de la regex (sans espace entre mot-clé et parenthèse)
pattern = rf"^[A-Z]+-\d+\s(?:{keywords_pattern})\([^\)]+\).*$"

# Fonction de validation
def validate_string(s):
    if re.match(pattern, s):
        return True
    else:
        return False
