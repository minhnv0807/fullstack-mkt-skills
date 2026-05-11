# v2.5.0 — Global Marketing Cluster Design Spec

**Date:** 2026-05-10
**Status:** Approved by user (all 4 sections + final consolidation)
**Target version:** v2.5.0 (minor bump, non-breaking)
**Predecessor:** v2.4.0 (Personal Brand + AI Avatar cluster, VN market)

---

## Executive Summary

Mở rộng `ai-business-skills` từ v2.4.0 (29 skills VN market) lên v2.5.0 với cụm **30 skills global** song song (`skills/en/`). Phục vụ 4 regions (US/EU/SEA/LATAM), với dropshipping flagship cho US market. Zero breaking changes — VN cluster (`skills/`) giữ nguyên.

**Scope:** ~107 files, ~28,800 lines, ~13 ngày (parallel execution).

---

## Approval Log

| Section | Decision | Approved |
|---------|----------|----------|
| Architecture | A + E selective (folder + variants nơi cần) | ✅ |
| Regions | 4 regions (US/EU/SEA/LATAM) + APAC roadmap v2.6.0 | ✅ |
| Scope | Full 30 skills (29 mirror VN + 1 dropshipping flagship) | ✅ |
| Versioning | v2.5.0 phased 3 PRs (Approach 2) | ✅ |
| Naming | `-global` suffix | ✅ |
| Agents | Extend 5 universal mode (Mode VN / Mode Global) | ✅ |
| Dropshipping focus | Flagship skill 29 + ref + workflow + 5 skill updates | ✅ |
| English standard | International English | ✅ |
| Plugin marketplace | 1 plugin entry, 60 skills total | ✅ |
| Backward compat | Zero breaking changes | ✅ |

---

## Section 1: Architecture & Folder Structure

### Cấu trúc tổng thể

```
ai-business-skills/
├── skills/                                   # VN cluster (UNCHANGED — 29 skills + foundation)
│   ├── product-marketing-context/
│   ├── 00-21 marketing skills/
│   ├── 22-28 personal brand skills/
│   └── references/
│
├── skills/en/                            # NEW Global cluster (30 skills + foundation)
│   ├── product-marketing-context-global/     # Foundation (HAS 4 region variants)
│   │   ├── SKILL.md
│   │   ├── README.md
│   │   └── variants/{01-us,02-eu,03-sea,04-latam}.md
│   │
│   ├── 00-marketing-plan-global/SKILL.md     # Universal
│   ├── 01-content-calendar-global/SKILL.md   # Universal
│   ├── 02-campaign-brief-global/SKILL.md     # Universal
│   ├── 03-performance-eval-global/           # HAS variants (benchmarks)
│   ├── 04-script-video-global/SKILL.md       # Universal
│   ├── 05-ad-copy-global/SKILL.md            # Universal (+ Dropshipping Mode section)
│   ├── 06-ugc-egc-brief-global/SKILL.md      # Universal
│   ├── 07-marketing-report-global/SKILL.md   # Universal
│   ├── 08-competitor-research-global/SKILL.md # Universal
│   ├── 09-customer-insight-global/SKILL.md   # Universal
│   ├── 10-reverse-kpi-global/                # HAS variants (currency)
│   ├── 11-channel-setup-global/              # HAS variants (platforms)
│   ├── 12-landing-page-brief-global/SKILL.md # Universal (+ Dropshipping Mode section)
│   ├── 13-data-analysis-global/SKILL.md      # Universal
│   ├── 14-email-marketing-global/            # HAS variants (CAN-SPAM/GDPR/PDPA/LGPD)
│   ├── 15-social-listening-global/SKILL.md   # Universal
│   ├── 16-marketing-psychology-global/SKILL.md # Universal
│   ├── 17-pricing-strategy-global/           # HAS variants (currency psychology)
│   ├── 18-referral-program-global/           # HAS variants (anti-spam)
│   ├── 19-ab-test-setup-global/SKILL.md      # Universal
│   ├── 20-client-intake-brief-global/SKILL.md # Universal (no industry variants v2.5)
│   ├── 21-ads-audit-global/                  # HAS variants (benchmarks)
│   │
│   ├── 22-personal-brand-context-global/     # HAS 4 region variants
│   ├── 23-personal-brand-strategy-global/SKILL.md # Universal
│   ├── 24-ai-avatar-production-global/       # HAS variants (disclosure law)
│   ├── 25-voice-clone-podcast-global/SKILL.md # Universal
│   ├── 26-thought-leadership-content-global/SKILL.md # Universal
│   ├── 27-personal-brand-monetize-global/    # HAS variants (tax/legal)
│   ├── 28-community-building-global/SKILL.md # Universal
│   │
│   ├── 29-dropshipping-mastery-global/SKILL.md # NEW FLAGSHIP (Universal — focus US/EU)
│   │
│   └── references/                           # 7 NEW references
│       ├── global-platforms-comparison.md
│       ├── global-legal-compliance.md
│       ├── global-currency-pricing.md
│       ├── ai-video-disclosure-global.md
│       ├── voice-clone-prompts-global.md
│       ├── hook-formulas-global.md
│       └── dropshipping-tools-global.md
│
├── workflows/en/                         # NEW (8 workflows)
│   ├── client-onboard-global.md
│   ├── campaign-launch-global.md
│   ├── monthly-cycle-global.md
│   ├── content-production-global.md
│   ├── personal-brand-launch-global.md
│   ├── ai-avatar-batch-global.md
│   ├── personal-brand-monthly-global.md
│   └── dropshipping-launch-global.md         # NEW
│
├── agents/                                   # Update existing 5 (universal mode)
│   ├── mkt-strategist.md (extended +50 lines)
│   ├── content-producer.md (extended +50 lines)
│   ├── performance-analyst.md (extended +50 lines)
│   ├── channel-operator.md (extended — if exists)
│   └── personal-brand-builder.md (extended +50 lines)
│
├── docs/                                     # Shared (add new global docs)
│   ├── (existing VN docs)
│   ├── getting-started-global.md             # NEW
│   ├── global-region-guide.md                # NEW
│   ├── dropshipping-guide.md                 # NEW (8-chapter handbook)
│   ├── apac-roadmap.md                       # NEW (placeholder v2.6.0)
│   └── release-notes/v2.5.0.md               # NEW (bilingual)
│
├── examples/                                 # Shared
│   ├── personal-brand-coach-global.md        # NEW (US example)
│   └── dropshipping-store-global.md          # NEW (US example)
│
└── Root files (updated)
    ├── README.md / README.vi.md              # v2.5.0 banner + global section
    ├── CLAUDE.md                             # Register global cluster + agents mode
    ├── AGENTS.md                             # Pattern docs
    ├── CHANGELOG.md                          # v2.5.0 entry
    ├── VERSIONS.md                           # 30 new entries + 5 agent bumps
    └── .claude-plugin/marketplace.json       # +30 skill paths (60 total)
```

### Skills decomposition summary

| Category | Count | Variants? |
|----------|-------|-----------|
| Universal (English single version) | 19 skills | ❌ |
| HAS region variants (US/EU/SEA/LATAM) | 11 skills | ✅ 4 variants each |
| **Total** | **30 skills** | |

---

## Section 2: Variants Pattern Detail

### 11 skills HAS region variants

#### Foundation: `product-marketing-context-global`

```
skills/en/product-marketing-context-global/
├── SKILL.md              # ~150 lines (router + decision tree)
├── README.md             # ~80 lines (region variant guide)
└── variants/
    ├── 01-us.md          # ~280 lines
    ├── 02-eu.md          # ~280 lines
    ├── 03-sea.md         # ~280 lines
    └── 04-latam.md       # ~280 lines
```

**Differences per region:**
| Field | US | EU | SEA | LATAM |
|-------|-----|-----|-----|-------|
| Currency | USD ($) | EUR (€) | SGD/MYR/IDR/THB | BRL/MXN/ARS |
| Primary platform B2C | Meta + Google + TikTok | Meta + Google + LinkedIn | TikTok + Shopee/Lazada | WhatsApp + Meta |
| Persona research framework | JTBD + ICP | GDPR-compliant ICP | Mobile-first persona | WhatsApp-first persona |
| Regulatory | FTC + CCPA | GDPR + AI Act | PDPA SG + per-country | LGPD BR + per-country |

#### Skill 03 `performance-eval-global` (Benchmarks)
| Metric | US | EU | SEA | LATAM |
|--------|-----|-----|-----|-------|
| Meta CPM avg | $7-15 | €5-12 | $1-3 | $0.5-2 |
| Google Ads CPC | $1-5 | €1-4 | $0.30-1.5 | $0.20-1 |
| TikTok CPM | $5-12 | €4-10 | $1-2 | $0.50-1.5 |
| Conversion rate avg | 2-5% | 2-4% | 1-3% | 1-2.5% |

#### Skill 10 `reverse-kpi-global` (Currency math)
| Aspect | US | EU | SEA | LATAM |
|--------|-----|-----|-----|-------|
| Revenue base | USD | EUR | USD or local | USD or local |
| Avg deal size B2C | $200-2K | €150-1.5K | $50-500 | $30-300 |
| Avg deal size B2B | $5K-50K | €4K-40K | $1K-10K | $500-5K |

#### Skill 11 `channel-setup-global` (Platforms)
| Priority | US | EU | SEA | LATAM |
|----------|-----|-----|-----|-------|
| Top 1 | Meta + Google | Meta + Google | TikTok + Shopee | WhatsApp + Meta |
| Top 2 | LinkedIn (B2B) | LinkedIn + Xing | Lazada + Tokopedia | Mercado Libre |
| Top 3 | Twitter/X | Twitter/X | LINE (TH) | Magalu (BR) |
| Messaging dominant | iMessage + WhatsApp | WhatsApp + Telegram | LINE/WhatsApp | WhatsApp |

#### Skill 14 `email-marketing-global` (LEGAL CRITICAL)
| Law | US | EU | SEA | LATAM |
|-----|-----|-----|-----|-------|
| Primary | CAN-SPAM | GDPR + ePrivacy | PDPA SG / per-country | LGPD (BR) / per-country |
| Consent | Opt-out OK | **Opt-in MANDATORY** | Opt-in (most) | Opt-in (BR) |
| Penalty | $51K/email | €20M / 4% revenue | SGD 1M | BRL 50M |

#### Skill 17 `pricing-strategy-global` (Currency psychology)
| Psychology | US | EU | SEA | LATAM |
|-----------|-----|-----|-----|-------|
| Charm price | $9.99 | €9,99 (comma) | S$9.90 / RM39 | R$99 / MX$199 |
| Decoy effect | Strong | Strong | Medium | Strong |
| Anchoring | Premium first | Mid-tier first | Discount-heavy | Discount-essential |
| Subscription | Monthly $ | Monthly € + VAT | Local + USD dual | Local only |

#### Skill 18 `referral-program-global` (Anti-spam)
| Aspect | US | EU | SEA | LATAM |
|--------|-----|-----|-----|-------|
| Email referral | OK with opt-out | GDPR consent | PDPA consent | LGPD consent (BR) |
| SMS referral | TCPA written consent | GDPR + ePrivacy | Per-country | Mixed |

#### Skill 21 `ads-audit-global`
*Same benchmarks as skill 03 + audit context*

#### Skill 22 `personal-brand-context-global`

**Khác VN structure:** 4 region variants (mỗi variant cover 3 audience inside) thay vì 3 audience variants.

| Variant | Includes |
|---------|----------|
| `01-us.md` | US Founder + US Coach + US Creator |
| `02-eu.md` | EU Founder + EU Coach + EU Creator |
| `03-sea.md` | SEA Founder + SEA Coach + SEA Creator |
| `04-latam.md` | LATAM Founder + LATAM Coach + LATAM Creator |

#### Skill 24 `ai-avatar-production-global` (Disclosure)
| Region | Disclosure law | Required when? |
|--------|---------------|----------------|
| US | FTC Endorsement Guide | Sponsored/ads |
| EU | EU AI Act Article 50 | Always |
| SEA | Per country (varies) | Sponsored |
| LATAM | Mixed (BR has rules) | Varies |

#### Skill 27 `personal-brand-monetize-global` (Tax/legal)
| Aspect | US | EU | SEA | LATAM |
|--------|-----|-----|-----|-------|
| Self-employed | LLC / Sole Prop | EU country-specific | SG: Sole Prop / Pte Ltd | BR: MEI / EI / SA |
| Income tax | Federal + State | Per country | Per country | Per country |
| Sales tax | State sales tax | VAT 15-27% | GST 7-10% | ICMS varies |

### Variant file template

```markdown
# [Skill name] — [Region] variant

> Variant for [REGION]. Read SKILL.md (entrypoint) first.

## Quick reference card
- Primary currency: [USD/EUR/etc.]
- Top 3 platforms: [...]
- Key regulations: [...]

## [Section 1: per parent skill template]
[Content adapted for region]

## [Section 2: per parent skill template]
[Content adapted for region]

## Region-specific notes
[Cultural references, holidays, language tips]

## Common pitfalls in this region
[5-10 items specific to region]
```

---

## Section 3: Content Strategy (with Dropshipping Focus)

### 19 Universal Skills

#### Translation principles
- ❌ NO word-for-word translation from VN
- ✅ Adaptive translation: keep framework, adapt examples to global context
- ✅ International English (avoid US-only or UK-only slang)
- ✅ Examples diversity: 1-2 US + 1-2 EU + 1-2 SEA per skill

#### List of 19 universal skills

**Marketing (15):** 00, 01, 02, 04, 05, 06, 07, 08, 09, 12, 13, 15, 16, 19, 20

**Personal Brand (3):** 23, 25, 26, 28

**Dropshipping (1):** 29 (NEW flagship)

### Dropshipping Focus (NEW)

#### Skill 29 `dropshipping-mastery-global` (FLAGSHIP, ~500 lines)

**12 sections:**
1. Cho người mới (Newbie) — what is dropshipping, when to choose vs FBA/branded
2. Thu thập (4 cau): niche, supplier, ad platform, budget
3. Product research — winning product criteria
4. Supplier sourcing — AliExpress vs CJ vs Spocket vs Zendrop
5. Shopify store setup — theme, apps (DSers, Loox, etc.)
6. Ad creative pipeline — 10 ads/week methodology
7. Audience targeting — interest stacking, lookalike, broad
8. Pricing math — 3-5x markup, BE-ROAS formula
9. Customer service — long shipping, refunds, FAQ template
10. Scaling playbook — CBO, manual, vertical scaling
11. Common pitfalls — chargebacks, ad ban, supplier delays
12. Compliance — FTC, shipping disclosure (US/EU CHRD)

#### Reference: `dropshipping-tools-global.md` (~280 lines)

Sections:
1. Decision tree: dropshipping starter stack
2. Tool deep-dive (~15 tools):
   - Stores: Shopify, WooCommerce, Wix
   - Suppliers: AliExpress, CJ, Spocket, Zendrop, AutoDS
   - Ad spy: Minea, PiPiAds, AdSpy, BigSpy
   - Tracking: Triple Whale, Hyros, Northbeam
   - Reviews: Loox, Judge.me, Stamped
   - Email: Klaviyo, Omnisend
   - Customer service: Gorgias, Tidio
3. Cost breakdown by tier
4. Tool stack examples by experience level

#### Workflow: `dropshipping-launch-global.md` (~420 lines)

8 sections newbie-friendly:
1. Workflow này dành cho ai? — beginner-intermediate dropshipper
2. Pre-flight Checklist (10 items)
3. Step-by-step (30 days × 2-4h):
   - Week 1: Product research + winning product validation
   - Week 2: Shopify setup + first creative batch
   - Week 3: Ad testing ($300-500 budget)
   - Week 4: Scale or pivot decision
4. Skills Chain & Timeline (Mermaid Gantt)
5. Success Criteria (5 metrics)
6. Common Pitfalls (10)
7. AI Research Prompts (5)
8. Resources + YouTube placeholder

#### 5 Universal skills add Dropshipping Mode section

| Skill | Section | Lines added |
|-------|---------|-------------|
| 05 ad-copy-global | "Dropshipping Mode" — 4 templates (urgency, scarcity, problem-aware, transformation) | +60 |
| 12 landing-page-brief-global | "Single-product LP for dropshipping" template | +50 |
| 17 pricing-strategy-global | "Dropshipping markup math" + price ladder | +40 |
| 03 performance-eval-global | "Dropshipping KPI" (ROAS, BE-ROAS, profit margin, CAC) | +50 |
| 21 ads-audit-global | "Dropshipping audit checklist" | +50 |

### 7 New References

| # | File | Purpose | Lines |
|---|------|---------|-------|
| 1 | `global-platforms-comparison.md` | Platform usage per region (LinkedIn/Twitter/TikTok/Meta) | 280 |
| 2 | `global-legal-compliance.md` | GDPR/CCPA/PDPA/LGPD/CAN-SPAM full reference | 320 |
| 3 | `global-currency-pricing.md` | Currency psychology + VAT/GST/Sales tax | 240 |
| 4 | `ai-video-disclosure-global.md` | FTC + EU AI Act + regional rules | 280 |
| 5 | `voice-clone-prompts-global.md` | English samples (US/UK/AU/SG accents) | 220 |
| 6 | `hook-formulas-global.md` | English hook examples (extends VN) | 300 |
| 7 | `dropshipping-tools-global.md` | Dropshipping tool stack | 280 |

### 8 New Workflows

| # | File | Mirror VN | Difference |
|---|------|-----------|------------|
| 1 | `client-onboard-global.md` | Yes | Industry-specific brief |
| 2 | `campaign-launch-global.md` | Yes | Multi-region timing |
| 3 | `monthly-cycle-global.md` | Yes | Multi-currency reporting |
| 4 | `content-production-global.md` | Yes | English content pipeline |
| 5 | `personal-brand-launch-global.md` | Yes | LinkedIn-first |
| 6 | `ai-avatar-batch-global.md` | Yes | USD costs, FTC disclosure |
| 7 | `personal-brand-monthly-global.md` | Yes | Multi-region community |
| 8 | `dropshipping-launch-global.md` | NEW | 30-day product launch cycle |

---

## Section 4: Agents Auto-Detect Mode

### Logic per agent (universal mode)

```
Agent reads `.agents/`:
├── product-marketing-context.md only → MODE VN (skills/ cluster)
├── product-marketing-context-global.md only → MODE GLOBAL (skills/en/ cluster)
├── Both → ASK 1 question: "VN or Global?"
└── None → SUGGEST creating context first

Personal Brand context (similar):
├── personal-brand-context.md → VN PB
├── personal-brand-context-global.md → Global PB
└── Both → ASK
```

### Each agent file extension

Add ~50 lines section "Cluster Auto-Detect Mode":
- Mode detection logic
- Cluster-specific skill mapping
- Cross-cluster compatibility note

### Files modified

- `agents/mkt-strategist.md` (skills 00, 02, 08, 09, 16, 17 mapping for both clusters)
- `agents/content-producer.md` (skills 01, 04, 05, 06, 15)
- `agents/performance-analyst.md` (skills 03, 07, 10, 13, 19, 21, 29)
- `agents/channel-operator.md` (skills 11, 12, 14, 18) — if exists
- `agents/personal-brand-builder.md` (skills 22-28)

---

## Section 5: Documentation Strategy

### Newbie-friendly approach (matching v2.4.0 pattern)

| Doc | Purpose | Lines |
|-----|---------|-------|
| `docs/getting-started-global.md` | 5-min quickstart for international users | 220 |
| `docs/global-region-guide.md` | "Which region am I?" decision tree + comparison | 280 |
| `docs/dropshipping-guide.md` | 8-chapter dropshipping handbook | 600 |
| `docs/apac-roadmap.md` | Placeholder for v2.6.0 plan | 150 |
| `docs/release-notes/v2.5.0.md` | Bilingual VN/EN release notes | 280 |
| `examples/personal-brand-coach-global.md` | Sample (US-based coach) | 200 |
| `examples/dropshipping-store-global.md` | Sample (winning product launch) | 200 |

### `docs/dropshipping-guide.md` 8 chapters (~600 lines)

1. What is dropshipping? Difference vs FBA/branded e-commerce
2. Choosing a niche — 3 frameworks (problem-solving, passion-based, trending)
3. Finding winning products — 5 sources (Minea, PiPiAds, TikTok organic, Reddit, AliExpress sorting)
4. Shopify store building — theme selection, must-have apps, conversion-focused design
5. Ad creative for dropshipping — UGC pattern, problem-solution-reveal, social proof tiles
6. Scaling beyond $10K/day — CBO, vertical scaling, pivot decisions
7. Common mistakes (15) — wrong niche, low margin, slow shipping, chargebacks, etc.
8. FAQ 30 questions — legal, tax, banking, payment processors, etc.

### `docs/apac-roadmap.md` (~150 lines)

- Why APAC not in v2.5.0 (YAGNI principle)
- Decision criteria for v2.6.0: 5+ APAC issues OR 1000 stars threshold
- Estimated effort: ~6,000 lines for ~10 skills with APAC variant
- Tentative timeline: Q1 2027 if demand confirmed
- v2.7.0+ planning: India, MENA

---

## Section 6: Phased Rollout Plan (3 PRs)

### Phase 1 — Core Marketing Global (~14 days, ~12,000 lines)

**Branch:** `phase-1-core-global`

**Includes:**
- Foundation skill `product-marketing-context-global/` (router + README + 4 variants = 6 files)
- 15 marketing universal skills (00-21 minus PB)
- 6 marketing skills with variants (03, 10, 11, 14, 17, 18, 21) × (1 SKILL + 4 variants) = 30 files
- 4 references (platforms, legal, currency, dropshipping-tools)
- 5 workflows (client-onboard, campaign-launch, monthly-cycle, content-production, dropshipping-launch — all global)
- Skill 29 `dropshipping-mastery-global` (FLAGSHIP, single English file)

**File count: ~61 files**
**PR target:** `feature/v2.5-global-cluster`
**Estimated commits:** ~30-40

### Phase 2 — Personal Brand Global (~7 days, ~7,500 lines)

**Branch:** `phase-2-personal-brand-global`

**Includes:**
- 7 personal brand skills global (22-28)
- 3 references (ai-video-disclosure, voice-clone-prompts, hook-formulas global)
- 3 workflows (personal-brand-launch, ai-avatar-batch, personal-brand-monthly global)

**PR target:** `feature/v2.5-global-cluster`

### Phase 3 — Polish + Release (~5 days, ~9,300 lines)

**Branch:** `phase-3-polish-release`

**Includes:**
- 5 agents extended (universal mode)
- 5 docs (getting-started, region-guide, dropshipping-guide, apac-roadmap, release-notes)
- 2 examples (coach + dropshipping store)
- All root files updated:
  - README.md / README.vi.md (+200 lines each)
  - CLAUDE.md (+50 lines)
  - AGENTS.md (+30 lines)
  - CHANGELOG.md (+80 lines for v2.5.0 entry)
  - VERSIONS.md (+50 lines: 30 new + 5 agent bumps)
  - .claude-plugin/marketplace.json (+30 paths)
  - docs/skill-map.md (update for 60 skills)
  - docs/faq.md (add 10 Q&A about global)
  - docs/workflow-guide.md (add 8 global workflows)
  - validate-skills.sh / .ps1 (add global cluster checks)
- 10 Quality Gates verification
- v2.5.0 tag + GitHub Release + Discussion issue

**PR target:** `feature/v2.5-global-cluster` → `master` (final)

---

## Section 7: Backward Compatibility

| Concern | Mitigation |
|---------|-----------|
| VN cluster `skills/` | UNCHANGED — not touched in any phase |
| Existing 7 VN workflows | UNCHANGED |
| Skills 04, 05 Mode A/B | Still works — extended to 4-mode (VN+SP, VN+PB, Global+SP, Global+PB) |
| Plugin marketplace.json | ADD only — no removal of existing 30 paths |
| Agents | Extended with fallback: no global context → behavior identical to v2.4.0 |
| `.agents/` files | NEW files only (`-global` suffix) — old files untouched |
| README badges | Update from "Skills-29" → "Skills-60" — visual change only |

---

## Section 8: 10 Quality Gates (per v2.4.0 template)

1. **validate-skills.sh PASS** — for all 60 skills (29 VN + 30 global + 1 foundation each)
2. **Line count check** — skills ≤500, refs ≤500, docs ≤800, workflows ≤500
3. **Frontmatter consistency** — all 30 new skills have valid `name:`, `version: 1.0.0`, `category:`, `triggers:`, `related:`
4. **Cross-reference check** — all `related:` references resolve to existing files
5. **README EN/VN sync** — both files have same structure (16-17 sections mirror)
6. **CHANGELOG complete** — `[2.5.0]` entry + compare link `v2.4.0...v2.5.0`
7. **Backward compat test** — VN cluster unchanged, agents work in VN-only mode
8. **Forward compat test** — Global cluster activates correctly with `-global` context files
9. **E2E workflow simulation** — 1 region scenario (e.g., US founder using personal-brand-launch-global)
10. **Plugin manifest valid** — JSON valid, version "2.5.0", 60 skills total in marketplace.json

---

## Section 9: Future Roadmap

### v2.6.0 — APAC Region (tentative Q1 2027)

**Trigger:** 5+ APAC issues OR 1000 stars OR explicit user demand

**Scope:**
- Add APAC variant to ~10 skills with regional differences
- Japan-specific: LINE platform, JPY pricing, Japanese KOL system
- Korea-specific: KakaoTalk, K-content style, KRW pricing
- Australia-specific: bridge US/EU patterns

**Estimated effort:** ~6,000 lines, ~5 days

### v2.7.0+ Considerations

- India region (UPI payment, WhatsApp Business heavy, Hindi/English mix)
- MENA region (Arabic content, Ramadan timing, regional platforms)
- Africa region (mobile money, WhatsApp dominant, Ecobank etc.)

### Long-term (v3.0.0+)

- Possibly: Restructure if cluster count > 5 (split into multiple plugins)
- i18n proper (translate VN cluster to international markets)

---

## Effort Summary

| Phase | Files | Lines | Days (with parallel) |
|-------|-------|-------|---------------------|
| Phase 1 | ~50 | ~12,000 | ~5 |
| Phase 2 | ~25 | ~7,500 | ~3 |
| Phase 3 | ~32 | ~9,300 | ~5 |
| **Total** | **~107** | **~28,800** | **~13 days** |

Sequential execution would take ~26 days. Parallel execution (subagent-driven) cuts this in half.

---

## Risks & Mitigations

| Risk | Probability | Impact | Mitigation |
|------|-------------|--------|------------|
| Region content inaccuracy | Medium | High | Reference authoritative sources (laws, platform docs) |
| Skill 22 4-region variants too long | Low | Medium | Cap at 350 lines/variant, move details to references |
| Agent mode-detection breaks | Medium | High | Comprehensive backward compat tests in Phase 3 |
| Dropshipping flagship too US-centric | Low | Medium | Add EU dropshipping notes (CHRD compliance) |
| English style inconsistency across 30 skills | Medium | Low | Style guide enforced via review |

---

**End of design spec.**
