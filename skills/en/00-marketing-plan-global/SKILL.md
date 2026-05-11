---
name: 00-marketing-plan-global
description: "Comprehensive 7-section marketing plan for global businesses — strategy, target audience, positioning, channels, content, KPIs, budget. Reads `.agents/product-marketing-context-global.md` first. Universal framework adapts to US/EU/SEA/LATAM via foundation skill region. Trigger: 'marketing plan', 'global marketing strategy', 'go-to-market plan', 'marketing roadmap', 'international marketing plan'."
metadata:
  version: 1.0.0
  category: strategy
license: MIT
triggers:
  - "marketing plan"
  - "global marketing strategy"
  - "go-to-market plan"
  - "marketing roadmap"
  - "international marketing plan"
related:
  - product-marketing-context-global
  - 02-campaign-brief-global
  - 08-competitor-research-global
  - 09-customer-insight-global
  - 10-reverse-kpi-global
---

# Global Marketing Plan

> Master skill — calls 08-competitor-research-global, 09-customer-insight-global, 10-reverse-kpi-global before producing the final output.

---

## For newcomers

If this is your first global marketing plan, follow this order:

1. **Step 0** — Read `.agents/product-marketing-context-global.md` (set once per product)
2. **Information gathering** — Answer the 4 questions below
3. **Run sub-skills** — 08 (competitors), 09 (insights), 10 (reverse KPIs)
4. **Assemble plan** — Use the 7-section template
5. **Cross-check** — Run the quality checklist

If `.agents/product-marketing-context-global.md` does not exist, ask the user to run `product-marketing-context-global` first to lock down product, ICP, region, currency, and brand voice.

---

## Step 0 — Read context file

Before producing any output, read `.agents/product-marketing-context-global.md` to load:

- Product / service description, USP, pricing tier
- Target region (US / EU / SEA / LATAM / APAC / GLOBAL)
- Reporting currency (USD / EUR / GBP / SGD / etc.)
- Brand voice & tone-of-voice rules
- Existing channels and audience data

If the file is missing, ask the user to create it first. Do not guess context.

---

## Information gathering

Ask the user up to 4 questions before starting:

1. **Product / service?** Short description, core USP, price tier (entry / mid / premium).
2. **Target audience?** Age range, location, occupation, behaviour, biggest pain point.
3. **Goal & budget?** Target revenue per month, marketing budget (ads + content + people), campaign duration.
4. **Stage?** Pre-launch / Launch / Growth / Mature? Existing channels with traction? Available data (followers, email list, customer database)?

> If region was not captured in context file, also ask: **Primary market?** (US / EU / SEA / LATAM / APAC / GLOBAL multi-region).

---

## Section 1 — Overall strategy

### 1.1 Situation summary

| Item | Detail |
|------|--------|
| Product / service | [name + USP] |
| Market | [region + size] |
| Stage | Pre-launch / Launch / Growth / Mature |
| Plan horizon | [months] |
| Total budget | [amount + currency] |

### 1.2 SWOT analysis

| | Positive | Negative |
|---|---------|---------|
| **Internal** | Strengths: [list] | Weaknesses: [list] |
| **External** | Opportunities: [list] | Threats: [list] |

### 1.3 Competitive moat analysis

> Call skill `08-competitor-research-global` for the full data set.

| Competitor | Strong channel | Exploitable weakness | Their moat | Your moat |
|------------|---------------|---------------------|------------|-----------|
| [Competitor 1] | | | | |
| [Competitor 2] | | | | |
| [Competitor 3] | | | | |

**Moat types to consider:**

- Brand trust (recognition + credibility)
- Content depth (long-tail expertise competitors will not replicate)
- Community lock-in (loyal customer community)
- Data advantage (better customer understanding)
- Distribution (more channels, better partners)
- Price / unit economics (sustainable lower CAC or higher LTV)

### 1.4 Customer insight

> Call skill `09-customer-insight-global` to ground the insight in evidence.

| Element | Description |
|---------|-------------|
| Biggest pain | [specific, observable] |
| Hidden desire | [what they truly want but rarely say] |
| Purchase barrier | [why they have not bought yet] |
| Buying trigger | [the situation that flips them to action] |
| Trusted source | [people / channels that influence them] |

---

## Section 2 — SAVE Framework

> Replaces the traditional 4P. More appropriate for services and digital products.

### 2.1 Solution (replaces Product)

| Question | Answer |
|----------|--------|
| What problem are customers facing? | [specific pain] |
| How does the product solve it? | [mechanism] |
| What outcome do they get? | [specific, measurable] |
| How fast do they see results? | [timeframe] |

### 2.2 Access (replaces Place)

| Channel | Funnel role | Priority |
|---------|------------|----------|
| [Channel 1] | TOFU — attract | High / Medium / Low |
| [Channel 2] | MOFU — nurture | |
| [Channel 3] | BOFU — convert | |
| [Channel 4] | Retention — retain | |

> Region note: Channel mix differs per market. See `product-marketing-context-global` for region-specific channel preferences. SEA leans on Zalo / LINE / Shopee Live, EU favours email + LinkedIn for B2B, US favours podcast + newsletter, LATAM favours WhatsApp + TikTok.

### 2.3 Value (replaces Price)

| Item | Detail |
|------|--------|
| Product / service price | [tier + currency] |
| Customer value received | [quantified: saves X, gains Y] |
| Value-to-price ratio | [Nx] |
| Vs competitors | [cheaper / pricier — reason] |
| Pricing psychology | [anchor / bundle / tier / free trial] |

### 2.4 Education (replaces Promotion)

| Awareness stage | Education content | Goal |
|-----------------|-------------------|------|
| Unaware of problem | Pain-aware content, awareness pieces | Help them recognise the problem |
| Problem-aware, solution-unaware | How-to, comparison of approaches | Help them weigh the options |
| Solution-aware, undecided | Case study, testimonial, demo | Build trust in your brand |
| Decided, not yet acting | Offer, urgency, social proof | Get them to act now |

---

## Section 3 — Content plan

### 3.1 Content pillars

| Pillar | Share | Goal | Examples |
|--------|-------|------|----------|
| Education | 35% | Build trust, SEO | How-to, tips, explainers |
| Inspiration | 25% | Engagement, virality | Case study, before/after, story |
| Entertainment | 20% | Reach, follower growth | Trends, POV, behind-the-scenes |
| Selling | 15% | Conversion | Offer, deal, direct CTA |
| Community | 5% | Retention | Q&A, poll, user spotlight |

### 3.2 Funnel distribution

| Funnel stage | Content share | Primary angle | KPI |
|-------------|--------------|---------------|-----|
| TOFU (Awareness) | 40% | Pain points, entertainment, education | View, reach, follower |
| MOFU (Consideration) | 35% | Proof, expertise, process | Engagement, save, click |
| BOFU (Conversion) | 15% | Offer, urgency, retarget | Message, lead, order |
| Retention | 10% | VIP value, referral | Repurchase, LTV |

### 3.3 Content repurposing matrix

> One source asset = 7+ derivatives. See `01-content-calendar-global` for detail.

| Source asset | Derivative | Channel |
|-------------|-----------|---------|
| Long video (3–5 min) | Original | YouTube |
| | 3 short clips (15–30s) | TikTok, Reels, Shorts |
| | 1 carousel (5–7 slides) | Instagram, LinkedIn |
| | 1 blog post (800–1500 words) | Website, SEO |
| | 1 email newsletter | Email list |
| | 3 quote cards | Story, Threads, X |
| | 1 audio clip | Podcast feed |

### 3.4 Source-type mix

| Type | Share | Description |
|------|-------|-------------|
| FGC (Founder Generated Content) | 30% | Founder / expert content |
| Brand Content | 30% | Official brand assets |
| UGC (User Generated Content) | 25% | Reviews, testimonials from customers |
| EGC (Employee Generated Content) | 15% | Behind-the-scenes from team |

---

## Section 4 — Channel system & budget

### 4.1 Channel deployment

| Channel | Funnel role | Monthly budget | Primary KPI |
|---------|------------|----------------|-------------|
| TikTok (organic + ads) | TOFU + BOFU | [amount] | View, message, CPMess |
| Meta — Facebook + Instagram (organic + ads) | MOFU + BOFU | [amount] | Reach, message, CPMess |
| Email (newsletter + flow) | MOFU + Retention | [amount] | Open rate, click rate |
| Website / SEO | MOFU | [amount] | Traffic, time on site |
| YouTube (long + Shorts) | TOFU + MOFU | [amount] | View duration, subscriber |
| Podcast / Newsletter sponsorship | TOFU | [amount] | CPM, brand lift |
| Influencer / UGC network | TOFU | [amount] | View, reach, content output |
| [Region-specific channel] | | | |

> Region note: Add LINE / Zalo / WhatsApp / WeChat per market (SEA, LATAM, China). See `product-marketing-context-global` for region channel weights.

### 4.2 Budget split by stage

| Item | Launch (M1–3) | Growth (M4–6) | Mature (M7+) |
|------|--------------|---------------|--------------|
| Paid ads | 45–55% | 35–45% | 25–35% |
| Content production | 20–25% | 20–25% | 15–20% |
| UGC / influencer | 15–20% | 15–20% | 10–15% |
| Tools & platforms | 5–10% | 5–10% | 5–10% |
| Community & retention | 5% | 10–15% | 20–25% |
| Contingency | 5% | 5% | 5% |
| **Total** | **100%** | **100%** | **100%** |

### 4.3 Detailed budget allocation

> Example uses USD. Convert to local currency as defined in `product-marketing-context-global`.

| Item | Monthly budget | % Total | Notes |
|------|----------------|---------|-------|
| Meta Ads | [amount] | [%] | |
| TikTok Ads | [amount] | [%] | |
| Google Ads (Search + YouTube) | [amount] | [%] | |
| Content (people + tools) | [amount] | [%] | |
| Influencer / UGC fees | [amount] | [%] | |
| Tools (analytics, CRM, design) | [amount] | [%] | |
| Contingency | [amount] | 5% | |
| **Total** | **[amount]** | **100%** | |

---

## Section 5 — KPI & performance

### 5.1 Reverse KPI calculation

> Call skill `10-reverse-kpi-global` for an exact calculation.

```
Target revenue: [amount]
  / AOV: [amount]
  = Orders needed: [count]
  / Booking->Customer [region benchmark]: [count]
  = Bookings needed: [count]
  / Lead->Booking [region benchmark]: [count]
  = Leads needed: [count]
  / Mess->Lead [region benchmark]: [count]
  = Messages needed: [count]
  x CPMess [region benchmark]: [amount]
  = Required ad budget: [amount]
```

### 5.2 KPI table — 3 scenarios

| Metric | Pessimistic | Base | Optimistic |
|--------|-------------|------|------------|
| CPMess | +30% vs benchmark | Industry benchmark | -20% vs benchmark |
| Mess->Lead | -15% vs avg | Industry avg | +15% vs avg |
| Lead->Booking | -10% vs avg | Industry avg | +10% vs avg |
| Booking->Customer | -10% vs avg | Industry avg | +10% vs avg |
| **Orders / month** | [count] | [count] | [count] |
| **Revenue / month** | [amount] | [amount] | [amount] |
| **ROAS** | [Nx] | [Nx] | [Nx] |
| **Required budget** | [amount] | [amount] | [amount] |

> Region benchmarks: see foundation skill `product-marketing-context-global` for the regional benchmark file (US, EU, SEA, LATAM). Do not assume one global benchmark — CPMs vary 3–5x across regions.

### 5.3 KPI by channel

| Channel | Primary KPI | Month 1 target | Month 3 target | Month 6 target |
|---------|------------|----------------|----------------|----------------|
| TikTok organic | View / video, follower | | | |
| TikTok ads | CPMess, ROAS | | | |
| Meta ads | CPMess, CPL, ROAS | | | |
| Google Search ads | CPL, ROAS | | | |
| Email | Open rate, click rate | | | |
| SEO | Organic traffic, ranking | | | |

### 5.4 Business KPIs

| Metric | Formula | Target |
|--------|---------|--------|
| ROAS | Revenue / ad spend | >3x |
| CAC | Total marketing spend / new customers | <30% AOV |
| LTV | AOV × purchases × duration | >3x CAC |
| Payback period | CAC / (AOV × margin) | <90 days |
| LTV:CAC | LTV / CAC | >3:1 |

---

## Section 6 — Risk matrix

### 6.1 Risk table

| Risk | Probability | Impact | Severity | Mitigation plan |
|------|------------|--------|----------|-----------------|
| CPMess spikes during peak season | High | High | **CRITICAL** | Cut ad budget 30%, shift to organic + UGC |
| Creative fatigue (within 2 weeks) | High | Medium | **HIGH** | Prepare 3–5 new creatives per week, A/B test continuously |
| Competitor heavy discounting | Medium | High | **HIGH** | Lead with value + trust, do not race to the bottom |
| Algorithm change (TikTok / Meta) | Medium | High | **HIGH** | Diversify channels, no single-platform dependency |
| Key content creator leaves | Low | High | **MEDIUM** | Document SOPs, build backup roster |
| Negative review goes viral | Low | Very high | **CRITICAL** | Crisis protocol: respond within 2h, transparent, escalate |
| Budget gets cut | Medium | Medium | **MEDIUM** | Plan B with 50% budget — organic priority |
| Lack of customer data | Low | Medium | **LOW** | Capture data from day 1: forms, pixel, CRM |

### 6.2 Severity definitions

| Level | Definition | Action |
|-------|-----------|--------|
| **CRITICAL** | Direct revenue impact, lost customers | Resolve in 24h, escalate to stakeholder |
| **HIGH** | Significant performance drop, lost opportunity | Resolve in 48h, adjust plan |
| **MEDIUM** | Mild impact, recoverable | Resolve within 1 week, monitor |
| **LOW** | Negligible impact | Log and address opportunistically |

---

## Section 7 — Implementation timeline

### 7.1 Roadmap

| Week | Theme | Detail | Output | Owner |
|------|-------|--------|--------|-------|
| Week 1 | Setup & research | Competitor research, customer insight, channel setup | Research report, channels live | [name] |
| Week 2 | Content & creative | Produce first content batch, brief UGC | 15–20 content pieces, 3–5 UGC briefs | [name] |
| Week 3 | Launch & test | Run paid test, post organically, start nurture | A/B test report, first 7 days of data | [name] |
| Week 4 | Optimise & scale | Cut bad creative, scale winners, drop weak channels | Month 1 report, Month 2 plan | [name] |

### 7.2 Milestones

| Month | Milestone | KPI check |
|-------|-----------|-----------|
| Month 1 | Setup complete, test running, first data | CPMess, message count, reach |
| Month 2 | Found winning creative + audience | ROAS, CPL, conversion rate |
| Month 3 | Scaled main channel, funnel stable | Revenue, LTV:CAC, retention |
| Month 6 | System self-running, continuous optimisation | All KPIs stable, organic growing |

---

## Skill chaining

This is a master skill — it calls the following sub-skills:

```
00-marketing-plan-global (MASTER)
  |
  |-- [1] 08-competitor-research-global  -> Competitor analysis, gap discovery
  |-- [2] 09-customer-insight-global     -> Customer insight, pain points
  |-- [3] 10-reverse-kpi-global          -> Budget + KPIs from target revenue
  |
  |-- [4] Produce this plan
  |
  |-- [5] 01-content-calendar-global     -> Detailed monthly content calendar
  |-- [6] 02-campaign-brief-global       -> First campaign brief
```

When the user requests a marketing plan:

1. Ask the 4 information-gathering questions
2. Run skills 08, 09, 10 (in parallel when possible)
3. Assemble the plan in this template
4. Suggest running 01 and 02 next if the user wants execution detail

---

## Examples — diversified regions

### Example A — US SaaS startup (Series A)

- Product: B2B project management SaaS, $49/seat/month
- Region: US, secondary CA + UK
- Stage: Growth (M9 since launch)
- Channels: SEO + content, LinkedIn ads, podcast sponsorship, lifecycle email
- Region note: B2B benchmark CAC payback <12 months, LTV:CAC >3:1

### Example B — EU DTC skincare brand

- Product: Clean-formula serum, EUR 38 / 30ml
- Region: DE / FR / NL primary, expanding to UK
- Stage: Launch (3 months)
- Channels: Meta + TikTok ads, micro-influencers, Klaviyo email, Shopify
- Region note: GDPR compliance for email + ads tracking is non-negotiable

### Example C — SEA fitness coaching app

- Product: Online fitness coaching subscription, SGD 29/month
- Region: Singapore primary, Malaysia + Thailand secondary
- Stage: Mature (M14)
- Channels: TikTok organic, Meta ads, LINE / WhatsApp nurture, Telegram community
- Region note: Mobile-first, conversational selling beats long-form sales pages

---

## Quality checklist

Before delivering the plan, verify:

- [ ] All 7 sections present (Strategy, SAVE, Content, Channel, Performance, Risk, Timeline)
- [ ] SWOT grounded in real data, not assumption
- [ ] Competitive moat is specific — not generic
- [ ] SAVE Framework covers all 4 elements
- [ ] Content pillars sum to 100%
- [ ] Funnel distribution follows ratios (TOFU 40%, MOFU 35%, BOFU 15%, Retention 10%)
- [ ] Budget split by stage (Launch / Growth / Mature)
- [ ] 3-scenario KPI table calculated (Pessimistic / Base / Optimistic)
- [ ] Risk matrix has at least 5 risks with severity + mitigation
- [ ] Timeline has month-level milestones
- [ ] Region-specific benchmarks used (not blanket global numbers)
- [ ] Cross-references to related skills present
- [ ] All numbers measurable — no vague phrases like "increase a lot" or "much higher"
- [ ] Total budget sums to exactly 100%
- [ ] Currency consistent with `.agents/product-marketing-context-global.md`
