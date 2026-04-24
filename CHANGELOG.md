# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [Unreleased]

### Added
- Dynamic badges (stars, issues, last commit, contributors) in README
- CHANGELOG.md following Keep a Changelog format
- CODE_OF_CONDUCT.md (Contributor Covenant 2.1)
- SECURITY.md with vulnerability disclosure policy
- `.github/FUNDING.yml` sponsor button
- `.github/workflows/validate.yml` — CI auto-validates PRs
- `docs/getting-started.md` — full onboarding guide
- `docs/best-practices.md` — skill authoring & usage patterns
- GitHub topics (20 SEO-optimized tags)
- SEO-optimized English repo description

---

## [2.0.0] — 2026-04-24

### BREAKING
- Restructured skills: `skills/name.md` → `skills/name/SKILL.md`
- Frontmatter `name` field now matches directory (includes numeric prefix)
- Compliant with [Agent Skills Spec](https://agentskills.io)

### Added
- **Foundation skill:** `product-marketing-context` — all skills read `.agents/product-marketing-context.md` first. Saves ~70% time per conversation.
- **Plugin manifest:** `.claude-plugin/marketplace.json` — install via `/plugin install minhnv0807/fullstack-mkt-skills`
- `AGENTS.md` — universal agent compatibility spec
- `VERSIONS.md` — per-skill version tracking
- `validate-skills.sh` + `validate-skills.ps1` — spec validators
- `CONTRIBUTING.md` — contribution guide
- `.github/ISSUE_TEMPLATE/` + `.github/PULL_REQUEST_TEMPLATE/`
- Bilingual docs: `README.md` (English) + `README.vi.md` (Vietnamese)

### New Skills (4)
- `16-marketing-psychology` — 7 Cialdini principles + Vietnam cultural adaptation
- `17-pricing-strategy` — Pricing tiers, charm/anchor/bundle pricing, break-even analysis
- `18-referral-program` — 1-way/2-way/affiliate models + VN channels + anti-fraud
- `19-ab-test-setup` — Sample size calculation + 8 elements to test + statistical significance

### Changed
- All 16 existing skills bumped from 1.0.0 → 2.0.0
- README redesigned with plugin install, foundation skill section, 20-skill table
- Project structure in README reflects new folder-per-skill layout

### Credits
- Inspired by [coreyhaines31/marketingskills](https://github.com/coreyhaines31/marketingskills) — foundation skill concept + plugin spec structure

---

## [1.1.0] — 2026-04-23

### Changed
- Rebrand: "Run By Linh" → "Over Powers Agency"
- Redesigned README with badges, diagrams, visual tables
- Added star history chart

---

## [1.0.0] — 2026-04-23

### Added
- Initial release with 16 marketing skills:
  - **Strategy (4):** 00-ke-hoach-mkt, 02-brief-chien-dich, 08-nghien-cuu-doi-thu, 09-insight-khach-hang
  - **Content (5):** 01-lich-noi-dung, 04-script-video, 05-copy-quang-cao, 06-brief-ugc-egc, 15-social-listening
  - **Performance (3):** 03-danh-gia-hieu-suat, 07-bao-cao-marketing, 10-tinh-kpi-nguoc
  - **Operations (4):** 11-thiet-lap-kenh, 12-brief-landing-page, 13-phan-tich-du-lieu, 14-email-marketing
- 5 reference files (benchmarks, channel system, KPI formulas, content angles, tool stack)
- 3 workflows (campaign-launch, monthly-cycle, content-production)
- 4 agent personas (mkt-strategist, content-producer, performance-analyst, channel-operator)
- 2 example outputs (spa-beauty, ecommerce-fashion)
- `install.sh` (macOS/Linux) + `install.ps1` (Windows)
- MIT License

---

## Version Guide

- **Major (X.0.0):** Breaking changes (frontmatter spec, folder structure, removed skills)
- **Minor (1.X.0):** New skill added, new major feature
- **Patch (1.0.X):** Bug fixes, benchmark updates, syntax corrections

[Unreleased]: https://github.com/minhnv0807/fullstack-mkt-skills/compare/v2.0.0...HEAD
[2.0.0]: https://github.com/minhnv0807/fullstack-mkt-skills/releases/tag/v2.0.0
[1.1.0]: https://github.com/minhnv0807/fullstack-mkt-skills/compare/v1.0.0...v1.1.0
[1.0.0]: https://github.com/minhnv0807/fullstack-mkt-skills/releases/tag/v1.0.0
