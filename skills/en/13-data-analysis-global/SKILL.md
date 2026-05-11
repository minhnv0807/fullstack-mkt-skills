---
name: 13-data-analysis-global
description: Turn raw marketing data into actionable insight — analysis by channel, campaign, creative, audience, time. Descriptive → Diagnostic → Predictive → Prescriptive.
metadata:
  version: 2.5.0
  category: performance
  language: en
triggers:
  - "data analysis"
  - "analyze data"
  - "marketing analytics"
  - "Meta Ads analysis"
  - "TikTok Ads analysis"
  - "GA4 report"
  - "performance analysis"
  - "Triple Whale"
  - "Hyros"
  - "Northbeam"
output: A .md report structured as Descriptive, Diagnostic, Predictive, Prescriptive — with tables and concrete recommendations
related:
  - 03-performance-review-global
  - 07-marketing-report-global
  - 10-reverse-kpi-calc-global
  - 12-landing-page-brief-global
---

# Marketing Data Analysis (Global)

> Insight before numbers. Lead with judgment, illustrate with data — never list numbers without interpretation.

---

## Information Gathering

Ask up to 4 questions:

1. **Data source?** Meta Ads, TikTok Ads, GA4, Shopify, Triple Whale/Hyros/Northbeam, Google Sheets — single source or combined?
2. **Time window?** This week, this month, A vs B (e.g. March vs April)?
3. **Current business goal?** Increase leads, lower CPL, raise ROAS, or a specific issue to fix?
4. **Paste data here** — drop a table, or describe core metrics (spend, impressions, clicks, leads, revenue).

---

## Analysis Principles

### Reading Order

```
1. DESCRIPTIVE   — What happened? (numbers, trends)
2. DIAGNOSTIC    — Why? (root cause)
3. PREDICTIVE    — What's next? (forecast)
4. PRESCRIPTIVE  — What to do? (concrete actions)
```

### Presentation Rules

| Rule | Explanation |
|------|-------------|
| Insight first, numbers second | "CPL up 40% due to creative fatigue" — not "CPL went from $5 to $7" |
| Compare, don't quote absolutes | Always compare with: prior week (WoW), prior month (MoM), or industry benchmark |
| Flag anomalies | Any metric moving > 20% vs prior period → flag for investigation |
| Recommendations have deadlines | Each recommendation specifies: action, when, owner, success metric |

---

## Analysis Frameworks by Source

### Meta Ads

| Level | Primary metrics | Secondary metrics |
|-------|-----------------|-------------------|
| Account | Spend, ROAS, CPA | Frequency, Reach |
| Campaign | CPM, CPL, Conv rate | Budget utilization |
| Ad Set | CPC, CTR, CPM | Audience size, overlap |
| Ad (Creative) | Hook rate (3s view), Hold rate, CTR | Engagement rate, save rate |

**Reading Meta Ads:**

```
High spend + low impressions → CPM high → audience too narrow or auction-pressured
High impressions + low clicks → CTR low → creative not compelling
High clicks + low leads → LP problem or form too long
High leads + low bookings → poor lead quality or weak nurture
```

### TikTok Ads

| Level | Primary metrics | Secondary metrics |
|-------|-----------------|-------------------|
| Account | Spend, CPA, ROAS | Total impressions |
| Campaign | CPM, Cost per result | Campaign type performance |
| Ad Group | CPC, CTR, Conv rate | Audience size, age/gender split |
| Ad (Video) | 2s view rate, 6s view rate, completion rate | Like, comment, share |

**Reading TikTok Ads:**

```
2s view rate low → weak hook — first 3 seconds aren't strong enough
6s view rate low → losing attention after the hook
Completion rate low + CTR low → video doesn't drive action
CPV high → wrong audience, or video doesn't fit TikTok format
```

### Google Analytics 4

| Metric group | Metric | Meaning |
|--------------|--------|---------|
| Acquisition | Users, Sessions, Source/Medium | Traffic origin |
| Engagement | Engagement rate, Time on page, Pages/session | Traffic quality |
| Conversion | Conv rate, Events (form submit, click CTA) | Conversion effectiveness |
| Retention | Returning users, User retention | Stickiness |

**Reading GA4:**

```
Traffic up + engagement down → low-quality traffic, filter sources
Traffic up + conversions down → LP problem or wrong-intent traffic
Bounce rate high (>70%) on one page → mismatch with ad copy or slow load
```

### E-commerce Attribution Tools (Dropshipping/DTC)

For dropshipping or DTC stores, native ad-platform metrics often diverge from real revenue. Use one of these:

| Tool | Best for | Key feature |
|------|----------|-------------|
| **Triple Whale** | Shopify DTC | Pixel-based attribution, blended ROAS, AI insights |
| **Hyros** | Info products + DTC | Server-side tracking, long-window attribution |
| **Northbeam** | High-spend DTC ($100K+/mo) | MTA + MMM, incrementality testing |
| **Polar Analytics** | Mid-market DTC | All-in-one dashboards, source-of-truth tracking |
| **Wicked Reports** | Email-heavy DTC | Multi-touch attribution including email |

**Cross-checking:** when Meta reports 5x ROAS but Shopify reports 2x ROAS, trust the platform-of-record (Shopify). The gap is usually iOS 14+ attribution loss.

### Spreadsheet Data (Manual)

When user pastes data from a sheet:

1. Identify core columns: date, channel, spend, units (impressions/clicks/leads/orders), revenue
2. Compute derived metrics: CPL, CPA, ROAS, conversion rate
3. Sort by time to surface trends
4. Group by channel/campaign for comparison

---

## Trend Detection

### Week over Week (WoW)

| Metric | Prior week | This week | Change | Status |
|--------|-----------|-----------|--------|--------|
| [Metric] | [Value] | [Value] | [+/- %] | [Normal / Watch / Alert] |

**Alert thresholds:**
- 10–20% change → monitor, no action yet
- 20–40% change → investigate, prepare a response
- > 40% change → act now

### Month over Month (MoM)

| Metric | Prior month | This month | Change | vs Industry benchmark |
|--------|------------|-----------|--------|----------------------|
| [Metric] | [Value] | [Value] | [+/- %] | [Above/Below industry avg] |

### Seasonality (Global)

| Period | Impact | Adjustment |
|--------|--------|-----------|
| Q4 holiday (US: Black Friday → Christmas) | CPM +30–50%, conversion up | Increase budget; book inventory early; lock LPs |
| Chinese New Year | Asia logistics paused, CPM +20% in APAC | Move launches before/after; warn customers about shipping |
| Back-to-school (US: Aug; UK: Sep) | CPM +10–15% (education/electronics) | Plan from June |
| Valentine's, Mother's Day, Father's Day | CPM +15–25% (gifting niches) | Run campaigns 1 week before |
| Summer (Northern hemisphere: Jun–Aug) | CPM dips 10–15% in many verticals | Test creative, scale new channels |
| Ramadan / Eid (varies by year) | MENA conversion shifts | Adjust tone, timing — engagement spikes after iftar |

---

## Anomaly Detection (Decision Trees)

### CPL Spike

```
CPL up
├── CTR down? → Creative fatigue → Refresh creative
├── CTR normal + Conv rate down? → LP issue
│   ├── Slow load? → Check PageSpeed
│   ├── Form broken? → Test form on mobile
│   └── Wrong intent traffic? → Audit audience targeting
└── CPM up? → Auction pressure or seasonality
    ├── Holiday / sale season? → Increase budget or pause
    └── Competitor spend up? → Switch audience or channel
```

### ROAS Drop

```
ROAS down
├── Revenue down + spend flat? → Conversion problem
│   ├── Lead quality poor? → Check audience
│   ├── Sales team slow? → Check response time
│   └── Pricing changed? → Audit pricing
├── Revenue flat + spend up? → Over-spending
│   ├── Scaled too fast? → Reduce, max 20%/day increase
│   └── New channel not optimized? → Stop scaling, optimize first
└── Both down? → Systemic issue
    ├── Competitor running big promo? → Competitor scan
    └── Off-season? → Check seasonality
```

### Engagement Drop

```
Engagement down
├── Reach down? → Algo de-prioritized
│   ├── Too many promo posts? → Increase educational/entertainment ratio
│   └── Posting too often? → Reduce frequency
├── Reach normal + ER down? → Content not compelling
│   ├── Stale format? → Try new formats (carousel, POV, duet)
│   └── Repetitive topics? → Rotate angles per content matrix
└── Reach up + ER down? → Wrong audience reaching
```

---

## Cohort Analysis

### Monthly Cohort Template

| Cohort (signup month) | Month 1 | Month 2 | Month 3 | Month 6 | Month 12 |
|-----------------------|---------|---------|---------|---------|----------|
| Jan 2026 (100 customers) | 100% | [X%] active | [X%] | [X%] | [X%] |
| Feb 2026 (120 customers) | 100% | [X%] | [X%] | [X%] | — |
| Mar 2026 (95 customers) | 100% | [X%] | [X%] | — | — |

**Reading:**
- Steady decline across months → natural churn, build retention program
- Sharp drop in month 2 → bad first experience, fix onboarding
- Stable from month 3 → retention floor reached, focus on this segment

### Cohort by Acquisition Source

| Source | Customers | CAC | LTV 90 days | LTV:CAC |
|--------|-----------|-----|-------------|---------|
| Meta Ads | [X] | [X] | [X] | [X:1] |
| TikTok Ads | [X] | [X] | [X] | [X:1] |
| Organic | [X] | [X] | [X] | [X:1] |
| Referral | [X] | [X] | [X] | [X:1] |
| Email | [X] | [X] | [X] | [X:1] |

**Healthy LTV:CAC** is generally 3:1 or better.

---

## Attribution Models

### Comparing 3 Models

| Model | How it credits | When to use |
|-------|---------------|-------------|
| Last Click | 100% to final touch | Default, simple, short funnels |
| First Click | 100% to first touch | Evaluating TOFU/awareness channels |
| Linear | Equal split across all touches | Long funnels, multi-channel, fair credit |

**Attribution comparison template:**

| Channel | Last Click | First Click | Linear | Note |
|---------|-----------|-------------|--------|------|
| Meta Ads | [X orders] | [X orders] | [X orders] | [Role: TOFU/BOFU?] |
| TikTok Ads | [X orders] | [X orders] | [X orders] | [Role?] |
| Google Search | [X orders] | [X orders] | [X orders] | [Role?] |
| Organic | [X orders] | [X orders] | [X orders] | [Role?] |
| Email | [X orders] | [X orders] | [X orders] | [Role?] |

**Recommendations:**
- Short funnel (1–3 days): Last Click works
- Medium funnel (7–14 days): use Linear
- Long funnel (30+ days): First Click for TOFU, Last Click for BOFU
- DTC/dropshipping at scale: switch to a dedicated tool (Triple Whale, Hyros, Northbeam)

---

## Output Template

```markdown
# Data Analysis Report — [Brand/Campaign]
Period: [Start] — [End]
Data sources: [Meta Ads / TikTok Ads / GA4 / Shopify / ...]
Analysis date: [YYYY-MM-DD]

---

## 1. Executive Summary

**3 most important insights:**
1. [Insight 1 — written as judgment, not raw numbers]
2. [Insight 2]
3. [Insight 3]

**Overall status:** [Green = stable | Yellow = monitor | Red = urgent action]

---

## 2. Descriptive — What happened?

### Top-line metrics

| Metric | This period | Prior period | Change | Industry benchmark | Status |
|--------|-------------|--------------|--------|--------------------|--------|
| Spend | [X] | [X] | [+/- %] | — | [icon] |
| Impressions | [X] | [X] | [+/- %] | — | [icon] |
| Clicks | [X] | [X] | [+/- %] | — | [icon] |
| CTR | [X%] | [X%] | [+/- %] | [X%] | [icon] |
| Leads | [X] | [X] | [+/- %] | — | [icon] |
| CPL | [X] | [X] | [+/- %] | [X] | [icon] |
| ROAS | [Xx] | [Xx] | [+/- %] | [Xx] | [icon] |

### Performance by channel

| Channel | Spend | Leads | CPL | ROAS | % of budget | Note |
|---------|-------|-------|-----|------|-------------|------|
| Meta Ads | [X] | [X] | [X] | [Xx] | [X%] | [1 sentence] |
| TikTok Ads | [X] | [X] | [X] | [Xx] | [X%] | [1 sentence] |
| Google Ads | [X] | [X] | [X] | [Xx] | [X%] | [1 sentence] |

### Top 5 campaigns

| Campaign | Spend | Leads | CPL | ROAS | Note |
|----------|-------|-------|-----|------|------|
| 1. [Name] | [X] | [X] | [X] | [Xx] | [1 sentence] |
| 2. [Name] | [X] | [X] | [X] | [Xx] | [1 sentence] |
| 3. [Name] | [X] | [X] | [X] | [Xx] | [1 sentence] |
| 4. [Name] | [X] | [X] | [X] | [Xx] | [1 sentence] |
| 5. [Name] | [X] | [X] | [X] | [Xx] | [1 sentence] |

### Top 3 creatives

| Creative | Format | Hook rate | CTR | CPL | Days running | Note |
|----------|--------|-----------|-----|-----|--------------|------|
| 1. [Name/desc] | [Video/Image/Carousel] | [X%] | [X%] | [X] | [X days] | [1 sentence] |
| 2. [Name/desc] | [Format] | [X%] | [X%] | [X] | [X days] | [1 sentence] |
| 3. [Name/desc] | [Format] | [X%] | [X%] | [X] | [X days] | [1 sentence] |

---

## 3. Diagnostic — Why?

### What's working — why?
- [Cause 1 + supporting data]
- [Cause 2 + supporting data]

### What's not — why?
- [Cause 1 + supporting data + remedy]
- [Cause 2 + supporting data + remedy]

### Anomalies to investigate
- [Anomaly 1 — description + likely cause + investigation step]
- [Anomaly 2]

---

## 4. Predictive — Forecast

### Next period (3 scenarios)

| Metric | Bear | Base | Bull |
|--------|------|------|------|
| Spend | [X] | [X] | [X] |
| Leads | [X] | [X] | [X] |
| CPL | [X] | [X] | [X] |
| ROAS | [Xx] | [Xx] | [Xx] |
| Revenue | [X] | [X] | [X] |

### Forecast drivers
- [Driver 1: seasonality, competitor, algo change, ...]
- [Driver 2]

---

## 5. Prescriptive — Actions

### Act now (next 48h)
| # | Action | Owner | Deadline | Measure by |
|---|--------|-------|----------|------------|
| 1 | [Specific action] | [Role] | [Date] | [Metric] |
| 2 | [Specific action] | [Role] | [Date] | [Metric] |

### This week
| # | Action | Owner | Deadline | Measure by |
|---|--------|-------|----------|------------|
| 1 | [Specific action] | [Role] | [Date] | [Metric] |
| 2 | [Specific action] | [Role] | [Date] | [Metric] |

### This month
| # | Action | Owner | Deadline | Measure by |
|---|--------|-------|----------|------------|
| 1 | [Specific action] | [Role] | [Date] | [Metric] |
| 2 | [Specific action] | [Role] | [Date] | [Metric] |
```

---

## Auto-Diagnostics

When analyzing, automatically check these conditions:

| Condition | Check | Action |
|-----------|-------|--------|
| CPL up > 30% WoW | Creative running > 14 days? Frequency > 3? | Refresh creative, rotate audience |
| CTR < 0.8% | Strong 3s hook? Eye-catching imagery? | A/B test hooks, change opening frame |
| ROAS < 2x for 7 days | Right audience? LP conv rate? | Narrow audience, audit LP |
| LP conv rate < 3% | Load time? Form length? CTA clarity? | Trigger skill 12-landing-page-brief-global |
| Frequency > 4 | Audience saturated | Expand audience or switch channel |
| Spend < 70% of budget | Audience too narrow or bid too low | Expand audience, raise bid |
| One channel > 60% spend | Single-channel dependency risk | Reallocate, test new channel |

---

## Skill Cross-references

- **`03-performance-review-global`** — broader marketing performance review
- **`07-marketing-report-global`** — turn analysis into stakeholder-ready monthly/quarterly report
- **`10-reverse-kpi-calc-global`** — recompute KPIs and budget from real data
- **`12-landing-page-brief-global`** — when LP conversion is the bottleneck
- **`05-ad-copy-global`** — when creative is the bottleneck
- **`15-social-listening-global`** — add qualitative data (sentiment, trends) alongside quantitative

---

## Quality Checklist

### Before delivering the report

- [ ] Every insight has supporting data
- [ ] Every number is compared (WoW, MoM, or vs benchmark)
- [ ] Anomalies (> 20% change) flagged and explained
- [ ] Recommendations specify: owner, deadline, success metric
- [ ] Forecast includes 3 scenarios (bear, base, bull)
- [ ] No raw numbers without interpretation
- [ ] Source and time window are clearly stated
- [ ] Cross-checked: ad-platform spend matches actual spend
- [ ] For dropshipping/DTC: revenue cross-checked between Shopify and ad platform
