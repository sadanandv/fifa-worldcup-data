# Contributing to fifa-worldcup-data

Thank you for your interest in contributing. This project is a maintained fork of the
[Fjelstul World Cup Database](https://github.com/jfjelstul/worldcup) by Joshua C. Fjelstul, Ph.D.,
extended and maintained by Sadanand Venkataraman. All contributions must comply with the
project license (CC-BY-SA 4.0) and the attribution requirements described below.

---

## Table of Contents

1. [How to Report a Data Error](#1-how-to-report-a-data-error)
2. [How to Suggest a New Feature](#2-how-to-suggest-a-new-feature)
3. [How to Submit a Data Correction PR](#3-how-to-submit-a-data-correction-pr)
4. [Code Style Expectations](#4-code-style-expectations)
5. [CC-BY-SA Contribution Agreement](#5-cc-by-sa-contribution-agreement)

---

## 1. How to Report a Data Error

Use the **Data Error** issue template on GitHub:
[New Data Error Issue](https://github.com/sadanandv/fifa-worldcup-data/issues/new?template=data-error.md)

Please provide all of the following. Issues missing required fields may be closed
without investigation.

| Field | Description |
|-------|-------------|
| **Dataset name** | Which table contains the error (e.g., `goals`, `matches`, `players`) |
| **Tournament year** | The World Cup year affected (e.g., `2022`, `2023`) |
| **Row identifier** | The primary key of the affected row (e.g., `match_id = M-2022-064`) |
| **Incorrect value** | The current (wrong) value in the dataset |
| **Correct value** | The correct value, with justification |
| **Wikipedia source URL** | The Wikipedia page that confirms the correct value |
| **Additional context** | Anything else that helps locate or verify the error |

**What counts as a reportable error:** wrong scoreline, incorrect player name or
nationality, wrong minute for a goal or booking, missing substitution, incorrect
referee assignment, or any factual discrepancy verifiable against Wikipedia.

**What is out of scope:** editorial disagreements about how events are categorised,
requests to add data not available on Wikipedia, or requests to change the schema.

---

## 2. How to Suggest a New Feature

Use the **Enhancement** issue template:
[New Enhancement Issue](https://github.com/sadanandv/fifa-worldcup-data/issues/new?template=enhancement.md)

Provide:

- A clear description of the enhancement and the problem it solves
- Which datasets would be affected or need to be created
- A reliable, citable data source for the new data
- Whether the enhancement requires a schema change (new columns or new table)
- Whether the enhancement is scoped to the R package (29-table core) or belongs
  in the companion Python package instead

> **Note:** The R package scope is permanently fixed at 29 tables (27 original +
> `var_interventions` + `in_match_penalties`). Requests for ratings, forecasting,
> weather, or any analytical layer belong in the Python package at
> [sadanandv/fifa-worldcup-data-python](https://github.com/sadanandv/fifa-worldcup-data-python).

---

## 3. How to Submit a Data Correction PR

For small, well-sourced factual corrections you are welcome to submit a pull request
directly rather than filing an issue first.

### Steps

1. **Fork** `sadanandv/fifa-worldcup-data` and create a branch named
   `fix/<short-description>` (e.g., `fix/goal-minute-2022-064`).

2. **Edit the source data** in `data-raw/` — never edit the compiled files in
   `data/` or `data-csv/` directly. The build scripts regenerate those from source.

3. **Verify your change** by running the relevant build script locally and confirming
   that the compiled output reflects your correction.

4. **Update the codebook** (`datasets.csv` / `variables.csv`) if your change affects
   row counts or adds/removes a field.

5. **Open a PR** against the `main` branch using the PR template. Your PR description
   must include:
   - The `match_id`, `goal_id`, `player_id`, or other primary key of the corrected row
   - The Wikipedia URL that supports the correction
   - Confirmation that all tests pass (`testthat` suite)
   - Confirmation that codebook row counts are updated if affected
   - Confirmation that CC-BY-SA attribution is intact throughout

6. **Do not** open a PR that modifies `LICENSE`, changes the license, removes
   attribution to Joshua C. Fjelstul, Ph.D., or adds Phase 5 content (ratings,
   weather, forecasts) to this repository. Such PRs will be closed without review.

### Commit message format

This project uses [Conventional Commits](https://www.conventionalcommits.org/):

```
data: correct goal minute for Messi in match M-2022-064
fix: remove duplicate player_id in players table
docs: update codebook row count for goals table
test: add referential integrity check for penalty_kicks
```

---

## 4. Code Style Expectations

### R

- Use the **tidyverse style guide**: <https://style.tidyverse.org/>
- Use the native pipe `|>` (not `%>%`) for all new code
- `snake_case` for all variable and function names
- Use `here::here()` for all file paths — never hardcode absolute paths
- Document all exported functions with `roxygen2`; run `roxygenise()` before committing
  any change to `R/`
- All R scripts in `data-raw/code/` must be **idempotent** — running them twice must
  produce identical output
- Tests live in `tests/testthat/` and use the `testthat` framework
- Run `R CMD CHECK --as-cran` before opening a PR; zero ERRORs and zero WARNINGs required

### Python (companion package only)

- Format with `black`; lint with `ruff` — both enforced in pre-commit hooks
- Type hints required on all public functions
- Docstrings in Google style
- Use `pathlib.Path` for all file paths — never hardcode strings
- Tests use `pytest`; target >90% coverage
- Build backend is `hatchling` via `pyproject.toml`

---

## 5. CC-BY-SA Contribution Agreement

This project is licensed under
[Creative Commons Attribution-ShareAlike 4.0 International (CC-BY-SA 4.0)](https://creativecommons.org/licenses/by-sa/4.0/).

By submitting a contribution (issue, pull request, or any other content) to this
repository, you agree that:

1. **Your contribution is your own original work** or is derived from sources
   compatible with CC-BY-SA 4.0.

2. **You license your contribution under CC-BY-SA 4.0**, allowing it to be freely
   used, shared, and adapted provided attribution is given and derivative works are
   shared under the same license.

3. **You will not submit content that removes or obscures attribution** to
   Joshua C. Fjelstul, Ph.D., the original author of the Fjelstul World Cup Database.
   The attribution string
   `Original database © 2023 Joshua C. Fjelstul, Ph.D. | https://github.com/jfjelstul/worldcup`
   must remain present in all user-facing files.

4. **You understand that the project license cannot be changed.** No contribution
   may suggest, imply, or enact a relicense to MIT, Apache, or any other license.

If you are contributing on behalf of an institution or employer, you confirm that
you have the authority to agree to these terms on their behalf.

---

## Questions?

Open a [Discussion](https://github.com/sadanandv/fifa-worldcup-data/discussions) for
anything that does not fit the issue templates above.
