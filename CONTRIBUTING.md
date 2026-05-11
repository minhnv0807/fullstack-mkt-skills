# Contributing to AI Business Skills

Thank you for your interest. We welcome contributions across:

- 🌏 **Translations** — especially English (Global Edition), then ES/FR/JA/KO/ZH
- 📊 **Regional benchmarks** — any country/market with verified data sources
- 🛒 **Dropshipping skills** — for the upcoming Dropshipping module (Q2 2026)
- 🚀 **Personal branding skills** — for the upcoming Personal Branding module (Q3 2026)
- 🐛 **Bug fixes** — typos, broken links, outdated information
- 💡 **New skills** — must fill a clear gap and follow the v2.0 frontmatter standard

## Quick Start

```bash
# 1. Fork the repo on GitHub

# 2. Clone your fork
git clone https://github.com/YOUR-USERNAME/ai-business-skills.git
cd ai-business-skills

# 3. Create a branch
git checkout -b feature/your-skill-name

# 4. Use the template
cp skills/en/_TEMPLATE.md skills/en/your-skill-name.md
# Edit the new file following the v2.0 standard

# 5. Test in Claude Code or any AI tool
# Make sure the skill activates on its triggers and produces structured output

# 6. Commit
git add skills/en/your-skill-name.md
git commit -m "feat(skills): add your-skill-name (Global Edition)"

# 7. Push and open a Pull Request
git push origin feature/your-skill-name
```

## Skill Quality Standards

Every new skill must include:

- ✅ Frontmatter following v2.0 standard (see `skills/en/_TEMPLATE.md`)
- ✅ Clear `triggers:` list (3–7 trigger phrases matching user intent)
- ✅ Information-gathering protocol (max 4 questions)
- ✅ Structured output template (tables, not pure prose)
- ✅ Cross-references to related skills
- ✅ Quality checklist (built-in self-review)
- ✅ At least 1 example output (in `examples/` or inline)

## Translation Guidelines

When translating Vietnam Edition → Global Edition:

### Translate literally
- ✅ Frameworks (5 Whys, JTBD, RACI, persona templates, funnel stages)
- ✅ Methodology (question protocol, output structure, quality checklist)
- ✅ Cross-reference logic

### Adapt, don't translate
- 🔄 **Currency** — VND → USD with regional context (not just exchange rate; rebase to local purchasing power)
- 🔄 **Benchmarks** — Pull from `references/benchmarks-global.md` instead of literal VN numbers
- 🔄 **Channels** — Zalo OA → Email/SMS; Shopee VN → Shopify/Amazon; TikTok Shop VN → TikTok Shop US/UK
- 🔄 **Examples** — Spa VN → DTC skincare US; F&B VN → DTC food brand US/UK
- 🔄 **Compliance** — VN advertising law → FTC, GDPR, CCPA references
- 🔄 **Cultural context** — VN buying behavior (COD-heavy, Zalo trust) → US/EU (credit card, review-driven)

## Benchmark Contributions

If you add regional benchmarks (e.g., for a country not yet covered):

1. **Cite at least 2 independent sources** with publication dates
2. **Use medians, not averages** (unless explicitly noted otherwise)
3. **Specify date ranges** (e.g., "Q4 2025 data")
4. **Format consistently** with existing `references/benchmarks-*.md` files
5. **Include both "poor/average/good/excellent" bands** where applicable

## Pull Request Process

1. Update your branch with latest `master`
2. Ensure your PR description explains: what, why, testing done
3. Tag with relevant labels (`translation`, `new-skill`, `bug`, etc.)
4. We review within 1 week
5. Merged PRs get credit in `CONTRIBUTORS.md` and changelog

## Code of Conduct

Be kind. Be specific. Be useful. Disagree on technical merit, never on identity.

## Questions?

Open a [Discussion](https://github.com/minhnv0807/ai-business-skills/discussions) or reach out to [@minhnv0807](https://github.com/minhnv0807).
