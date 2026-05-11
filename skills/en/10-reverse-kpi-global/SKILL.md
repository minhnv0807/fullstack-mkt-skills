---
name: 10-reverse-kpi-global
description: "Reverse KPI calculation for global marketing budgets — work backward from revenue goal to required spend. Universal math, currency-specific per region (US/EU/SEA/LATAM). 3-scenario sensitivity analysis (pessimistic/realistic/optimistic). Trigger: 'reverse KPI', 'budget calculation', 'KPI breakdown', 'marketing budget plan', 'campaign budget'."
metadata:
  version: 1.0.0
  category: strategy
license: MIT
triggers:
  - "reverse KPI"
  - "budget calculation"
  - "KPI breakdown"
  - "marketing budget plan"
  - "campaign budget"
related:
  - product-marketing-context-global
  - 00-marketing-plan-global
  - 03-performance-eval-global
  - 07-marketing-report-global
---

# Reverse KPI Calculation (Global)

Calculate marketing budget by working backward from revenue goal — or forward from available spend to expected revenue. Universal math; currency and benchmark numbers vary per region (US/EU/SEA/LATAM).

---

## For newbies — Read this first

If you've never run a reverse KPI calc:

1. **Reverse KPI = working backward from a goal.** Instead of "I'll spend $5K and see what happens," you say "I want $50K in revenue, so I need X impressions, Y leads, Z customers — therefore the budget is $W."
2. **It works in two directions:**
   - Backward: Revenue target → required spend (when you have a goal)
   - Forward: Available spend → expected revenue (when you have a budget)
3. **You always run 3 scenarios.** Pessimistic (worst case), Realistic (base case), Optimistic (best case). One number is dangerous — three numbers force you to stress-test.
4. **Conversion rates are the leverage.** Small changes in conversion (e.g., 50% → 55%) cascade up the funnel and change your budget significantly.
5. **Currency matters.** A 5% margin in USD is different in EUR, BRL, or VND. Always pick the right region variant for your benchmarks.
6. **Don't trust round numbers.** "100 leads" is suspicious — real funnels produce odd numbers like 87 or 213.
7. **Time horizon affects budget.** A $50K monthly target needs different planning than a $50K annual target. Always specify the period.

---

## Step 0 — Read context + select region variant

Before calculation:

1. **Read `.agents/product-marketing-context-global.md`** — get product, AOV, region, currency, target market.
2. **Pick region variant for benchmark conversion rates and CPM/CPL:**
   - `variants/01-us.md` — USD, US benchmarks
   - `variants/02-eu.md` — EUR/GBP, EU benchmarks
   - `variants/03-sea.md` — USD/local, SEA benchmarks
   - `variants/04-latam.md` — USD/BRL/MXN, LATAM benchmarks
3. **Confirm direction:** Reverse (revenue → spend) or Forward (spend → revenue)?

### Information gathering

Ask user up to 4 questions:

1. **What is the goal?** Revenue target $X/month? Or available budget $Y to allocate?
2. **Product/service and AOV?** Average order value or deal size in your currency.
3. **Industry and current channel mix?** Industry niche? Channels currently running? Any existing CPL/CPM data?
4. **Campaign duration?** 1 month? Quarter? 6 months? Phased?

---

## Two calculation directions

### Direction 1 — Reverse: Revenue → Budget

Use when: "I want to hit $200K/month — how much ad spend do I need?"

```
Revenue target
  / AOV (average order value)
  = ORDERS NEEDED
  / Booking → Customer rate
  = BOOKINGS NEEDED
  / Lead → Booking rate
  = LEADS NEEDED
  / Click → Lead rate
  = CLICKS NEEDED
  / CTR
  = IMPRESSIONS NEEDED
  × CPM / 1000
  = TOTAL AD BUDGET
```

For e-commerce (no booking step):

```
Revenue target
  / AOV
  = ORDERS NEEDED
  / Conversion rate
  = SESSIONS NEEDED (clicks)
  / CTR
  = IMPRESSIONS NEEDED
  × CPM / 1000
  = TOTAL AD BUDGET
```

For B2B (longer funnel):

```
Revenue target
  / ACV (annual contract value)
  = CUSTOMERS NEEDED
  / Win rate
  = OPPORTUNITIES NEEDED
  / SQL → Opportunity rate
  = SQL NEEDED
  / MQL → SQL rate
  = MQL NEEDED
  / Lead → MQL rate
  = LEADS NEEDED
  → continue with CPL × LEADS NEEDED = SPEND
```

### Direction 2 — Forward: Budget → Revenue

Use when: "I have $50K — how much revenue can I expect?"

```
Budget
  / CPM × 1000
  = IMPRESSIONS
  × CTR
  = CLICKS
  × Click → Lead rate
  = LEADS
  × Lead → Booking rate
  = BOOKINGS
  × Booking → Customer rate
  = ORDERS
  × AOV
  = REVENUE
```

---

## 3-Scenario sensitivity analysis (universal)

### Scenario structure

Always run three scenarios:

| Variable | Pessimistic | Realistic (Base) | Optimistic |
|----------|-------------|------------------|------------|
| CPM | Industry avg + 30% | Industry avg | Industry avg − 20% |
| Click → Lead | Industry avg − 15% | Industry avg | Industry avg + 15% |
| Lead → Booking | Industry avg − 10% | Industry avg | Industry avg + 10% |
| Booking → Customer | Industry avg − 10% | Industry avg | Industry avg + 10% |

### Reading the results

- **Pessimistic** = budget needed for safety / FX swings / first-month learning curve
- **Realistic (Base)** = the actual planning number
- **Optimistic** = aspiration target, used for stretch KPI or commission triggers

> Use Base for budget. Use Pessimistic as buffer. Use Optimistic as stretch goal.

### Sensitivity (which lever moves the budget most?)

| Variable | Base value | Change +10% | Budget change | Sensitivity |
|----------|-----------|-------------|---------------|-------------|
| CPM | [#] | +10% | +10% | **Direct 1:1** |
| CTR | [#]% | +10% | -9% | **High** |
| Click→Lead | [#]% | +10% | -9% | **High** |
| Lead→Booking | [#]% | +10% | -9% | **High** |
| Booking→Customer | [#]% | +10% | -9% | **High** |
| AOV | [#] | +10% | -9% (fewer orders needed) | **Indirect** |

### 80/20 rule

The two highest-leverage levers are usually:

1. **CPM** — controlled by creative + targeting → optimize via A/B testing
2. **Lead → Booking** — controlled by sales/CS quality → optimize via script + response speed

---

## Break-even calculation

```
Break-even orders = Fixed costs / (AOV − Variable cost per order)
Break-even days = Break-even orders / (Avg orders per day)
```

| Item | Value |
|------|-------|
| Fixed costs/month (rent, salary, tools, software) | [#] |
| Ad spend (variable, but allocated upfront) | [#] |
| Total fixed | [#] |
| AOV | [#] |
| Variable cost per order (COGS, shipping, fees) | [#] |
| Profit per order | AOV − VarCost = [#] |
| Break-even orders | Total fixed / Profit per order |
| Break-even days | BE orders / 30 |

| Result | Meaning | Action |
|--------|---------|--------|
| BE < 50% of expected orders | Safe — good margin buffer | Can scale spend |
| BE = 50–80% of expected | Tight — limited margin | Optimize cost first |
| BE > 80% of expected | Risky — easy to lose | Cut costs or raise AOV |

---

## Budget allocation by phase

| Phase | % of budget | Duration | Goal | Primary KPI |
|-------|-------------|----------|------|-------------|
| **Teaser / Awareness** | 15% | Week 1 | Curiosity, brand build | Reach, video views, saves |
| **Soft launch** | 20% | Week 2 | Test creative, first leads | CPL, lead, A/B test data |
| **Full launch** | 40% | Weeks 3–4 | Scale winners, drive sales | ROAS, orders, revenue |
| **Maintenance + retarget** | 25% | Week 5+ | Retarget, nurture, repeat | CPA, LTV, retention |

### Example allocation (budget $80K/month)

| Phase | % | Amount | Days | Daily |
|-------|---|--------|------|-------|
| Teaser | 15% | $12K | 7 | $1,714/day |
| Soft launch | 20% | $16K | 7 | $2,286/day |
| Full launch | 40% | $32K | 14 | $2,286/day |
| Maintenance | 25% | $20K | balance | depends on remaining days |

---

## Channel allocation principles

1. **Proven channel → 60-70% of budget.** Don't dilute by spreading evenly.
2. **New / test channel → 15-20% of budget.** Enough to gather data, not enough to bleed cash.
3. **Retarget → 10-15% of budget.** Highest ROAS — target previously engaged users.
4. **Switch channels when ROAS < 2x for 2 weeks.** Don't wait too long.

---

## ROI projection timeline

| Phase | Duration | Expectation | Track |
|-------|----------|-------------|-------|
| Testing | Weeks 1–2 | No orders yet, testing creative + audience | CPM, CTR, CPL |
| First results | Weeks 3–4 | First orders, ROAS still low | First orders, leads |
| Optimization | Month 2 | ROAS improving, stabilizing | ROAS, CPA |
| Scale | Month 3+ | Stable ROAS, controlled budget increases | ROAS held, revenue up |
| Mature | Month 6+ | Self-running, enough data to forecast | LTV, retention, organic % |

### Rules of thumb

| Rule | Explanation |
|------|-------------|
| First 2 weeks lose money | Learning cost — don't panic, don't pause |
| Base ROAS achieved by month 2 | Month 1 is testing, don't judge ROAS yet |
| Scale budget max 20%/week | Faster scaling = performance drops, CPM rises |
| ROAS drops 30% when scaling | Normal — wider audience = lower conv rate |
| Retarget ROAS 2-3x prospecting | Always allocate budget for retargeting |

---

## Cross-reference

| Need | Skill |
|------|-------|
| Full marketing plan first | `00-marketing-plan-global` |
| Current performance to inform calc | `03-performance-eval-global` |
| Competitive spend benchmarks | `08-competitor-research-global` |
| Customer insight to refine conv rates | `09-customer-insight-global` |
| Post-campaign data analysis | `13-data-analysis-global` |

---

## Quality checklist

Before delivering reverse KPI report:

- [ ] Region variant selected — currency and benchmarks match user's market
- [ ] Direction confirmed (reverse vs forward)
- [ ] Industry-specific conversion rates used (not generic averages)
- [ ] All 3 scenarios calculated (pessimistic, base, optimistic)
- [ ] Sensitivity analysis identifies top 2 levers + how to improve them
- [ ] Break-even calculated with risk grade
- [ ] Phase allocation has specific timeline
- [ ] Channel allocation matches industry mix
- [ ] ROI timeline realistic (no "ROAS 5x in week 1" promises)
- [ ] Total budget consistent across phase + channel breakdowns
- [ ] Seasonality noted if campaign falls on Q4/Tet/Carnival/Black Friday
- [ ] Currency conversion documented if cross-border
