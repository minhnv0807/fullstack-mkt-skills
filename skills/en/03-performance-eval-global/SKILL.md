---
name: 03-performance-eval-global
description: "Diagnose marketing performance for global businesses — root cause analysis, 5-Whys, 48-hour action plan. Has 4 region variants for benchmarks (US/EU/SEA/LATAM). Reads `.agents/product-marketing-context-global.md`. INCLUDES Dropshipping KPI section (ROAS, BE-ROAS, profit margin, CAC). Trigger: 'performance review', 'ad performance', 'marketing diagnosis', 'KPI analysis', 'dropshipping ROAS'."
metadata:
  version: 1.0.0
  category: performance
license: MIT
triggers:
  - "performance review"
  - "ad performance"
  - "marketing diagnosis"
  - "KPI analysis"
  - "dropshipping ROAS"
related:
  - product-marketing-context-global
  - 07-marketing-report-global
  - 10-reverse-kpi-global
  - 13-data-analysis-global
  - 21-ads-audit-global
  - 29-dropshipping-mastery-global
---

# Performance Evaluation (Global)

Diagnose marketing performance — paid ads, organic, funnel — find root cause, propose optimization with 48h action plan and weekly checklist. Region variants (US/EU/SEA/LATAM) provide localized benchmarks.

---

## For newbies — Read this first

If you've never done a performance review:

1. **Performance evaluation = a structured health check** of your marketing. You collect numbers, compare against benchmarks, find the gap, and propose fixes.
2. **You don't need everything perfect to start.** Even rough data (last 30 days spend + leads + revenue) is enough for a first pass.
3. **The order matters:** measure first, diagnose second, fix third. Don't jump to "let's redo creative" before checking why CTR dropped.
4. **Benchmarks are regional.** A $10 CPM in the US is normal; in SEA it's expensive. Always pick the right region variant.
5. **One metric at a time.** Don't try to fix CPM, CTR, CPL, ROAS simultaneously — pick the bottleneck and fix that first.
6. **The 5-Whys method works.** Ask "why?" five times until you hit a root cause that's actionable (process, system, or skill gap — not a symptom).
7. **Health Score 0-100** gives you a single number to track. Below 60 = stop scaling, fix first. Above 75 = safe to optimize and grow.

---

## Step 0 — Read context + select region variant

Before diagnosis:

1. **Read `.agents/product-marketing-context-global.md`** — get product, audience, region, currency, current channels.
2. **Pick the region variant:**
   - `variants/01-us.md` — North America (USD)
   - `variants/02-eu.md` — Europe (EUR/GBP, GDPR-aware)
   - `variants/03-sea.md` — Southeast Asia (USD/local, low CPM)
   - `variants/04-latam.md` — Latin America (USD/BRL/MXN, WhatsApp-first)
3. **Auto-pull data** if MCP integrations are connected (Meta Official MCP, Google Ads MCP, TikTok Ads MCP, Pipeboard).

### Information gathering

Ask user up to 4 questions:

1. **Which channel(s) to audit?** Meta / Google / TikTok / LinkedIn / email / organic / all?
2. **Current numbers?** Spend, impressions, clicks, CTR, CPM, CPC, leads, CPL, conversions, CPA, ROAS, time period.
3. **What's the issue?** CPM rising / ROAS dropping / lead quality poor / no orders / creative fatigue?
4. **Original target KPI?** What was the goal — CPL, CPA, ROAS, monthly leads/orders?

### Auto-pull via MCP (if connected)

| Platform | MCP recommended | Data pulled |
|----------|----------------|-------------|
| Meta Ads | Meta Official MCP (`mcp.facebook.com/ads`) | 29 tools — performance, anomalies, benchmarks |
| Meta Ads (alt) | Pipeboard, brijr/meta-mcp | Targeting research, ad library |
| Google Ads | Google Official MCP | GAQL — cost, clicks, conv, impression share |
| TikTok Ads | AdsMCP/tiktok-ads-mcp-server | Campaign performance reports |
| Cross-platform | Adspirer ads-mcp | 175+ tools, unified metrics |

**Quick MCP diagnostic flow:**

```
1. ads_insights_performance_trend → trending down?
2. ads_insights_anomaly_signal → which KPI is abnormal?
3. ads_insights_industry_benchmark → vs. industry?
4. ads_get_opportunity_score → what does Meta suggest?
→ Feed into Benchmark Table + Diagnostic Tree
```

---

## Universal diagnosis framework

### Part 0 — Ads Health Score (0-100)

```
Health Score = Σ(Check_pass × W_severity × W_category) / Σ(Check_total × W_severity × W_category) × 100
```

| Severity | Weight | Example checkpoints |
|----------|--------|--------------------|
| Critical | 5× | Pixel not firing, CAPI not setup, CPA > 3× target |
| High | 3× | Creative similarity > 60%, budget < 5× CPA/day |
| Medium | 1.5× | No retargeting audience, headline > 40 chars |
| Low | 0.5× | Naming convention not followed |

| Score | Grade | Action |
|-------|-------|--------|
| 90–100 | A | Excellent — focus on scaling |
| 75–89 | B | Good — fix Medium, scale gently |
| 60–74 | C | Average — fix High before scaling |
| 40–59 | D | Poor — fix Critical + High first |
| <40 | F | Danger — pause, full audit, rebuild |

### Part 1 — Diagnostic decision tree

```
[CPM HIGH]
  |-- CTR low (<1%)?
  |     |-- Weak hook → rewrite first 3s
  |     |-- Wrong targeting → narrow/expand audience
  |     |-- Stale creative (>7d) → make new creative
  |
  |-- CTR normal (1–3%) but CPM still high?
  |     |-- Auction peak → reduce budget, shift schedule
  |     |-- Audience too small → expand, test new LAL
  |     |-- Bid too high → switch to lowest cost
  |
  |-- CTR high (>3%) but CPM high?
        |-- Landing page/inbox not converting → fix LP
        |-- Unclear CTA → rewrite CTA
```

```
[ROAS LOW (<2x)]
  |-- CPM ok but few conversions?
  |     |-- Funnel leak → check each step
  |     |-- Slow sales response → improve speed, script
  |     |-- Wrong offer/price → review offer
  |
  |-- High CPM + few conversions?
  |     |-- Loop back to CPM tree
  |
  |-- Many orders but low AOV?
        |-- Weak cross-sell/upsell → bundles, larger packages
        |-- Bargain hunters → tighten targeting
```

```
[POOR LEAD QUALITY]
  |-- Many messages but few qualified leads?
  |     |-- Targeting too broad → narrow with LAL of best customers
  |     |-- Wrong-fit content → adjust hook + CTA
  |     |-- Value prop unclear → educate before CTA
  |
  |-- Qualified leads but no booking?
  |     |-- Slow follow-up (>2h) → respond within 15 min
  |     |-- Weak close script → rewrite, train sales
  |     |-- Price too high → bundle, financing, trial
  |
  |-- Booking but no-show?
        |-- No reminder → auto-remind 24h + 2h before
        |-- Trust gap → nurture more before booking
        |-- Decision fatigue → simplify booking flow
```

### Part 2 — Root Cause Analysis (5 Whys)

Ask "Why?" 5 times until you reach a process/system/skill root cause:

| Round | Why? | Answer |
|-------|------|--------|
| 1 | Why did CPM rise? | CTR dropped from 2.5% → 1.1% |
| 2 | Why did CTR drop? | Creative ran 12 days, audience saturation |
| 3 | Why did creative run so long? | No creative refresh schedule |
| 4 | Why no schedule? | No SOP for periodic creative review |
| 5 | Why no SOP? | No creative rotation process defined |

**Root cause:** Missing SOP for creative rotation
**Solution:** Lock in 3-5 new creatives/week, review every 3-5 days

### Part 3 — Creative fatigue indicators

| Indicator | Warning | Danger | Action |
|-----------|---------|--------|--------|
| Frequency | >2.5 | >4 | Refresh creative, expand audience |
| CTR decline | -20% vs first 3 days | -40% | New creative |
| CPA increase | +25% vs first 3 days | +50% | Pause, test new |
| Run time | >7 days | >14 days | Mandatory refresh |
| Engagement decline | -30% comments/shares | -50% | Switch angle |
| Negative feedback | >3% | >5% | Pause immediately |

### Part 4 — Audience saturation indicators

| Metric | Healthy | Warning | Action |
|--------|---------|---------|--------|
| Audience overlap (between ad sets) | <20% | >30% | Merge or exclude |
| Frequency | <2.5 | >4 | Expand audience, new creative |
| Reach vs audience size | <50% | >70% | Audience too small, expand |
| Cost per incremental result | Stable | +30% | Saturated — find new audience |
| % new users in clicks | >60% | <40% | Re-showing to existing — refresh |

---

## Decision tree — which variant to use

Use the variant that matches your **ad account billing region**, NOT just where the user is located:

| Region | Variant | When to use |
|--------|---------|-------------|
| United States, Canada | `01-us.md` | Account billed in USD, US/CA traffic |
| UK, EU, EEA | `02-eu.md` | Account billed in EUR/GBP, GDPR consent stack |
| SEA (Vietnam, Thailand, Indonesia, Philippines, Malaysia, Singapore) | `03-sea.md` | Lower CPM, mobile-first, super-app context |
| LATAM (Brazil, Mexico, Colombia, Argentina, Chile) | `04-latam.md` | WhatsApp-dominant, low CPM, FX volatility |

If running multi-region: load multiple variants, compare benchmarks side-by-side, set per-region targets.

---

## Dropshipping KPI section

Dropshipping has different success criteria than typical service/B2B marketing. Use this layer when product is sourced from suppliers (AliExpress, CJ, Zendrop) and shipped directly to customer.

### Core KPIs

| KPI | Formula | Healthy target |
|-----|---------|----------------|
| **ROAS** | Revenue / Ad spend | 2.5–3x minimum, 4x+ ideal |
| **BE-ROAS** (Break-even ROAS) | 1 / Profit margin | If margin = 30%, BE-ROAS = 3.33x |
| **Profit margin** | (Revenue − COGS − Shipping − Fees − Ad spend) / Revenue | 20%+ healthy, 25%+ ideal |
| **CAC** (Customer Acquisition Cost) | Ad spend / Customers acquired | < AOV × Profit margin |
| **CPA** (Cost Per Add-to-cart / Purchase) | Ad spend / Conversions | <30% of AOV |
| **AOV** (Average Order Value) | Revenue / Orders | Higher AOV = lower BE-ROAS pressure |

### BE-ROAS formula

```
BE-ROAS = 1 / Profit margin

Examples:
  Margin 20% → BE-ROAS = 5.0x   (you need 5x ROAS just to break even)
  Margin 25% → BE-ROAS = 4.0x
  Margin 30% → BE-ROAS = 3.33x
  Margin 35% → BE-ROAS = 2.86x
  Margin 40% → BE-ROAS = 2.5x
  Margin 50% → BE-ROAS = 2.0x
```

> Below BE-ROAS = losing money on every order.
> 1.2× BE-ROAS = healthy growth zone.
> 2× BE-ROAS = scale aggressively.

### Dropshipping diagnostic flags

| Flag | Threshold | Action |
|------|-----------|--------|
| ROAS < BE-ROAS for 7 days | Always losing | Pause, redo product/creative |
| Profit margin < 20% | Too thin | Raise price OR find cheaper supplier |
| Refund rate > 5% | Too high | Audit product quality + ad claims |
| Chargeback rate > 1% | Critical | Review CB reasons, may risk Stripe ban |
| Shipping time > 18 days | Long | Switch to faster supplier or warehouse stock |
| Cart abandon > 75% | Too high | Audit checkout (shipping cost reveal, slow load) |

### When to scale dropshipping

| Signal | Threshold | Decision |
|--------|-----------|----------|
| ROAS sustained > 2× BE-ROAS | 7+ consecutive days | Scale +20% per cycle |
| 30+ purchases at target CPA | Within ad set | CBO scaling allowed |
| Profit margin stable > 25% | 14+ days | Open new market |
| Email/SMS list > 1000 | Reached | Add retention campaigns |

> See skill `29-dropshipping-mastery-global` for full dropshipping playbook.

---

## 48-hour action plan template

Apply when CRITICAL issue detected:

| # | Time | Action | Severity | Expected outcome |
|---|------|--------|----------|------------------|
| 1 | 0–2h | Pause creatives/ad sets with CPA > 2x target | CRITICAL | Stop bleeding spend |
| 2 | 2–4h | Deep-dive data: which creative, audience, time slot | CRITICAL | Identify root cause |
| 3 | 4–8h | Duplicate winning ad set, test new creatives | HIGH | New creative live |
| 4 | 8–12h | Adjust audience: exclude overlap, test new LAL | HIGH | Reduce frequency |
| 5 | 12–24h | A/B test 3 new hooks for top creative | HIGH | Find better hook |
| 6 | 12–24h | Review landing page / inbox flow | MEDIUM | Fix funnel leak |
| 7 | 24–36h | Compare new vs. old performance | MEDIUM | Decide next step |
| 8 | 36–48h | Report + propose week-2 plan | MEDIUM | Concrete plan |

---

## Weekly optimization checklist

| Day | Focus |
|-----|-------|
| Mon | Compare WoW KPIs, identify top/bottom 3 creatives, check frequency + audience overlap |
| Tue | Make 3-5 new creatives, test new hook, review UGC pipeline + organic |
| Wed | Optimize bid/budget on winners, pause CPA > 2x target, test new audiences |
| Thu | Check Mess→Lead, Lead→Booking, response time, sales script |
| Fri | WoW table, top 3 priorities for next week, content calendar update |

---

## Cross-reference

| Need | Skill |
|------|-------|
| Full audit with 84 checkpoints | `21-ads-audit-global` |
| Monthly report | `07-marketing-report-global` |
| Recompute budget from revenue target | `10-reverse-kpi-global` |
| New ad copy with frameworks | `05-ad-copy-global` |
| New video script | `04-script-video-global` |
| Replan from scratch | `00-marketing-plan-global` |
| Dropshipping-specific playbook | `29-dropshipping-mastery-global` |

---

## Quality checklist

Before delivering evaluation:

- [ ] Region variant loaded — benchmarks match user's market
- [ ] Health Score estimated (if data sufficient) — <60 means fix first
- [ ] User data filled into benchmark tables
- [ ] Diagnostic decision tree run — root cause named
- [ ] 5 Whys done — process/system root cause, not symptom
- [ ] Creative fatigue + audience saturation checked
- [ ] WoW + MoM trend analysis included
- [ ] 48h action plan has time, owner, expected outcome
- [ ] Top 3 priorities with deadlines
- [ ] If dropshipping: BE-ROAS calculated, profit margin verified
- [ ] All numbers verifiable — no vague estimates
- [ ] Recommendations realistic for user's resources
