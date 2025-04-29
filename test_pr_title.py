import os
from regex_verif import validate_string


def test_pr_title_format():
    pr_title = os.environ.get("PR_TITLE", "")
    assert pr_title, "❌ PR_TITLE non fourni."
    assert validate_string(
        pr_title
    ), f"❌ Le titre de la PR n'est pas au bon format : '{pr_title}'"
