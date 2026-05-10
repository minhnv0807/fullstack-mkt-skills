---
name: 21-ads-audit-global
description: "Comprehensive ads audit for Meta/Google/TikTok with Health Score 0-100. 84 checkpoints across 6 dimensions (Account/Campaign/AdSet/Ad/Tracking/Optimization). Has 4 region variants for benchmarks. INCLUDES Dropshipping Audit Checklist (creative testing velocity, CRO signals, attribution accuracy). Trigger: 'ads audit', 'ad account audit', 'Meta audit', 'Google Ads audit', 'TikTok audit', 'dropshipping ads audit'."
metadata:
  version: 1.0.0
  category: performance
license: MIT
triggers:
  - "ads audit"
  - "ad account audit"
  - "Meta audit"
  - "Google Ads audit"
  - "TikTok audit"
  - "dropshipping ads audit"
related:
  - product-marketing-context-global
  - 03-performance-eval-global
  - 13-data-analysis-global
  - 29-dropshipping-mastery-global
  - references/global-platforms-comparison
---

# Ads Audit (Global) — Health Score & Action Plan

> **Difference from `03-performance-eval-global`:**
> - `03` evaluates current performance (CPM, ROAS, funnel) — diagnoses symptoms.
> - `21` audits account configuration (setup, structure, tracking, creative) — scores 0-100 and finds systemic issues.
>
> Insight before numbers. Lead with judgment; illustrate with metrics.

---

## For Newbies — Start Here

**What is an ads audit?**
A structured review of your ad accounts (Meta, Google, TikTok) to find leaks, misconfigurations, and missed opportunities. The output is a **Health Score (0-100)**, a list of **Quick Wins**, and a **7-day Action Plan**.

**When do you need one?**
- ROAS dropped suddenly (>20% week-over-week).
- New account inherited from another agency or in-house team.
- Spending >$5K/month with no clear performance review process.
- Pixel/CAPI showed errors or duplicate events.
- About to scale spend by 2-3x and want to verify foundation.
- Dropshipping store with attribution confusion (Shopify vs Meta vs Triple Whale numbers don't match).

**What you'll need before starting:**
1. Read access to ad accounts (or screen-share / data export).
2. Last 30 days of spend, impressions, clicks, conversions, ROAS.
3. Pixel/CAPI status (Events Manager, GA4, TikTok Events).
4. Region context (US, EU, SEA, LATAM) — benchmarks differ widely.
5. Business model (DTC e-com, B2B SaaS, lead gen, dropshipping) — optimization rules differ.

**How long does it take?**
- Quick audit: 2-3 hours (Health Score + Quick Wins).
- Full audit: 6-10 hours (Health Score + 84 checkpoints + 7-day plan + creative review).

---

## Step 0 — Read Context + Select Region Variant

Before audit, pull two contexts:

1. **Product context** — call `product-marketing-context-global` if not already in conversation. This gives the auditor: pricing, target CAC, business model, current channels.
2. **Region variant** — load the appropriate file:

| Region | File | Currency | Key benchmarks |
|--------|------|----------|----------------|
| **US / North America** | `variants/01-us.md` | USD | Meta CPM $7-12, Google CPC $1-3, ROAS 3-5x |
| **EU / UK** | `variants/02-eu.md` | EUR / GBP | Meta CPM €5-10, Google CPC €1-3, ROAS 3-4x |
| **SEA (VN, TH, ID, PH, SG, MY)** | `variants/03-sea.md` | USD-equivalent | Meta CPM $1-2, Google CPC $0.30-1, ROAS 2-3x |
| **LATAM (BR, MX, AR, CO, CL)** | `variants/04-latam.md` | USD-equivalent | Meta CPM $0.50-1.5, Google CPC $0.20-0.80, ROAS 2-3x |

> **Why region matters:** A $5 CPM is excellent in US but terrible in Vietnam. Audit grading without regional context produces false positives or false negatives.

---

## Information Gathering

Ask up to 4 questions:

1. **Which platforms?** Meta / Google / TikTok / multi-platform — and what % of total ad spend each represents.
2. **Industry + business model?** (DTC e-com, dropshipping, B2B SaaS, lead-gen, local service, course/info-product.)
3. **Monthly ad spend + region?** (e.g. "$15K/month, 70% US, 30% Canada".)
4. **Can you share data?** Either paste tables, share a Looker Studio link, or grant view access to the ad account.

### Auto-pull via MCP (if connected)

If user has connected an MCP server, pull data directly:

| Platform | MCP recommended | Key tools used |
|----------|-----------------|----------------|
| Meta Ads | Meta Official MCP (`mcp.facebook.com/ads`) | `ads_insights_anomaly_signal`, `ads_insights_auction_ranking_benchmarks`, `ads_get_dataset_quality`, `ads_get_opportunity_score` |
| Google Ads | Google Official MCP | GAQL: campaign performance, search terms, quality score |
| TikTok Ads | AdsMCP / tiktok-ads-mcp-server | Performance reports, creative library |
| Cross-platform | Adspirer ads-mcp | Unified analytics across 175+ tools |

**Sample Meta Insights fields when MCP unavailable:**
```
fields=spend,impressions,clicks,ctr,cpc,cpm,actions,cost_per_action_type,
       purchase_roas,frequency,reach
date_preset=last_30d
level=adset
breakdowns=age,gender
```

**Sample GAQL query for Google audit:**
```sql
SELECT campaign.name, campaign.status, campaign.bidding_strategy_type,
       metrics.impressions, metrics.clicks, metrics.cost_micros,
       metrics.conversions, metrics.cost_per_conversion,
       metrics.search_impression_share
FROM campaign
WHERE segments.date DURING LAST_30_DAYS
  AND campaign.status != 'REMOVED'
ORDER BY metrics.cost_micros DESC
```

---

## Health Score Framework (0-100)

### Formula
```
Health Score = Σ(Check_pass × Severity_weight × Dimension_weight)
             / Σ(Check_total × Severity_weight × Dimension_weight) × 100
```

### Severity weights
| Severity | Multiplier | Meaning |
|----------|-----------|---------|
| Critical | 5.0× | Active money/data loss — fix today |
| High | 3.0× | Major impact — fix within 7 days |
| Medium | 1.5× | Best practice gap — fix within 30 days |
| Low | 0.5× | Optimization — fix when possible |

### Grade scale
| Score | Grade | Meaning |
|-------|-------|---------|
| 90-100 | **A** | Excellent — maintain & scale |
| 75-89 | **B** | Good — a few improvements needed |
| 60-74 | **C** | Average — needs serious investment |
| 40-59 | **D** | Poor — significant performance leaks |
| <40 | **F** | Critical — likely losing money in real time |

### 6 Dimensions

```
1. Account     (10%) — billing, permissions, BM/MCC structure, account warnings
2. Campaign    (15%) — objectives, separation (cold/warm/retarget), budget allocation
3. AdSet/AdGroup (20%) — audience, budget, scheduling, exclusions, learning phase
4. Ad/Creative (25%) — diversity, freshness, hook quality, format mix
5. Tracking    (20%) — pixel/CAPI/server-side, event quality, attribution model
6. Optimization (10%) — bid strategy, ML signals, budget pacing, automation rules
```

---

## 84 Checkpoints (Universal Core)

> Region-specific benchmark numbers live in the variant files. The checkpoint logic is identical worldwide.

### Dimension 1 — ACCOUNT (12 checks, weight 10%)

| # | Check | Severity |
|---|-------|----------|
| A01 | Business Manager / MCC structured (single source of truth) | High |
| A02 | Account billing healthy (no failed charges in 30d) | Critical |
| A03 | No active account warnings or restrictions | Critical |
| A04 | Domain verified (Meta) or website verified (Google/TikTok) | High |
| A05 | iOS 14.5+ Aggregated Event Measurement configured (Meta) | High |
| A06 | Brand safety / suitability set (Meta + Google) | Medium |
| A07 | User access roles minimized (no over-permissioned users) | Medium |
| A08 | Spending limit set per account (prevents runaway charges) | Medium |
| A09 | 2FA enabled on all admin accounts | High |
| A10 | Conversion API token rotated within 12 months | Low |
| A11 | Account currency matches market currency | Low |
| A12 | Tax/VAT configuration correct for region | Low |

### Dimension 2 — CAMPAIGN (14 checks, weight 15%)

| # | Check | Severity |
|---|-------|----------|
| C01 | Cold / warm / retarget campaigns separated | High |
| C02 | Campaign objectives match real business outcome | Critical |
| C03 | No more than 3-5 active "core" campaigns | Medium |
| C04 | Campaign Budget Optimization (CBO) used appropriately | Medium |
| C05 | No overlapping audiences across active campaigns | High |
| C06 | Brand vs non-brand campaigns separated (Google) | High |
| C07 | Search vs Performance Max separated (Google) | High |
| C08 | iOS / Android segregation when economics differ | Low |
| C09 | Budget allocated proportionally to ROAS-by-funnel-stage | High |
| C10 | Naming convention consistent (Brand_Funnel_Geo_Date) | Low |
| C11 | Campaign-level frequency caps set (where supported) | Medium |
| C12 | Holiday/promo campaigns tagged & sunset-dated | Low |
| C13 | Negative geo / language exclusions set | Medium |
| C14 | Brand keywords campaign exists with good QS (Google) | High |

### Dimension 3 — AD SET / AD GROUP (16 checks, weight 20%)

| # | Check | Severity |
|---|-------|----------|
| S01 | Daily budget ≥ 5× target CPA per ad set | Critical |
| S02 | Not editing ad sets currently in Learning Phase | High |
| S03 | Audience size 1M-50M for cold prospecting (Meta) | High |
| S04 | Audience overlap between ad sets <25% | High |
| S05 | Lookalikes built from quality seeds (purchasers, not clickers) | High |
| S06 | Negative keywords list maintained (Google) | High |
| S07 | Match types appropriate (Broad+Smart Bidding, or Phrase/Exact) | High |
| S08 | Search term report reviewed within 14 days | High |
| S09 | Exclusion of past purchasers from acquisition campaigns | Critical |
| S10 | Placement: Advantage+/automatic where appropriate | Medium |
| S11 | Ad scheduling matches actual peak-conversion hours | Medium |
| S12 | Bid strategy matches account stage (Lowest Cost early, Cost Cap mature) | High |
| S13 | Demographic restrictions justified by data (not prejudice) | Medium |
| S14 | TikTok-specific: SmartTargeting tested vs manual | Medium |
| S15 | Quality score average ≥6/10 (Google) | High |
| S16 | Ad set count per campaign ≤5 (Meta) for ML efficiency | Medium |

### Dimension 4 — AD / CREATIVE (18 checks, weight 25%)

| # | Check | Severity |
|---|-------|----------|
| AD01 | At least 10 truly different creatives per active ad set | High |
| AD02 | No single creative running >21 days continuously | High |
| AD03 | Frequency <3.5 on cold audience | High |
| AD04 | All 3 formats present (video / image / carousel) | Medium |
| AD05 | Videos have sound/music (TikTok-critical) | Critical |
| AD06 | First 3 seconds hook tested (Hook Rate >25%) | High |
| AD07 | Captions / on-screen text present (sound-off viewing) | High |
| AD08 | UGC / review-style creative present (≥1) | Medium |
| AD09 | CTA explicit in creative (voice or text) | High |
| AD10 | Vertical 9:16 used for Stories/Reels/TikTok | High |
| AD11 | Resolution ≥720p (1080p preferred) | Medium |
| AD12 | RSA: ≥8/15 headlines, ≥4/4 descriptions filled (Google) | High |
| AD13 | Asset strength "Good" or higher on RSA (Google) | Medium |
| AD14 | Sitelink / callout / call extensions present (Google) | Medium |
| AD15 | Landing page load time <3s on 4G | High |
| AD16 | Landing page mobile-first design verified | Critical |
| AD17 | Creative-to-LP message match (no bait-and-switch) | High |
| AD18 | Compliance: no policy violations (alcohol, health, financial) | Critical |

### Dimension 5 — TRACKING (16 checks, weight 20%)

| # | Check | Severity |
|---|-------|----------|
| T01 | Pixel/Tag installed on all relevant pages | Critical |
| T02 | Purchase / Lead / KeyEvent firing accurately | Critical |
| T03 | Conversion API (CAPI / Enhanced Conversions) deployed | High |
| T04 | Event Match Quality ≥6.0 (Meta) | High |
| T05 | No duplicate events (deduplication ID set) | Critical |
| T06 | UTM parameters present on all paid links | Medium |
| T07 | GA4 linked to Google Ads + GA4 linked to BigQuery | High |
| T08 | Conversion windows aligned across platforms | High |
| T09 | Server-side tracking layer (GTM SS, Stape) considered | Medium |
| T10 | Triple Whale / Hyros / Northbeam reconciled vs platform (DTC) | High |
| T11 | TikTok Pixel + Events API both firing | High |
| T12 | View-through and click-through windows documented | Medium |
| T13 | Cross-domain tracking working (multi-domain checkout) | High |
| T14 | First-party data collection (email/phone) for CAPI matching | High |
| T15 | Cookie consent compliant (GDPR / CCPA / LGPD) | Critical |
| T16 | Bot/spam traffic filtered from conversion data | Medium |

### Dimension 6 — OPTIMIZATION (8 checks, weight 10%)

| # | Check | Severity |
|---|-------|----------|
| O01 | Automated rules in place (pause low ROAS, scale winners) | Medium |
| O02 | Budget pacing reviewed weekly | Medium |
| O03 | Creative refresh cadence set (≥30% new every 14 days) | High |
| O04 | A/B testing framework defined (one variable at a time) | Medium |
| O05 | Reporting cadence: daily skim, weekly deep-dive | Low |
| O06 | Diagnostics tab reviewed (Quality, Engagement, Conversion) | Medium |
| O07 | Performance reviewed by funnel stage (TOFU/MOFU/BOFU) | High |
| O08 | Stop-loss thresholds defined per campaign | High |

---

## Quick Wins Decision Tree

After scoring, surface the top 5-10 actions a user can do **today** (<15 minutes each).

```
START → Is any Critical check failing?
        ├─ YES → Fix in next 24 hours (account-level issues first)
        │        ├─ A02/A03 (billing/warning) → fix immediately
        │        ├─ T01/T02/T05 (tracking broken) → fix before any more spend
        │        ├─ S01 (budget < 5× CPA) → increase budget or pause
        │        └─ AD18 (policy violation) → revise creative
        │
        └─ NO → Score Critical/High Quick Wins by impact:
                 ├─ Pause "wasted spend" keywords / ad sets (>$200 spend, 0 conv)
                 ├─ Add exclusion of past purchasers from cold campaigns
                 ├─ Refresh top-frequency creative (>3.5 freq)
                 ├─ Enable CAPI / Enhanced Conversions
                 ├─ Add UTM parameters to untagged ads
                 └─ Connect GA4 ↔ Google Ads if not linked
```

Each Quick Win must include: **action, expected impact, time required, owner**.

---

## Dropshipping Audit Checklist (Special Section)

> Dropshipping has unique audit needs: high creative volume, thin margins, attribution opacity, and compressed test cycles. This section augments — not replaces — the 84 universal checkpoints.

### 1. Creative Testing Velocity (the #1 dropshipping killer)

| Check | Pass criteria | Severity |
|-------|---------------|----------|
| New creatives launched per week | ≥10 (winning store benchmark) | Critical |
| Creative-to-spend ratio | 1 winning ad funds 4-5 tests | High |
| Hook variations tested | ≥3 hooks per product | High |
| UGC creator pipeline active | ≥2 UGC creators delivering weekly | High |
| Cycle time from brief to launch | <72 hours | High |

> **Failure mode:** A store running 2-3 creatives "until they die" instead of testing 10+/week is starving Meta's algorithm and ad fatigue compounds. Fix: build a creative ops calendar (see `06-ugc-egc-brief-global`).

### 2. CBO vs ABO Setup

| Check | Pass criteria | Severity |
|-------|---------------|----------|
| Testing layer uses ABO (Ad Set Budget) | ≥3 ad sets, $20-50/day each | High |
| Scaling layer uses CBO (Campaign Budget) | Top winners only, single CBO | High |
| Budget reallocates within 3-7 days of clear winner | Document rule + execute | Medium |
| No mixed CBO with non-comparable ad sets | Audit campaign structure | High |

### 3. Pixel + CAPI Dual Tracking (post-iOS 14.5 critical)

| Check | Pass criteria | Severity |
|-------|---------------|----------|
| Pixel + CAPI both firing on Purchase event | Verified in Test Events | Critical |
| EMQ ≥7.0 (dropshipping should beat 6.0 floor) | Events Manager | High |
| Email + phone + first-name + last-name passed via CAPI | Backend integration | Critical |
| Server-side tracking via Stape/GTM SS for AOV>$50 stores | Verified deployment | High |
| iOS attribution gap reconciled with Triple Whale or Hyros | Compare last 30 days | High |

### 4. Landing Page CRO Signals

| Check | Pass criteria | Severity |
|-------|---------------|----------|
| Mobile load time <2.5s (LCP) | PageSpeed Insights | Critical |
| Add-to-Cart rate ≥6% (sessions → ATC) | GA4 / Shopify | High |
| Checkout conversion ≥40% (ATC → Purchase) | GA4 / Shopify | High |
| Hero matches winning ad (creative-LP message match) | Manual review | Critical |
| Trust badges, reviews, return policy visible above fold | Manual review | High |
| Exit-intent + abandoned cart sequence active | Klaviyo / equivalent | High |

### 5. Attribution Accuracy

| Check | Pass criteria | Severity |
|-------|---------------|----------|
| UTMs use consistent schema (utm_source/medium/campaign/content) | URL builder doc | High |
| Triple Whale / Hyros / Northbeam connected | At least one MMP active | High |
| Platform-reported revenue vs Shopify revenue gap <15% | Reconciliation report | High |
| Post-purchase survey ("How did you hear about us?") active | Order form / KnoCommerce | Medium |
| Customer LTV tracked, not just first-order revenue | Cohort report quarterly | High |

### 6. Profit Margin Tracking

| Check | Pass criteria | Severity |
|-------|---------------|----------|
| Net margin per order calculated (after COGS, ad spend, fees) | Spreadsheet or Lifetimely | Critical |
| MER (Marketing Efficiency Ratio = total revenue / total ad spend) tracked daily | Dashboard | High |
| Break-even ROAS documented and visible | Operations dashboard | Critical |
| Refund/chargeback rate <5% | Shopify reports | High |
| Profit-per-customer rising or flat (not declining) | 90-day cohort | High |

> **Dropshipping cross-reference:** When auditing dropshipping accounts, also call `29-dropshipping-mastery-global` for product-fit and supply-chain audit beyond ad-account scope.

---

## Output Structure

```markdown
# Ads Audit: [Brand / Product]
Audit date: [YYYY-MM-DD]
Region: [US / EU / SEA / LATAM]
Auditor: [Agency / In-house]
Spend audited: [$ — last 30d]

## Executive Summary

| Platform | Score | Grade | Top issue |
|----------|-------|-------|-----------|
| Meta Ads | [n]/100 | [A-F] | [1-line] |
| Google Ads | [n]/100 | | |
| TikTok Ads | [n]/100 | | |
| **Aggregate** | **[n]/100** | **[Grade]** | |

## Critical Issues (fix in 24 hours)
[List failed Critical checks with remediation steps]

## Quick Wins (today, <15 min each)
[Top 5-10 actions, sorted by impact]

## By Dimension

### 1. Account — [score]/10
[Pass/fail per check, with screenshots if MCP-pulled]

### 2. Campaign — [score]/10
[...]

[Continue for all 6 dimensions]

## By Platform

### Meta Ads — [score]/100
[Breakdown by dimension]

### Google Ads — [score]/100
[...]

### TikTok Ads — [score]/100
[...]

## Dropshipping Audit (if applicable)
[6 sub-sections from Dropshipping Checklist]

## 7-Day Action Plan

| Day | Action | Platform | Owner | Expected outcome |
|-----|--------|----------|-------|------------------|
| Day 1 | [Quick wins + Critical fixes] | | | |
| Day 2-3 | [High priority] | | | |
| Day 4-5 | [Tracking + creative] | | | |
| Day 6-7 | [Setup + test deploy] | | | |

## 30-Day Forecast
[Realistic improvement estimate if all Critical/High fixed]

## Appendix
- Raw data exports
- Screenshots
- MCP query logs (if used)
```

---

## Cross-references

| When you need | Call skill |
|---------------|-----------|
| Diagnose current KPIs and funnel | `03-performance-eval-global` |
| Deep data analysis (descriptive→prescriptive) | `13-data-analysis-global` |
| Refresh creative after audit finds fatigue | `05-ad-copy-global` + `06-ugc-egc-brief-global` |
| Reverse-calc budget after fixing tracking | `10-reverse-kpi-calc-global` |
| Dropshipping product/supply audit | `29-dropshipping-mastery-global` |
| Set up A/B test for fixes | `19-ab-test-setup-global` |

---

## Quality Checklist (before delivery)

- [ ] Region variant loaded and benchmarks contextualized
- [ ] All 84 checks scored (no skipped)
- [ ] Health Score calculated per platform AND aggregate
- [ ] Critical issues separated and fix-in-24h flagged
- [ ] Quick Wins ≤15 min each, sorted by impact
- [ ] Dropshipping section included if business model = dropship
- [ ] 7-day Action Plan with owner + expected outcome per row
- [ ] 30-day forecast realistic (not over-promise)
- [ ] No "improve creative" without specifying WHICH creative + WHY
- [ ] No scaling recommendation when Critical tracking fails
- [ ] No edits suggested for ad sets in Learning Phase
- [ ] Cross-references called when needed (e.g. `06` for creative)

---

## Region Variant References

Load the appropriate file before scoring:
- `variants/01-us.md` — United States, Canada
- `variants/02-eu.md` — European Union, UK
- `variants/03-sea.md` — Vietnam, Thailand, Indonesia, Philippines, Singapore, Malaysia
- `variants/04-latam.md` — Brazil, Mexico, Argentina, Colombia, Chile

Each variant contains: healthy CPM/CPC ranges, ROAS targets per business model, common red flags, region-specific compliance gates, and tracking platform peculiarities.
