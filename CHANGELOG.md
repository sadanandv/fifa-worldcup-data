# Changelog

All notable changes to this project are documented here.
Format follows [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).
This project adheres to [Semantic Versioning](https://semver.org/).

> **Fork origin:** This repository was forked from
> [jfjelstul/worldcup](https://github.com/jfjelstul/worldcup) at v1.2.0
> on 2026-06-22 by Sadanand Venkataraman.

---

## [Unreleased]

## [1.3.0] — 2026-06-22

### Added
- `LICENSE` file (CC-BY-SA 4.0) with dual-author preamble attributing both
  Joshua C. Fjelstul, Ph.D. (original author) and Sadanand Venkataraman (fork maintainer)
- `CHANGELOG.md` (this file) — documents all changes relative to the original repository
- `CONTRIBUTING.md` — guide covering data-error reporting, feature suggestions,
  PR submission process, code style expectations, and CC-BY-SA contribution agreement
- `CITATION.cff` — GitHub-native citation file; Sadanand Venkataraman as author,
  Joshua C. Fjelstul, Ph.D. as reference
- `.github/ISSUE_TEMPLATE/data-error.md` — structured template for reporting data errors
- `.github/ISSUE_TEMPLATE/enhancement.md` — structured template for enhancement requests
- `.github/PULL_REQUEST_TEMPLATE.md` — PR checklist including codebook and attribution checks
- `.github/workflows/r-cmd-check.yml` — CI: R CMD CHECK on push and PR to main
- `.github/workflows/data-validate.yml` — CI: referential integrity checks on CSV changes

### Fixed
- `DESCRIPTION` URL corrected (`fjelstul` → `sadanandv/fifa-worldcup-data`)
- `DESCRIPTION` men's tournament count corrected (21 → 22, years 1930–2022)
- `DESCRIPTION` authorship updated (Sadanand Venkataraman as `aut/cre`,
  Joshua C. Fjelstul, Ph.D. as `ctb`)
- `DESCRIPTION` Title and Description fields rewritten
- `RoxygenNote` version updated
- `NAMESPACE` wildcard `exportPattern()` replaced with 27 explicit `export()` calls
- `README.md` typo corrected: "Citating" → "Citing"

### Changed
- `README.md` rewritten: added "This Fork", "Attribution", and "Modifications" sections;
  updated install instructions to point to `sadanandv/fifa-worldcup-data`;
  added dual-citation block; added pointer to companion Python package