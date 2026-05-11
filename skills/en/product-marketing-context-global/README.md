# Product Marketing Context — Global Foundation

> **Foundation skill for the global marketing cluster.**
> Creates `.agents/product-marketing-context-global.md` — the source-of-truth document every global marketing skill (00-29) reads before working.

---

## 4 Region Variants

| # | File | Best for | Primary currency |
|---|------|----------|------------------|
| 01 | `variants/01-us.md` | North America (USA, Canada) | USD ($) |
| 02 | `variants/02-eu.md` | European Union (UK, DE, FR, ES, IT, NL, etc.) | EUR (€) |
| 03 | `variants/03-sea.md` | Southeast Asia EXCEPT Vietnam (SG, MY, ID, TH, PH) | USD or local (SGD, MYR, IDR, THB) |
| 04 | `variants/04-latam.md` | Latin America (BR, MX, AR, CO, CL) | USD or local (BRL, MXN, ARS, COP) |

> Vietnam-only? Use `skills/product-marketing-context/` (the VN foundation), NOT this skill.

---

## Decision tree — pick a variant

```
Where is your PRIMARY market?
    |
    |-- USA / Canada
    |       |
    |       --> 01-us.md
    |
    |-- UK / DE / FR / ES / IT / NL / Nordics
    |       |
    |       --> 02-eu.md
    |
    |-- Singapore / Malaysia / Indonesia / Thailand / Philippines
    |       |
    |       --> 03-sea.md
    |
    |-- Brazil / Mexico / Argentina / Colombia / Chile
    |       |
    |       --> 04-latam.md
    |
    |-- Vietnam only
    |       |
    |       --> Use `product-marketing-context` instead
    |
    |-- Multi-region (>2 regions roughly equal)
            |
            --> Pick the LARGEST market as primary; note secondary markets in section 12
```

---

## Comparison: 4 variants at a glance

| Criterion | US | EU | SEA | LATAM |
|-----------|----|----|-----|-------|
| **Currency** | USD ($9.99) | EUR (€9,99) | USD or SGD/MYR/IDR/THB | USD or BRL/MXN/ARS/COP |
| **Primary platforms** | Meta + Google + TikTok | Meta + Google + LinkedIn (B2B), Xing (DE) | TikTok + Shopee/Lazada/Tokopedia, LINE (TH) | WhatsApp Business + Meta + Mercado Libre, Magalu (BR) |
| **Key regulations** | FTC, CCPA, state privacy laws | GDPR, EU AI Act, CNIL (FR), BfDI (DE) | PDPA (SG), PDPA (MY), UU PDP (ID) | LGPD (BR), LFPDPPP (MX), Ley 25.326 (AR) |
| **Persona research framework** | JTBD + ICP | GDPR-compliant ICP (consent-first) | Mobile-first persona (~80%+ mobile penetration) | WhatsApp-first persona, social commerce |
| **Pricing format** | $9.99 (charm pricing) | €9,99 + VAT inclusive thinking | S$9.90 / RM39 / Rp99000 / B299 | R$99 / MX$199 / AR$5000 / Co$50000 |
| **Cultural context** | B2B sales-driven, B2C impulse-driven | Privacy-conscious, longer sales cycles | Price-sensitive, social commerce, English business language | Family/community decisions, parcelado (installments) |
| **Regional examples** | Apple, Tesla, Nike | SAP, Spotify (SE), ASOS (UK) | Grab, Sea Group, GoTo | Mercado Libre, Nubank, Magalu |

---

## Common 12-section structure (all variants)

| # | Section | What it captures |
|---|---------|------------------|
| 1 | Product overview | Name, description, industry, model, pricing, website, stage |
| 2 | Target customers | Segment, company size (B2B), decision maker, JTBD |
| 3 | Customer persona | Primary + secondary personas |
| 4 | Pain points & problems | Core pain, why current solutions fail, cost, emotion |
| 5 | Competitors | Direct, indirect, secondary |
| 6 | Differentiation | 3 differentiators |
| 7 | Barriers & anti-persona | Top objections + who is NOT a customer |
| 8 | JTBD 4 forces | Push / Pull / Anxiety / Habit |
| 9 | Voice of customer | Real quotes (verbatim) |
| 10 | Brand voice | Tone, do/don't say, examples |
| 11 | Social proof | Numbers, reviews, logos, awards, case studies |
| 12 | Goals | 90-day, 12-month, North Star Metric |

> All variants share this skeleton; the DEFAULTS, EXAMPLES, and REGIONAL NOTES inside each section change per region.

---

## When to update the file?

| Trigger | Action |
|---------|--------|
| Expanding to a new region | Create a SECOND file or rerun this skill for the new region |
| Currency change (e.g. USD -> EUR) | Update sections 1, 2, 12 |
| New regulation (e.g. EU AI Act) | Update section 7 (anti-persona / barriers) |
| New competitor enters market | Update section 5 |
| Product repositioning | Update sections 1, 6, 10 |
| Quarterly review | Review entire file, refresh date stamp |

*Global Foundation Skill | Over Powers Agency | v1.0.0*
