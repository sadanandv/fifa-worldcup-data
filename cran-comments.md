# CRAN Submission Comments — fifaworldcupdata v1.3.0

## R CMD CHECK results (local, R 4.6.0, Windows 11 x64)

Status: 0 ERRORs | 0 WARNINGs | 6 NOTEs

---

## Notes — explanations

### NOTE 1 — CRAN incoming feasibility: New submission
Expected for a first submission. No action required.

### NOTE 2 — CRAN incoming feasibility: Non-FOSS license (CC BY-SA 4.0)
This package is a derivative of the Fjelstul World Cup Database, which is
published under CC-BY-SA 4.0. The share-alike clause requires this fork to
remain under the same license. Relicensing to a FOSS license is not legally
permitted. The LICENSE file contains the full CC-BY-SA 4.0 legal text.

### NOTE 3 — Hidden files and directories: .github
The .github/ directory contains GitHub Actions CI/CD workflow files
(r-cmd-check.yml, data-validate.yml) and issue/PR templates. These are
standard open-source project infrastructure files and are not relevant to
CRAN package functionality.

### NOTE 4 — Non-standard top-level files: CHANGELOG.md, CITATION.cff, CONTRIBUTING.md
These are standard open-source project files included for GitHub users:
- CHANGELOG.md: version history following Keep a Changelog format
- CITATION.cff: machine-readable citation metadata (GitHub/Zenodo standard)
- CONTRIBUTING.md: contributor guidelines
None of these affect package installation or runtime behaviour.

### NOTE 5 — CITATION file in non-standard place: CITATION.cff
CITATION.cff is the GitHub/Zenodo citation standard and is intentionally
placed at the repository root for discoverability by those platforms.
It is a different format from R's inst/CITATION and serves a different
purpose (cross-platform citation metadata, not R-specific citation).
An inst/CITATION file may be added in a future release for R-native
citation support.

### NOTE 6 — HTML Tidy not found
HTML Tidy is not installed in the local check environment. This NOTE does
not appear in CI (GitHub Actions Ubuntu runner has tidy available).

---

## Local PDF manual WARNING — not a package issue

On the local Windows/TinyTeX environment, `R CMD check --as-cran` produces:

  WARNING: checking PDF version of manual ... LaTeX errors when creating PDF version.
  OK:      checking PDF version of manual without index

The full PDF with index fails due to `makeindex` not being on PATH in
TinyTeX on Windows. The PDF without index builds successfully (OK).
All 29 Rd files validate cleanly (checking Rd files ... OK,
checking Rd contents ... OK). This WARNING does not appear in CI
(GitHub Actions Ubuntu runner with full TeX Live).

---

## Build notes

Package always built with:
  R CMD build --resave-data

This applies optimal compression to .RData files (xz/bzip2 as appropriate)
and suppresses the "significantly better compression" NOTE.

The R >= 3.5.0 dependency is required because the .RData files use
serialization format version 3, which is not readable by R < 3.5.0.
This is declared explicitly via `Depends: R (>= 3.5.0)` in DESCRIPTION.

---

## Test environments

- Local: R 4.6.0, Windows 11 x64 (x86_64-w64-mingw32)
- CI: GitHub Actions, ubuntu-latest, R release + R devel (r-cmd-check.yml)