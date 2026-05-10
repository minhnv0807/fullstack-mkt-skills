---
name: 07-marketing-report-global
description: "Marketing reports under 'read 5 minutes, know what to do next' principle — insights first, numbers as proof, recommendations with deadlines and owners. For global markets. Trigger: 'marketing report', 'monthly summary', 'weekly summary', 'monthly results', 'monthly report', 'performance report'."
metadata:
  version: 1.0.0
  category: operations
license: MIT
triggers:
  - "marketing report"
  - "monthly summary"
  - "weekly summary"
  - "monthly results"
  - "monthly report"
  - "performance report"
related:
  - 03-performance-review-global
  - 10-reverse-kpi-global
  - 00-marketing-plan-global
  - 13-data-analysis-global
---

# Marketing Report (Global)

## Information gathering

Ask up to 4 questions before reporting:

1. **Reporting period?** Week (which week, from-to dates) or month (month/year)?
2. **Available data?** Provide: ad spend, messages, leads, bookings, customers, revenue. If incomplete, note what's missing to ask.
3. **Targets set?** What KPIs were committed for this period? (revenue, leads, CPMess, ROAS). If none — use industry benchmarks.
4. **Channels running?** Meta Ads, TikTok Ads, Google Ads, Organic (TikTok, Facebook, Email/SMS). List all.

---

## Core principles

### "Read 5 minutes, know what to do next"

Every report must answer these 4 questions in order:

1. **How were results?** — Did we hit targets? (1 sentence)
2. **What's working?** — Keep, scale up (2-3 points)
3. **What's not working?** — Fix, root cause (2-3 points)
4. **What to do next?** — Specific recs with deadlines and owners

### Order of presentation

```
Insight FIRST -> Numbers AS PROOF -> Action RECOMMENDATIONS
```

Never list numbers and let reader draw conclusions. Always state insight first, numbers as evidence.

### 3 comparison frames

Each metric must compare against at least 1 of these 3 frames:

| Frame | Meaning | Example |
|-------|---------|---------|
| vs Target | Hit or miss committed KPI | CPMess target $1.20 — actual $1.10 (hit) |
| vs Previous Period | Up/down vs prior month/week | CPMess last month $1.40 -> this month $1.10 (-21%) |
| vs Industry Benchmark | Better/worse than market average | Beauty industry CPMess $1.00-$1.60 — ours $1.10 (good) |

---

## Output structure

### Header

```markdown
# Marketing Report — [Month X/YYYY] or [Week X: DD/MM-DD/MM]
Author: [Name]
Date: [YYYY-MM-DD]
Status: [Hit Target / Missed Target / Exceeded Target]
```

---

### 1. Executive Summary (read this section is enough)

```markdown
## 1. Executive Summary

**Conclusion:** [1 sentence — hit/missed target, main reason]

**Key metrics:**
| Metric | Target | Actual | vs Target | vs Prior |
|--------|--------|--------|-----------|----------|
| Revenue | [X] | [X] | [+/-X%] | [+/-X%] |
| Total MKT spend | [X] | [X] | [+/-X%] | [+/-X%] |
| ROAS | [X] | [X] | [+/-X%] | [+/-X%] |
| New customers | [X] | [X] | [+/-X%] | [+/-X%] |
| Avg CPMess | [X] | [X] | [+/-X%] | [+/-X%] |

**3 highlights:**
1. [Best thing this period — with data]
2. [Biggest issue — with data]
3. [Opportunity/risk to watch]
```

---

### 2. Channel detail

#### 2.1 Meta Ads

```markdown
### Meta Ads

**Insight:** [1-2 sentences — channel doing well/poorly, reason]

| Metric | Wk 1 | Wk 2 | Wk 3 | Wk 4 | Total | vs Target | vs Prior Mo | vs Benchmark |
|--------|------|------|------|------|-------|-----------|-------------|--------------|
| Spend | | | | | | | | |
| Impressions | | | | | | | | |
| Clicks | | | | | | | | |
| CTR | | | | | | | | |
| Messages | | | | | | | | |
| CPMess | | | | | | | | |
| Leads | | | | | | | | |
| CPL | | | | | | | | |

**Top 3 high-performing ads:**
| # | Ad name / Creative | Spend | Messages | CPMess | CTR | Note |
|---|--------------------|-------|----------|--------|-----|------|
| 1 | | | | | | |
| 2 | | | | | | |
| 3 | | | | | | |

**Bottom 3 ads (turn off/fix):**
| # | Ad name / Creative | Spend | Messages | CPMess | CTR | Issue |
|---|--------------------|-------|----------|--------|-----|-------|
| 1 | | | | | | |
| 2 | | | | | | |
| 3 | | | | | | |
```

#### 2.2 TikTok Ads

_(Same structure as Meta Ads — replace CPMess with CPV if traffic, add Video Completion Rate)_

#### 2.3 Google Ads

_(Same structure — replace Messages with Conversions, add Quality Score)_

#### 2.4 Organic (Natural content)

```markdown
### Organic

**Insight:** [1-2 sentences]

| Metric | Wk 1 | Wk 2 | Wk 3 | Wk 4 | Total | vs Prior Mo |
|--------|------|------|------|------|-------|-------------|
| Posts published | | | | | | |
| Total reach | | | | | | |
| Total engagement | | | | | | |
| Avg ER | | | | | | |
| New followers | | | | | | |
| Top content (reach) | | | | | | |

**Top 3 posts/videos:**
| # | Content | Platform | Reach | ER | Saves | Shares | Note |
|---|---------|----------|-------|-----|-------|--------|------|
| 1 | | | | | | | |
| 2 | | | | | | | |
| 3 | | | | | | | |
```

#### 2.5 Email / SMS

```markdown
### Email / SMS

| Metric | Actual | vs Benchmark |
|--------|--------|--------------|
| Campaigns sent | | |
| Open rate | | [Industry avg: 15-25%] |
| Click rate | | [Industry avg: 1-3%] |
| Unsubscribe rate | | [<1% is good] |
| Email revenue | | |
```

---

### 3. Conversion funnel

```markdown
## 3. Conversion Funnel

| Step | Volume | Conv rate | vs Prior | vs Benchmark | Rating |
|------|--------|-----------|----------|--------------|--------|
| Impression | [X] | — | [+/-X%] | — | |
| Click | [X] | [X%] | [+/-X%] | [Avg: 1-2%] | [Good/Bad/Avg] |
| Message / Lead | [X] | [X%] | [+/-X%] | [Avg: 15-25%] | |
| Qualified Lead | [X] | [X%] | [+/-X%] | [Avg: 50-60%] | |
| Booking | [X] | [X%] | [+/-X%] | [Avg: 50-60%] | |
| Customer | [X] | [X%] | [+/-X%] | [Avg: 30-40%] | |
| Revenue | [X] | — | [+/-X%] | — | |

**Bottleneck:** [Identify which step has lowest conversion — that's the issue to fix]
```

---

### 4. Auto diagnosis

```markdown
## 4. Diagnosis: What's good — What's bad — Why

### Working well (KEEP + SCALE)
| # | Finding | Numbers | Reason | Action |
|---|---------|---------|--------|--------|
| 1 | [e.g., UGC video creative low CPMess] | [CPMess $0.90 vs avg $1.20] | [Natural format, strong hook] | Scale: +30% budget, shoot 5 more UGC |
| 2 | | | | |
| 3 | | | | |

### Not working (FIX URGENTLY)
| # | Issue | Numbers | Root cause | Severity | Action |
|---|-------|---------|------------|----------|--------|
| 1 | [e.g., Booking->Show low] | [28% vs target 40%] | [No 24h reminder, no deposit] | High | Auto reminder + collect $5 deposit |
| 2 | | | | | |
| 3 | | | | | |

### Unclear (MONITOR FURTHER)
| # | Observation | Numbers | Hypothesis | Validation method | Timeline |
|---|-------------|---------|------------|-------------------|----------|
| 1 | [e.g., CTR dropping over 4 weeks] | [2.1% -> 1.4%] | [Ad fatigue] | Swap creative, monitor 1 week | 7 days |
```

---

### 5. Action recommendations

```markdown
## 5. Action Recommendations

| # | Action | Goal | Deadline | Owner | Status |
|---|--------|------|----------|-------|--------|
| 1 | [e.g., Shoot 5 new UGC for Meta Ads] | CPMess <$1.00 | [DD/MM] | [Name] | Not started |
| 2 | [e.g., Set up auto reminder 24h] | Booking->Show >40% | [DD/MM] | [Name] | Not started |
| 3 | [e.g., Test TikTok Ads $200/wk] | New channel, CPMess <$1.40 | [DD/MM] | [Name] | Not started |
| 4 | | | | | |
| 5 | | | | | |

**Priority:** Number by impact level — do 1 + 2 first, 3 + 4 + 5 next week.
```

---

### 6. Next month plan

```markdown
## 6. Plan for [Month X+1]

### Targets

| Metric | This Mo (actual) | Next Mo (target) | Increase | Basis |
|--------|------------------|------------------|----------|-------|
| Revenue | [X] | [X] | [+X%] | [Why this is achievable] |
| MKT spend | [X] | [X] | [+/-X%] | |
| ROAS | [X] | [X] | [+X] | |
| New customers | [X] | [X] | [+X%] | |
| CPMess | [X] | [X] | [-X%] | |

### Weekly plan

| Week | Focus | Budget | Main KPI |
|------|-------|--------|----------|
| Week 1 | [e.g., Launch new creative + A/B test] | [X] | [CPMess <$1.20] |
| Week 2 | [e.g., Scale winners + cut losers] | [X] | [ROAS >3x] |
| Week 3 | [e.g., Push BOFU + retarget] | [X] | [Close rate >40%] |
| Week 4 | [e.g., Wrap up + prep next month] | [X] | [Hit revenue target] |

### Budget allocation

| Category | Amount | % | Note |
|----------|--------|---|------|
| Meta Ads | [X] | [X%] | |
| TikTok Ads | [X] | [X%] | |
| Google Ads | [X] | [X%] | |
| Content production | [X] | [X%] | UGC, video shoot, design |
| Tools & software | [X] | [X%] | |
| **Total** | **[X]** | **100%** | |
```

---

### 7. Chart specs (for design team)

If report needs presentation to stakeholders (boss, client), create charts:

| # | Chart | Type | X-axis | Y-axis | Note |
|---|-------|------|--------|--------|------|
| 1 | Revenue vs Spend by week | Line chart (2 lines) | Wk 1-4 | USD | 2 colors: green (revenue), red (spend) |
| 2 | Conversion funnel | Funnel chart | Funnel step | Volume | Impression -> Customer |
| 3 | CPMess by week | Bar chart | Wk 1-4 | USD | Add target line (dashed) |
| 4 | Budget allocation | Pie chart | — | % | By channel (Meta, TikTok, Google, Content) |
| 5 | This Mo vs Last Mo | Grouped bar chart | Metric | Value | 2 colors: green (this), gray (last) |

**Recommended tools:** Google Sheets/Looker Studio (free), Canva (presentation).

---

## Weekly report template (compact)

Weekly report shorter than monthly — keep parts 1, 4, 5 only:

```markdown
# Weekly Report [X]: [DD/MM-DD/MM/YYYY]

## Quick results
| Metric | Wk Target | Actual | vs Last Wk | Rating |
|--------|-----------|--------|------------|--------|
| Spend | | | | |
| Messages | | | | |
| CPMess | | | | |
| Leads | | | | |
| Bookings | | | | |
| Customers | | | | |
| Revenue | | | | |

## Good / Bad
- GOOD: [1-2 points]
- BAD: [1-2 points]

## Next week actions
| # | Task | Owner | Deadline |
|---|------|-------|----------|
| 1 | | | |
| 2 | | | |
| 3 | | | |
```

---

## Related skills

- **03-performance-review-global** — Deep analysis per channel before aggregating into report
- **10-reverse-kpi-global** — Recalculate next month targets based on this month results
- **00-marketing-plan-global** — Next month plan is updated version of master plan
- **13-data-analysis-global** — When need to dig deep into data for root cause

---

## Quality checklist

Check before delivering report:

- [ ] Has executive summary — 1 minute read = full picture
- [ ] Insight FIRST, numbers AS PROOF — no listing numbers without conclusion
- [ ] Each metric has at least 1 comparison frame (vs target / vs prior / vs benchmark)
- [ ] Has weekly data (not just monthly totals)
- [ ] Has top 3 best ads + bottom 3 ads (with specific numbers)
- [ ] Has conversion funnel — points out bottleneck
- [ ] Diagnosis has root cause, not just description
- [ ] Action recs have deadline and owner — not generic
- [ ] Has next month plan with targets and budget
- [ ] No unsourced numbers (every number from dashboard or specific report)
- [ ] Charts (if any) have clear specs for design team
- [ ] Total report length: read in 5 minutes — cut excess
