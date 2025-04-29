import re, sys

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
keywords_pattern = "|".join(keywords)
pattern = rf"^[A-Z]+-\d+\s(?:{keywords_pattern})\([^\)]+\).*$"


def validate_string(s):
    return bool(re.match(pattern, s))


validate_string(sys.argv[1])
