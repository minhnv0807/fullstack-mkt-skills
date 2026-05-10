---
name: 02-campaign-brief-global
description: "9-section campaign brief for global campaigns — context, objectives, target, message, creative, channels, timeline, deliverables, risks. Reads `.agents/product-marketing-context-global.md`. Universal framework, region-specific benchmarks via foundation skill. Trigger: 'campaign brief', 'creative brief', 'launch brief', 'product launch brief', 'global campaign'."
metadata:
  version: 1.0.0
  category: strategy
license: MIT
triggers:
  - "campaign brief"
  - "creative brief"
  - "launch brief"
  - "product launch brief"
  - "global campaign"
related:
  - product-marketing-context-global
  - 00-marketing-plan-global
  - 01-content-calendar-global
  - 04-script-video-global
  - 09-customer-insight-global
---

# Global Campaign Brief

> 9-section creative brief: Context, Objectives, Target, Core Message, Creative Direction, Channel System, Timeline, Deliverables, Risks. Auto-triggers downstream skills (script, calendar, ad copy, UGC brief).

---

## Step 0 — Read context file

Before writing the brief, read `.agents/product-marketing-context-global.md` to load:

- Product, USP, pricing
- Target region and currency
- Brand voice & visual identity
- Existing campaigns and lessons learned

If the file is missing, ask the user to run `product-marketing-context-global` first.

---

## Information gathering

Ask the user up to 4 questions before starting:

1. **Campaign type?** Product launch / seasonal / brand awareness / clearance sale / re-launch?
2. **Primary goal?** Revenue [amount] / followers [count] / leads [count] / brand awareness [reach target]?
3. **Budget and timeframe?** Total budget, campaign duration (in weeks), start date.
4. **Existing assets?** Brand assets (logo, brand guide)? Testimonials / UGC? Existing customer database? Landing page?

---

## Section 1 — Context

### 1.1 Overview

| Item | Detail |
|------|--------|
| Campaign name | [name] |
| Type | Launch / Seasonal / Awareness / Sales / Re-launch |
| Brand | [brand name] |
| Product / service | [short description] |
| Reason for running | [why now? what is the trigger?] |

### 1.2 Market situation

| Factor | Description |
|--------|-------------|
| Industry trend | [current trend] |
| Customer behaviour this season | [what shifted?] |
| What competitors are doing | [notable competitor activity] |
| Opportunity to capture | [market gap] |

### 1.3 Lessons from previous campaigns

| Previous campaign | Result | Lesson |
|-------------------|--------|--------|
| [name] | [KPI hit / missed] | [what worked / didn't] |

---

## Section 2 — Objectives

### 2.1 SMART goals

| Type | Goal | Measured by | Deadline |
|------|------|-------------|----------|
| Business | [e.g., $50K revenue in 4 weeks] | Revenue, GMV | [date] |
| Marketing | [e.g., 5,000 messages, CPMess <$5] | Message count, CPMess, ROAS | [date] |
| Brand | [e.g., reach 2M, +3K followers] | Reach, follower, mentions | [date] |

### 2.2 Detailed KPIs

| KPI | Target | Industry benchmark | Gap |
|-----|--------|--------------------|-----|
| CPMess | [amount] | [region benchmark — see foundation skill] | |
| ROAS | [Nx] | >3x | |
| CPL | [amount] | [benchmark] | |
| Reach | [count] | | |
| Engagement rate | [%] | | |
| Orders | [count] | | |

> Region note: Benchmarks vary by market. CPMess in the US is typically 3–5x higher than SEA. See `product-marketing-context-global` for region-specific benchmark tables.

---

## Section 3 — Target audience

### 3.1 Customer profile

| Attribute | Primary | Secondary |
|-----------|---------|-----------|
| Age range | [range] | [range] |
| Gender | [male / female / all] | |
| Region | [country / region] | |
| Income | [bracket] | |
| Occupation | [role] | |
| Primary pain | [biggest problem] | |
| Desire | [what they want] | |
| Barrier | [why they have not bought] | |
| Channels used | [TikTok / Meta / LinkedIn / etc.] | |
| Influencers | [who / what they trust] | |

### 3.2 Customer insight

> Call skill `09-customer-insight-global` to mine deeper insight.

**Core insight:** [insight statement]

### 3.3 Insight validation checklist

Verify the insight is actually an insight and not just an observation:

| Criterion | Pass | Fail |
|-----------|------|------|
| **Specific** — Specific to this audience, not generic? | [ ] | [ ] |
| **Hidden** — Customer would not say it spontaneously? | [ ] | [ ] |
| **Actionable** — Can be turned into messaging / creative? | [ ] | [ ] |
| **Emotional** — Hits emotion, not only logic? | [ ] | [ ] |
| **True** — Backed by data / observation, not assumption? | [ ] | [ ] |

**Rule:** Must pass at least 4 / 5. Otherwise it is an observation, not an insight. Mine again.

**Distinguish:**

- Observation: "Women 25–35 care about skincare" — everyone knows this, nothing new.
- Insight: "They buy serum not to have better skin — they buy a moment of self-care after an exhausting day." — emotional, actionable for creative.

---

## Section 4 — Core message

### 4.1 Message framework

| Layer | Message | Used for |
|-------|---------|----------|
| Tagline | [5–8 words, memorable] | Everywhere — consistent throughout |
| Key message | [1–2 sentences explaining value] | Website, landing page, lead ads |
| Supporting message #1 | [proof / feature] | Education content |
| Supporting message #2 | [proof / feature] | Persuasion content |
| Supporting message #3 | [proof / feature] | Conversion content |

### 4.2 Tone of voice

| Attribute | Is | Is not |
|-----------|----|----|
| Voice | [e.g., friendly, expert] | [e.g., formal, distant] |
| Language | [e.g., simple, conversational] | [e.g., academic, jargon-heavy] |
| Emotion | [e.g., confident, reassuring] | [e.g., anxious, pressuring] |

---

## Section 5 — Creative direction

### 5.1 Creative territory

| Item | Detail |
|------|--------|
| Visual mood | [e.g., warm, natural, trustworthy — not flashy or fake] |
| Colour palette | [primary + secondary] |
| Typography | [heading + body fonts] |
| Photography style | [e.g., real lifestyle, no stock] |
| Video style | [e.g., talking head + B-roll, UGC, cinematic] |
| Do's | [e.g., real customer photos, vertical 9:16] |
| Don'ts | [e.g., no sad music, no rainbow fonts] |

### 5.2 Key visual

| Element | Description |
|---------|-------------|
| Hero image / video | [main visual concept] |
| Thumbnail style | [description] |
| Text overlay | [yes / no, style] |
| Logo placement | [position, size] |

### 5.3 Creative brief by channel

| Channel | Format | Size | Length | Quantity |
|---------|--------|------|--------|----------|
| TikTok | Vertical video | 9:16 (1080×1920) | 15–60s | [count] |
| Instagram (Reels) | Vertical video | 9:16 | 15–30s | [count] |
| Instagram (feed) | Carousel | 1:1 (1080×1080) | 5–7 slides | [count] |
| Facebook (feed) | Video + image | 1:1, 4:5 | 15–30s | [count] |
| LinkedIn (feed) | Image / carousel / video | 1:1, 1.91:1 | 30–90s | [count] |
| YouTube | Long video + Shorts | 16:9 + 9:16 | 60–600s + 30–60s | [count] |
| Email | Banner + body | 600px width | -- | [count] |
| Landing page | Hero + sections | Responsive | -- | 1 |

---

## Section 6 — Channel system

### 6.1 Channels in use

| Channel | Role | Start date | Budget | KPI |
|---------|------|-----------|--------|-----|
| TikTok (organic) | Reach + awareness | [date] | [production cost] | View, follower |
| TikTok (ads) | Message + conversion | [date] | [amount] | CPMess, ROAS |
| Meta (ads) | Retarget + conversion | [date] | [amount] | CPMess, ROAS |
| LinkedIn (ads) | B2B reach + lead | [date] | [amount] | CPL, lead quality |
| Google Ads (Search) | Intent capture | [date] | [amount] | CPL, ROAS |
| UGC network | Social proof | [date] | [fees] | View, trust |
| Email | Nurture + offer | [date] | -- | Open rate |
| Landing page | Conversion | [date] | [build cost] | Conversion rate |

### 6.2 Paid media plan

| Channel | Goal | Audience | Daily budget | Creative | Duration |
|---------|------|----------|--------------|----------|----------|
| Meta — Awareness | Reach | Broad, LAL 1–3% | [amount] | 15s hook video | [weeks] |
| Meta — Conversion | Message / lead | Retarget + Interest | [amount] | Video + carousel | [weeks] |
| TikTok — Reach | View + message | Broad | [amount] | UGC-style video | [weeks] |
| Google — Search | Intent capture | Branded + non-brand | [amount] | RSA + sitelinks | [weeks] |

---

## Section 7 — Timeline & phases

### 7.1 Budget split by phase

| Phase | Timeline | % Budget | Goal | Primary channels |
|-------|---------|----------|------|------------------|
| Teasing | Week 1 (pre-launch) | 15% | Build curiosity, anticipation | Organic TikTok / IG, email teaser |
| Soft launch | Week 2 | 20% | Test creative, gather data | Paid ads small budget, UGC |
| Full launch | Weeks 3–4 | 40% | Scale winning creative, drive orders | Paid ads at full strength, retarget |
| Sustain | Week 5+ | 25% | Re-engage, retarget, narrow audience | Retarget, email, LINE / WhatsApp nurture |

### 7.2 Detailed timeline

| Date | Activity | Detail | Owner | Status |
|------|----------|--------|-------|--------|
| [D-14] | Creative production | Produce video + image assets | [name] | |
| [D-7] | UGC brief sent | Brief UGC creators | [name] | |
| [D-5] | Landing page live | Setup + full QA | [name] | |
| [D-3] | Teasing begins | Organic posts + stories | [name] | |
| [D-Day] | Official launch | Ads live, blast email, broadcast | [name] | |
| [D+3] | First data review | Check CPMess, CTR, top creative | [name] | |
| [D+7] | Optimisation round 1 | Cut weak creative, scale winners | [name] | |
| [D+14] | Mid-campaign review | Compare vs KPI, adjust | [name] | |
| [D+21] | Retarget phase | Focus on warm audience retarget | [name] | |
| [D+28] | Wrap + report | Summary, lessons, next-step proposal | [name] | |

---

## Section 8 — Deliverables & RACI

### 8.1 Deliverables list

| # | Deliverable | Quantity | Deadline | Producer | Approver |
|---|-------------|----------|----------|----------|----------|
| 1 | TikTok video (30s) | [count] | [date] | [name] | [name] |
| 2 | Facebook video (15s) | [count] | [date] | [name] | [name] |
| 3 | Carousel (5–7 slides) | [count] | [date] | [name] | [name] |
| 4 | Ad copy (3 variants) | [count] | [date] | [name] | [name] |
| 5 | Landing page | 1 | [date] | [name] | [name] |
| 6 | Email templates (welcome + offer) | 2 | [date] | [name] | [name] |
| 7 | UGC briefs | [count] | [date] | [name] | [name] |
| 8 | Video scripts | [count] | [date] | [name] | [name] |
| 9 | Messenger / broadcast content | [count] | [date] | [name] | [name] |
| 10 | Final campaign report | 1 | [date] | [name] | [name] |

### 8.2 RACI matrix

| Deliverable | Marketing Lead | Content Creator | Designer | Ads Specialist | Founder |
|-------------|---------------|----------------|----------|---------------|---------|
| Campaign brief | **R** | I | I | I | **A** |
| Creative production | A | **R** | **R** | C | I |
| Ad copy | A | **R** | I | C | I |
| Ad setup | A | I | I | **R** | I |
| Landing page | A | C | **R** | C | I |
| UGC coordination | **R** | C | I | I | I |
| Daily optimisation | A | I | I | **R** | I |
| Final report | **R** | C | I | C | **A** |

**RACI legend:**

- **R** (Responsible): Does the work
- **A** (Accountable): Owns the outcome, signs off
- **C** (Consulted): Gives input before the work
- **I** (Informed): Receives the result

---

## Section 9 — Risks & mitigation

### 9.1 Campaign risk table

| Risk | Probability | Impact | Severity | Mitigation | Warning trigger |
|------|------------|--------|----------|-----------|-----------------|
| CPMess >50% above target | High | High | **CRITICAL** | Prepare 5 backup creatives, cut spend, shift to organic | CPMess > target +30% after 3 days |
| Creative does not perform | High | High | **CRITICAL** | A/B test from day 1, 3–5 new creatives / week | CTR < 1% after 2 days |
| Landing page conversion low | Medium | High | **HIGH** | A/B test headline + CTA, run heatmap | Conversion < 10% after 1 week |
| UGC delivered late | Medium | Medium | **MEDIUM** | Brief early, keep backup content | UGC not received by D-3 |
| Competitor runs deal at same time | Low | High | **HIGH** | Lean on USP messaging, do not race on price | Competitor ad detected at same time |
| Negative feedback goes viral | Low | Very high | **CRITICAL** | Crisis protocol: respond <2h, transparent, prepared template | More than 5 negative comments / reviews in 1 day |
| Audience fatigue | Medium | Medium | **MEDIUM** | Rotate creative every 5–7 days, expand audience | Frequency >3, CTR drops 30% |
| Budget overrun | Low | Medium | **MEDIUM** | Cap daily budgets, daily spend review | Spend > 110% of plan |

### 9.2 Plan B (fallback)

| Situation | Action |
|-----------|--------|
| Budget cut 50% | Shift 100% to organic + UGC, retarget only |
| Primary channel disrupted (ad ban, etc.) | Move budget to secondary channel within 24h |
| Mid-campaign KPI miss | Emergency meeting, re-brief creative, narrow audience |

---

## Auto-trigger downstream skills

Once the brief is complete, automatically suggest running:

```
02-campaign-brief-global (DONE)
  |
  |-- [Next 1] (ad copy skill if available) -> Ad copy from core message
  |-- [Next 2] 04-script-video-global       -> Scripts from creative direction
  |-- [Next 3] 01-content-calendar-global   -> Calendar from timeline + channels
  |-- [Next 4] (UGC brief skill if available) -> UGC briefs from deliverables
```

---

## Examples — diversified regions

### Example A — US SaaS Q4 launch

- Campaign: New AI-powered analytics module
- Region: US, currency USD
- Budget: $80K over 6 weeks
- Channels: LinkedIn ads, Google Search, podcast sponsorship, email nurture
- KPI: 500 trials, ROAS 3.5x

### Example B — EU DTC perfume Black Friday

- Campaign: Black Friday clearance + new launch combo
- Region: DE / FR / IT, currency EUR
- Budget: EUR 45K over 3 weeks
- Channels: Meta + TikTok ads, Klaviyo flow, Pinterest ads
- KPI: ROAS 4x, AOV EUR 65

### Example C — SEA Lazada / Shopee 11.11

- Campaign: 11.11 mega sale on home appliances
- Region: Singapore + Malaysia + Vietnam, currency SGD / MYR / VND (per market)
- Budget: SGD 25K over 2 weeks
- Channels: TikTok ads + Shopee Live, KOL livestream, LINE / Zalo OA broadcast
- KPI: GMV target SGD 200K, CPMess <SGD 1.50

---

## Quality checklist

Before delivering the brief, verify:

- [ ] All 9 sections present (Context, Objectives, Target, Core Message, Creative Direction, Channel, Timeline, Deliverables, Risks)
- [ ] Goals are SMART — specific, measurable, deadline-bound
- [ ] Insight passes 4 / 5 validation criteria — not just an observation
- [ ] Core message has 3 layers: tagline + key message + supporting messages
- [ ] Creative direction has clear Do's and Don'ts
- [ ] Budget split across 4 phases sums to 100% (Teasing 15% + Soft 20% + Full 40% + Sustain 25%)
- [ ] Timeline has review milestones (D+3, D+7, D+14)
- [ ] RACI is clear — every deliverable has an R and an A
- [ ] At least 5 risks listed, each with severity and warning trigger
- [ ] Plan B (fallback) covers at least 3 situations
- [ ] Region-specific benchmarks used (not blanket global numbers)
- [ ] Tone of voice matches the brand
- [ ] All deadlines feasible — no clashes
- [ ] Currency consistent with `.agents/product-marketing-context-global.md`
