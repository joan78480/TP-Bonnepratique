import re, sys

# Liste des mots-clés autorisés
keywords = [
    "feat",
    "fix",
    "docs",
    "ops",
    "test",
    "refactor",
    "perf",
    "style",
    "upgrade",
    "scaffold",
]

# Construction dynamique de la partie "mot-clé" de la regex
keywords_pattern = "|".join(keywords)

# Définition de la regex (sans espace entre mot-clé et parenthèse)
pattern = rf"^[A-Z]+-\d+\s(?:{keywords_pattern})\([^\)]+\).*$"


# Fonction de validation
def validate_string(s):
    return bool(re.match(pattern, s))


if __name__ == "__main__":
    if len(sys.argv) > 1:
        input_str = sys.argv[1]
        if validate_string(input_str):
            print("✔️ Titre valide.")
            sys.exit(0)
        else:
            print("❌ Titre invalide.")
            sys.exit(1)
    else:
        print("❌ Aucun titre fourni.")
        sys.exit(1)
