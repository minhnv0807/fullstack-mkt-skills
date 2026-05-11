# Global Edition — Skills (`skills/en/`)

> **Status:** 🚧 In active translation. Frameworks transfer universally; benchmarks and channels need adaptation.

This directory holds the **English-language Global Edition** of skills, with USD-based benchmarks and global channels (Shopify, Klaviyo, Meta US, Pinterest, LinkedIn).

The original **Vietnam Edition** lives in [`../vi/`](../vi/) — it remains the canonical source while the Global Edition catches up.

---

## Translation Status

Skills are prioritized by **how much localization they need**. Framework-heavy skills (universal methodology) translate fast. Channel-specific skills need rewriting for Shopify/Klaviyo/etc.

### 🟢 Priority 1 — Framework-only (Q2 2026)

These work in any market with minimal changes — pure methodology.

| # | Skill | VN Source | EN Target | Status |
|---|---|---|---|---|
| `02` | Campaign Brief | [`../vi/02-brief-chien-dich.md`](../vi/02-brief-chien-dich.md) | `02-campaign-brief.md` | 🟡 In progress |
| `09` | Customer Insight | [`../vi/09-insight-khach-hang.md`](../vi/09-insight-khach-hang.md) | `09-customer-insight.md` | 🟡 In progress |
| `10` | Reverse KPI Math | [`../vi/10-tinh-kpi-nguoc.md`](../vi/10-tinh-kpi-nguoc.md) | `10-reverse-kpi.md` | 🟡 In progress |

### 🟡 Priority 2 — Framework + light adaptation (Q3 2026)

These need benchmark numbers updated to global and minor channel mentions changed.

| # | Skill | Notes |
|---|---|---|
| `00` | Marketing Plan (master) | Adapt budget examples to USD, swap VN channels for global |
| `01` | Content Calendar | Adapt platform mix (TikTok→TikTok global, swap Zalo OA for Email/SMS) |
| `03` | Performance Diagnosis | Update benchmark numbers to USD/global medians |
| `04` | Video Script | Platform-agnostic mostly; trim VN-specific cultural references |
| `05` | Ad Copy | Funnel framework universal; replace VN tone examples with EN |
| `07` | Marketing Report | Report structure universal; benchmark numbers need update |
| `08` | Competitor Research | Mostly universal; adapt platform/tool list |

### 🔴 Priority 3 — Heavy channel rewrite (Q3–Q4 2026)

These are deeply tied to Vietnam-specific channels — need substantial rewrites, not translation.

| # | Skill | What needs rewriting |
|---|---|---|
| `06` | UGC/EGC Brief | Adapt legal templates to US/EU (FTC disclosure, GDPR), payment to USD |
| `11` | Channel Setup | Replace 7 VN channels (Zalo, Shopee VN, Lazada VN, TikTok Shop VN, FB VN, Google Ads VN, Tiki) with: Shopify/WooCommerce, Klaviyo, Meta US, Google Ads US, TikTok Ads global, Pinterest, YouTube |
| `12` | Landing Page Brief | Adapt conversion patterns to US/EU buying culture; legal disclaimers |
| `13` | Data Analysis | Adapt to GA4 US, Shopify Analytics, Klaviyo flows, Meta Ads Manager US |
| `14` | Email Marketing | Adapt to Klaviyo/Mailchimp ecosystem, GDPR/CAN-SPAM compliance, US/EU deliverability |
| `15` | Social Listening | Adapt to US/EU tools (Brandwatch, Mention, Sprout) vs VN-focused ones |

---

## Translation Guidelines

### Translate literally
- ✅ Frameworks (5 Whys, JTBD, RACI, persona templates, funnel stages)
- ✅ Methodology (information gathering protocol, output structure)
- ✅ Quality checklists
- ✅ Cross-reference logic

### Adapt, NOT translate
- 🔄 **Currency** — VND → USD with regional context (don't just convert at exchange rate)
- 🔄 **Benchmarks** — VN numbers → global numbers from [`../../references/benchmarks-global.md`](../../references/benchmarks-global.md)
- 🔄 **Channels** — Zalo OA → Email/SMS/Push; Shopee → Shopify/Amazon; TikTok Shop VN → TikTok Shop US/UK
- 🔄 **Examples** — Spa VN → DTC skincare US; F&B VN → DTC food brand; fashion VN → Shopify fashion store
- 🔄 **Compliance** — VN ad law → FTC, GDPR, CCPA references
- 🔄 **Cultural context** — VN buying behavior (heavy COD, Zalo trust) → US/EU (credit card, review-driven)

### Frontmatter must include

```yaml
edition: global
language: en
currency: USD
markets: [us, eu, sea, global]
```

See [`_TEMPLATE.md`](./_TEMPLATE.md) for full frontmatter standard.

---

## Contributing a Translation

1. Pick a skill from **Priority 1** or **Priority 2** above
2. Fork the repo
3. Copy VN source from `skills/vi/{filename}.md` to `skills/en/{english-filename}.md`
4. Update frontmatter per [`_TEMPLATE.md`](./_TEMPLATE.md)
5. Translate methodology literally; adapt examples/benchmarks/channels per guidelines above
6. Reference [`../../references/benchmarks-global.md`](../../references/benchmarks-global.md) for all USD numbers
7. Open a PR

We review and merge within 1 week if quality checks pass.

---

## Not yet in scope

- Translations to ES/FR/JA/KO/ZH — come after EN is complete (Q4 2026+)
- Region-specific editions (e.g., `skills/en-us/` vs `skills/en-uk/`) — single EN edition for now, `markets:` frontmatter handles variation
- Industry-vertical specializations — those go in `examples/` instead

---

**Maintainer:** OPA — Over Powers Agency
**Translation lead:** [@minhnv0807](https://github.com/minhnv0807)
**Target completion:** Q4 2026
