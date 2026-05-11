---
name: 19-ab-test-setup-global
description: "Design valid A/B tests for global marketing — hypothesis formulation, sample size calculation, statistical significance, multi-arm testing, primary vs secondary metrics. Tools: Optimizely, VWO, Google Optimize (sunset 2023, alternatives), built-in platform tests (Meta, Google). Trigger: 'A/B test', 'split test', 'multivariate test', 'experiment design', 'statistical significance', 'sample size calculator'."
metadata:
  version: 1.0.0
  category: performance
  language: en
license: MIT
triggers:
  - "A/B test"
  - "split test"
  - "multivariate test"
  - "experiment design"
  - "statistical significance"
  - "sample size calculator"
output: A .md file containing hypothesis, sample size calculation, primary/secondary metrics, test setup, timeline, and a results template ready for analysis
related:
  - product-marketing-context-global
  - 13-data-analysis-global
  - 03-performance-eval-global
  - 21-ads-audit-global
---

# A/B Test Setup (Global)

> Run experiments that produce decisions, not noise. Most "A/B tests" in marketing are underpowered, peeked-at, and badly hypothesized — meaning the team learns nothing and ships the louder variant.

---

## For Newbies

A valid A/B test answers one question: "Did this change cause a real improvement, or am I seeing noise?"

To answer it credibly you need four things:
1. A **specific hypothesis** with a numeric prediction
2. **One variable changed** (everything else identical)
3. **Enough sample** to detect the effect you care about
4. **Statistical significance** before you call a winner (typically p < 0.05)

If any one of these is missing, you don't have an A/B test — you have a coin flip with extra steps.

**Common newbie mistake:** running a test for 3 days, seeing variant B 40% higher, declaring victory, and shipping. Three days is too short to absorb day-of-week effects, and small samples produce wild swings. Variant B may revert (or reverse) by day 14.

---

## Step 0 — Read Context

Read `.agents/product-marketing-context.md` if it exists. Audience size, average traffic, and current conversion rate determine whether a test is even feasible.

---

## Step 1 — Information Gathering

Ask up to 4 questions:

1. **What are you testing?** (Ad headline / Landing page section / Email subject / Pricing display / CTA button / Creative video)
2. **Primary metric?** (CTR / Conversion rate / CPM / CPA / Revenue / Open rate / Reply rate)
3. **Daily traffic to the test surface?** (Needed for sample size and duration)
4. **Goal of the test?** (Lift X% on primary metric / Pick a winner among N candidates / Validate a strategic hypothesis)

---

## The 7 Principles of a Valid A/B Test

### 1. Test exactly one variable

The cardinal rule. Change two things at once and you cannot attribute the result.

- **Bad:** "I changed the headline, the hero image, and the CTA color." → You learn nothing about which element drove the lift.
- **Good:** Change only the headline. Image, CTA, layout, traffic source, and audience targeting are identical.

If you must test multiple changes, use a **multivariate test (MVT)** — but those need much more traffic (often 4×–8× a single A/B).

### 2. Hypothesize with a number

**Format:** "If we [change X], [metric Y] will increase by [Z%] because [reason]."

- **Good:** "If we change the CTA from 'Sign up' to 'Get my free demo,' conversion rate will increase by 15% because action-specific language reduces ambiguity."
- **Bad:** "The new copy will be better." (No metric, no number, no causal reasoning — un-testable.)

The "because" matters: if your hypothesis is wrong but the reasoning was sound, you've still learned something generalizable.

### 3. Sufficient sample size

Don't stop early. Statistical tests need adequate data to distinguish signal from noise.

- **Minimum rule of thumb:** 100 conversions per variant (not 100 visitors)
- **Better:** Calculate sample size up front based on baseline conversion rate and minimum detectable effect (formula below)

### 4. Sufficient duration

Run for **whole weeks**, not 3 days, not 10 days. Different weekdays produce different audience behavior — Monday B2B traffic is not Saturday DTC traffic.

- **Minimum:** 7 days
- **Recommended:** 14 days
- **Watch for:** holidays, paydays, monthly billing cycles, ad spend ramp-ups

### 5. Don't peek

Looking at results every hour and stopping when "B looks good" is the most common error in marketing experimentation. Early peeks combined with early stops dramatically inflate false positive rates.

- Define the end date in advance. Honor it.
- If you must monitor, use **sequential testing** methods designed for it (Bayesian frameworks like Optimizely's Stats Engine, or platforms with built-in sequential controls).

### 6. Statistical significance: p < 0.05

Most marketing teams use **95% confidence (p-value < 0.05)** as the bar.

- p-value < 0.05 → less than 5% chance the observed difference is random
- p-value 0.05–0.10 → suggestive but inconclusive — extend the test
- p-value > 0.10 → no evidence of an effect — keep control or test something else

For high-stakes tests (pricing, branding) consider 99% confidence (p < 0.01).

### 7. Document everything

Write down:
- Hypothesis (with number)
- Start date / end date
- Sample size achieved
- Primary metric, secondary metrics
- Result + p-value
- Decision + reasoning
- What you'd test next

A documented test history prevents your team from re-testing things that already failed and from forgetting why you made past decisions.

---

## Sample Size Calculation

### Quick formula

```
Sample size per variant ≈ 16 × p × (1 − p) / MDE²

where:
  p   = baseline conversion rate (e.g. 0.03 = 3%)
  MDE = minimum detectable effect, in absolute terms
        (e.g. 0.006 = lift from 3% to 3.6%)
```

This produces sample size for **80% power, 95% confidence, 50/50 split** — sensible defaults for most marketing tests.

### Worked example A — landing page CRO

Current conversion rate is 3%. You want to detect a 20% relative lift (from 3% to 3.6%).

- p = 0.03
- MDE (absolute) = 0.20 × 0.03 = 0.006
- Sample size per variant = 16 × 0.03 × 0.97 / 0.006² = **12,933 visitors**
- Total: ~25,866 visitors. At 500 visitors/day → ~52 days.

That's slow. Either run it (if the change matters), test something with a bigger expected lift, or get more traffic on the test surface.

### Worked example B — email subject line

Current open rate is 25%. You want to detect a 10% relative lift (to 27.5%).

- p = 0.25
- MDE = 0.025
- Sample size per variant = 16 × 0.25 × 0.75 / 0.025² = **4,800 sends**
- Total: 9,600 sends per email — usually achievable in one campaign.

### Feasibility quick-reference

| Daily volume | Conv. rate | Days needed | Test feasibility |
|--------------|-----------|------------|------------------|
| < 100        | any        | 2+ months  | Skip — focus on traffic first |
| 100–500      | 2–5%       | 3–6 weeks  | Yes, but be patient |
| 500–2K       | 2–5%       | 2–3 weeks  | Yes — ideal range |
| 2K–10K       | 2–5%       | 1–2 weeks  | Yes — rapid iteration |
| 10K+         | any        | days       | Yes — multi-arm tests possible |

If volume is below 100/day, A/B testing is statistically wasted — concentrate on increasing traffic before running experiments.

---

## Multi-Arm and Multivariate

Beyond simple A vs B:

- **Multi-arm (A/B/C/D):** test 3+ variants at once. Sample size grows roughly linearly with arms.
- **Multivariate (MVT):** test multiple elements simultaneously (headline × image × CTA = 8 combinations). Sample size grows multiplicatively. Only viable with very high traffic.
- **Sequential / Bayesian (Thompson Sampling):** dynamically allocate more traffic to better-performing variants. Optimizely, Google Optimize successors, and Meta's auto-optimization use this.

For most teams: stick to A/B until traffic exceeds ~10K/day on the test surface.

---

## What to Test (in priority order)

### 1. Headline — highest impact
Roughly 80% of visitors read the headline; 20% read the body. Optimizing the headline gives the largest expected lift per unit of effort.

Variations to try:
- Question vs statement
- Specific number vs generic ("3,247 founders trust us" vs "Trusted by founders")
- Outcome-focused vs feature-focused
- Short (5–7 words) vs long (12–15 words)

### 2. CTA button
Easy to change, often 5–25% lift potential.

Variations:
- Text: "Sign up" vs "Get free demo" vs "Start free trial" vs "See pricing"
- Color: brand primary vs contrast (high-contrast usually wins)
- Size: standard vs large
- Position: above-the-fold vs sticky vs end-of-page

### 3. Hero visual
- Product shot vs lifestyle shot
- Static image vs video
- Founder face vs anonymous model
- Demo screencast vs testimonial clip

### 4. Pricing display
- Monthly vs annual primary
- Strikethrough discount vs clean price
- Number formatting ($299 vs $299.00 vs $299/mo)
- Anchor pricing (3-tier with middle highlighted)

### 5. Social proof placement
- Numbers vs detailed reviews
- Logo wall vs customer count
- Above CTA vs below CTA
- Video testimonial vs text testimonial

### 6. Form fields
- 3 vs 5 vs 7 fields (fewer fields almost always wins on conversion, but lead quality may drop)
- Label position (above vs left)
- Single-step vs multi-step
- Optional fields marked vs required marked

### 7. Email subject lines
- Question vs benefit
- Personalization vs generic
- Emoji vs no emoji (varies by region/audience)
- Length (under 40 chars vs 60+)

### 8. Ad creative
- First 3-second hook variants
- UGC style vs polished brand
- Format: single image vs carousel vs video vs Reels-native
- Headline on creative vs in copy field

---

## Tool Recommendations

| Tool | Best for | Cost |
|------|----------|------|
| **Meta Ads built-in A/B test** | Creative, audience, placement on Meta | Free |
| **TikTok Ads Split Test** | TikTok ad creative and audience tests | Free |
| **Google Ads Experiments** | Google Ads campaigns and ad copy | Free |
| **Optimizely Web** | Enterprise web experimentation, sequential testing | $$$ enterprise |
| **VWO** | Mid-market web A/B + heatmaps | $199+/mo |
| **Convert.com** | Privacy-first web testing | $99+/mo |
| **PostHog** | Product feature flags + experiments + analytics | Free tier, generous |
| **GrowthBook** | Open-source A/B testing platform | Free / hosted plans |
| **Statsig** | Product experimentation with feature flags | Free tier |
| **AB Tasty** | Web experimentation + personalization | $$$ |
| **Unbounce / Instapage** | Built-in A/B for landing pages | $90+/mo |
| **Custom (split URL)** | Two pages, 50/50 redirect, GA4/Pixel attribution | Free |

> **Note:** Google Optimize was sunset in September 2023. Migration paths: GA4 + a third-party platform (Optimizely, VWO, Convert) or PostHog/GrowthBook for product-led teams.

---

## Setup Without Dedicated Tools

```
1. Build two versions of the page: /landing-a and /landing-b
2. Split traffic 50/50:
   - Meta Ads: 2 ad sets, identical audience, different destination URLs
   - Google Ads: 2 ads in the same ad group, identical targeting, different URLs
   - Email: list-split feature in your ESP
3. Track conversions per variant:
   - Meta Pixel custom event with parameter: page_version = "A" / "B"
   - GA4 event with custom dimension
   - PostHog feature flag exposure event
4. Run for the planned duration. Don't peek mid-test.
5. Export raw counts. Run significance test (calculator below).
```

---

## Result Analysis

### Statistical significance

Use a calculator. Recommended:
- **Evan Miller's calculator** — `evanmiller.org/ab-testing/chi-squared.html`
- **AB Testguide** — `abtestguide.com/calc/`
- **Optimizely's calculator** — built into platform
- **Survey Monkey calculator** — for sample size pre-test

**Inputs:**
- Variant A: visitors + conversions
- Variant B: visitors + conversions

**Outputs:**
- p-value (need < 0.05 for 95% confidence)
- Confidence interval on the lift
- Lift % (relative or absolute)

### Decision matrix

| p-value | Lift size | Decision |
|---------|-----------|----------|
| < 0.05  | > 5%       | B wins — implement and document |
| < 0.05  | < 5%       | Significant but small — weigh implementation cost |
| 0.05–0.10 | > 10%    | Borderline — extend test if feasible |
| > 0.10  | any         | No evidence — keep A or design a stronger test |

### Common Pitfalls

1. **Peeking and stopping early.** Most common cause of false positives. If the platform shows "B is winning" on day 3, the platform is misleading you (unless it's specifically designed for sequential testing).
2. **Uneven splits.** If split is 30/70 instead of intended 50/50, your delivery infrastructure has a bug. Investigate before trusting results.
3. **Seasonality.** Tests run only on weekdays vs weekends produce different results. Always run for whole weeks.
4. **Novelty effect.** New variants attract attention for the first 2–3 days, then performance regresses. Long enough tests absorb this.
5. **Sample ratio mismatch (SRM).** Even with 50/50 intent, if visitor counts diverge significantly (e.g. 8,400 vs 11,600), there's likely a tracking or assignment bug. Tools like PostHog and Optimizely flag this automatically.
6. **Mixing traffic sources mid-test.** Don't add a new ad campaign halfway through — it changes audience composition.
7. **Multiple comparison problem.** Running 20 simultaneous tests means ~1 will look "significant" by chance alone. Adjust thresholds (Bonferroni correction) or pre-register hypotheses.

---

## Output Template

```markdown
# A/B Test: [test name]
Created: [YYYY-MM-DD]
Owner: [name]

## 1. Hypothesis
"If we [change X], [metric Y] will increase by [Z%] because [reason]."

## 2. Variants
- Variant A (Control): [current state description]
- Variant B (Challenger): [changed state description]
- Single change: [the one element that differs]

## 3. Metrics
- Primary: [e.g. conversion rate]
- Secondary (guardrails): [e.g. bounce rate, time on page, AOV]

## 4. Sample size & duration
- Baseline (p): [%]
- Minimum detectable effect (MDE): [%]
- Sample needed per variant: [N]
- Daily traffic to test surface: [N]
- Estimated days to complete: [N]

## 5. Setup
- Tool: [Optimizely / VWO / PostHog / Meta built-in / custom]
- Variant A URL or asset: [...]
- Variant B URL or asset: [...]
- Tracking events: [list]
- Split ratio: 50/50

## 6. Timeline
- Start: [date]
- End (planned): [date]
- Review meeting: [date]

## 7. Results (filled in after test ends)
| Variant | Visitors | Conversions | Rate | Lift vs A |
|---------|----------|-------------|------|-----------|
| A | | | | — |
| B | | | | +X% |

p-value: [x]
95% CI on lift: [lower%, upper%]
Significant (p < 0.05): [Yes / No]

## 8. Decision
[Ship B / Keep A / Inconclusive — extend or redesign]

## 9. Action
[Implement variant B globally / Roll back / Schedule next iteration]

## 10. Lessons
[What this teaches generalizable for future tests]
```

---

## Quality Checklist

- [ ] Exactly one variable changed
- [ ] Hypothesis is specific and includes a numeric prediction
- [ ] Sample size calculated up front (minimum 100 conv/variant)
- [ ] Duration is at least 1 full week, ideally 2 weeks
- [ ] No peeking — end date defined and honored
- [ ] p-value calculated before declaring a winner (target p < 0.05)
- [ ] Result documented (winner or not — both are learning)
- [ ] Secondary metrics checked (no guardrail violations)
- [ ] Sample ratio verified (no SRM red flags)
- [ ] Next test identified based on what this one taught
