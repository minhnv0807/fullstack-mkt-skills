---
name: 18-referral-program-global
description: "Referral program design for global businesses — 1-way vs 2-way, incentive structure, anti-fraud, attribution. Has 4 region variants for anti-spam compliance (TCPA US, GDPR EU, PDPA SEA, LGPD LATAM). Trigger: 'referral program', 'refer a friend', 'word of mouth', 'viral loop', 'referral marketing'."
metadata:
  version: 1.0.0
  category: operations
license: MIT
triggers:
  - "referral program"
  - "refer a friend"
  - "word of mouth"
  - "viral loop"
  - "referral marketing"
related:
  - product-marketing-context-global
  - 14-email-marketing-global
  - 27-personal-brand-monetize-global
  - references/global-legal-compliance
---

# Referral Program (Global)

> Word of mouth is the highest-LTV acquisition channel in every region. But the LEGAL framework around how you contact referred prospects differs HUGELY: TCPA (US, SMS), GDPR (EU, all channels), PDPA (SEA), LGPD (LATAM). Pick the right region variant or get fined.

---

## For newbies

### Who is this skill for?

| Audience | Concrete example |
|----------|------------------|
| DTC brand wanting cheaper acquisition | Already at USD 30 CAC; want USD 10 CAC via referral |
| SaaS adding viral loop | Existing PMF; want negative CAC growth |
| Service business (coaching, agency) | High-LTV; want client referrals |
| Subscription brand | High retention; turn customers into ambassadors |
| E-commerce wanting AOV growth | Refer a friend = both get discount |

### Who is this NOT for?

- **Vietnam-only referral** -> Use `18-referral-program` (VN skill) — Zalo / Messenger optimized
- **B2B enterprise sales** -> ABM / partnership programs are different motion (not covered here)
- **Brand ambassador / affiliate** -> Use `27-personal-brand-monetize-global` for influencer-affiliate (when available)

### 30-second pre-read

This skill produces ONE referral program design with 6 components: model selection (1-way / 2-way / multi-tier), incentive math (% of LTV), tracking infrastructure, anti-fraud measures, launch sequence, and KPIs (K-factor, viral coefficient). Pick 1 of 4 region variants — the variant tunes the LEGAL rules for contacting referred prospects (especially via SMS/email).

### 3 common errors

1. **SMS-based referral in US without TCPA consent** -> Up to USD 1,500 per text fines + class actions
2. **Email-blast referred contacts in EU** -> GDPR violation; referral programs touching EU prospects need explicit consent from the prospect, NOT just the referrer
3. **Cash incentives that violate FTC endorsement rules** -> "Refer a friend, get USD 100" requires disclosed material connection if referrer posts publicly

---

## Why do you need this skill?

Without proper referral design:
- US: Risk TCPA class action (USD 500-1,500 per message)
- EU: GDPR violation if you store referred-prospect data without their consent
- SEA: PDPA Singapore strict — most referral programs need both-side consent
- LATAM: Brazil LGPD treats referred contacts as data subjects requiring consent
- Universal: incentive math wrong -> losing money instead of growing
- Universal: no anti-fraud -> 30-50% of "referrals" are self-referrals or bots

Plan the legal foundation correctly, get the incentive math right, ship a working viral loop.

---

## Workflow

```
Step 0: Check global context file
    |-- exists -> read product / customer / region
    |-- missing -> suggest user run product-marketing-context-global first
Step 1: Pick region variant (US / EU / SEA / LATAM)
Step 2: Confirm prerequisites (NPS, AOV, LTV, customer base)
Step 3: Choose model (1-way / 2-way / multi-tier affiliate)
Step 4: Calculate incentive (15-25% of LTV)
Step 5: Set up tracking + anti-fraud
Step 6: Design referral flow (7 steps)
Step 7: Launch sequence (30-day plan)
Step 8: Measure K-factor / viral coefficient
```

---

## Step 0: Check global context

Check `.agents/product-marketing-context-global.md`:
- **Yes** -> Read product, customer, region. Do NOT re-ask.
- **No** -> Suggest running `product-marketing-context-global` first.

---

## Step 1: Pick region variant

Ask: **"Which is your PRIMARY region: US, EU, SEA, or LATAM?"**

```
Where do most of your customers (and their referrals) live?
    |-- US / Canada       --> 01-us.md    (TCPA SMS rules; CAN-SPAM email; CCPA data)
    |-- EU / EEA / UK     --> 02-eu.md    (GDPR consent for ALL channels)
    |-- Southeast Asia    --> 03-sea.md   (PDPA per country; mostly opt-in)
    |-- Latin America     --> 04-latam.md (LGPD Brazil; LFPDPPP Mexico)
    |-- Vietnam only      --> Use `18-referral-program` (VN skill)
```

---

## Step 2: Prerequisites — does referral make sense?

### When referral works

- NPS >= 40 (customers actively like you)
- Customer has natural reason to share (visible result, social currency, peer-relevant)
- AOV high enough to fund meaningful incentive (USD 50+ ideal)
- LTV high enough to justify CAC investment
- Existing base of 100+ happy customers to seed

### When referral does NOT work (skip this skill)

- NPS < 20 (customers don't like you yet — fix retention first)
- Sensitive product category (financial advice, intimate health) — referrals feel weird
- Very low AOV (< USD 10) — incentive economics don't work
- Pre-launch or no customer base — no one to refer

### Ask the user

1. Product type? (DTC / SaaS / Service / Subscription)
2. Average AOV and LTV?
3. Existing happy customer count?
4. Goal: more new customers, lower CAC, or higher engagement?

---

## Step 3: Referral models

### Model 1: One-way (referrer gets reward, referee gets nothing)

**When:** Premium product where referee will buy regardless of incentive
**Examples:**
- Tesla referral program (referrer gets credit, new buyer pays full price)
- Robinhood (referrer gets free stock; referee just signs up)

**Pros:** Lower cost
**Cons:** Lower conversion (referee has no extra reason to buy now)

### Model 2: Two-way (BOTH referrer and referee get rewards) — DEFAULT CHOICE

**When:** 80% of cases; psychological "win-win" feels generous to referrer
**Examples:**
- Airbnb (both get USD 25-50 credit)
- Uber (both get USD 5-15 credit)
- Dropbox (both get +500MB)

**Pros:** Higher conversion; referrer feels good giving "gift"
**Cons:** Higher cost per acquisition

**Standard 2-way structure:**

```
Referrer gets: Discount / credit / free product / cash / reward
Referee gets: Discount / free trial / bonus on first order
```

### Model 3: Multi-tier affiliate (% commission on revenue)

**When:** SaaS, high-ticket courses, premium DTC; want power-users / influencers
**Examples:**
- ConvertKit / Kit (30% recurring affiliate)
- Shopify (200% of monthly fee per signup)
- AWeber, Teachable, Coursera (10-50% per sale)

**Pros:** Attracts professional affiliates / influencers; scalable
**Cons:** Requires legal disclosures (FTC US), tracking infrastructure (Rewardful, FirstPromoter), tax forms (W-9 in US, equivalents elsewhere)

**Standard tier structure:**
- Tier 1: 10-30% commission on first purchase
- Tier 2: 5-15% on recurring (next 90 days or lifetime)
- Top tier: 30-50% for super-affiliates (negotiated)

---

## Step 4: Incentive math (CRITICAL)

### The formula

```
Total incentive (both sides combined) <= 15-25% of customer LTV
```

### Worked example (Saas)

```
Product: Project management SaaS
Pricing: USD 49/month
Average tenure: 18 months
LTV: USD 882 (49 x 18)

Incentive cap: 15-25% of LTV = USD 130-220 total

Two-way structure:
  Referrer: 1 month free (USD 49 value) + USD 30 credit = USD 79 cost
  Referee: 50% off first 2 months = USD 49 cost
  Total: USD 128 (within cap)

Or simpler:
  Both get 1 month free = USD 98 total cost
  ROI: USD 882 LTV - USD 98 incentive = USD 784 net per successful referral
```

### Worked example (DTC)

```
Product: Skincare subscription
AOV: USD 50 / box
Average orders: 10
LTV: USD 500

Incentive cap: USD 75-125 total

Two-way structure:
  Referrer: USD 30 credit (next box)
  Referee: USD 20 off first box
  Total: USD 50 (well within cap)
```

### Reward formats — pros and cons

| Format | Pros | Cons | Best for |
|--------|------|------|---------|
| Cash | Highest motivation | Highest cost (out of pocket) | Affiliate, B2B |
| Account credit | Keeps customer | Useless if customer leaves | Subscription, marketplace |
| Discount on next purchase | Pay-on-purchase | Customer may not return | E-commerce |
| Free product / service | Higher perceived value | Logistics complexity | Service, beauty, F&B |
| Physical gift | Tangible delight | Operational burden | Premium DTC |
| Points / rewards | Habit-forming | Requires loyalty system | Retailers, airlines |

---

## Step 5: Tracking + anti-fraud

### Tracking tools (region-agnostic)

| Tool | Best for | Pricing |
|------|---------|--------|
| **ReferralCandy** | Shopify DTC | USD 49+/mo |
| **Rewardful** | SaaS affiliate | USD 49+/mo |
| **FirstPromoter** | SaaS affiliate | USD 49+/mo |
| **Friendbuy** | Mid-market DTC | USD 249+/mo |
| **Mention Me** | Premium DTC | Enterprise |
| **PartnerStack** | B2B SaaS partnerships | USD 500+/mo |
| **Talkable** | Enterprise DTC | Enterprise |
| Build in-house | Full control | Custom |

### Anti-fraud measures

| Risk | Defense |
|------|---------|
| Self-referral via second account | Match phone, address, payment, IP, device fingerprint |
| Public posting on coupon sites | Limit 3-5 redemptions per code; require minimum AOV |
| Bot / script signups | Captcha; rate limit; manual review for large batches |
| Cancel-after-reward | 30-day reward holding period (after return window) |
| Influencer abuse | Cap individual referrer rewards monthly; flag outliers |
| Referee buys then refunds | Hold rewards until past return window; partial reward if partial refund |

---

## Step 6: 7-step referral flow

```
Step 1: Customer has good experience
   |--> Trigger when NPS >= 7 OR after 2nd purchase OR completion of service

Step 2: Customer sees referral CTA
   |--> Email after delivery, dashboard widget, post-purchase page, account menu

Step 3: Customer gets unique code/link
   |--> Personalized: "JANE25" or unique link with UTM tracking

Step 4: Customer shares (multiple channels)
   |--> Built-in share: WhatsApp, Email, SMS, Copy link, Twitter/X
   |--> Pre-filled message in customer's voice

Step 5: Friend clicks / enters code
   |--> Landing page tailored to referral (not generic homepage)
   |--> Reward visible upfront ("Get USD 20 off")

Step 6: Friend converts (purchase)
   |--> Tracking pixel fires; both parties receive notification
   |--> Reward delivered automatically (or held for 30 days)

Step 7: Cycle continues
   |--> Friend now eligible to refer; nudge after first delivery
   |--> Top referrers get bonus tiers ("3 referrals = VIP")
```

---

## Step 7: 30-day launch sequence

### Week 1: Setup

- Choose model (1-way / 2-way / multi-tier)
- Finalize incentive math (LTV calculation, reward structure)
- Pick tool (ReferralCandy / Rewardful / build)
- Create landing page for referee
- Set up email/SMS automation flows
- Set up tracking + attribution
- Legal review (per region variant)

### Week 2: Soft launch (seed)

- Email top 50-100 happiest customers (NPS 9-10)
- Track first referrals; fix bugs
- Iterate on copy / friction points
- Verify reward delivery automation

### Week 3: Public launch

- Email full customer base
- Add referral CTA to:
  - Order confirmation page
  - Post-delivery email
  - Account dashboard
  - Receipt PDF / packaging insert (offline)
- Social posts on owned channels
- Optional: paid promotion to existing customers ("Tell friends, both save")

### Week 4: Optimize

- Identify top sharers (top 10%)
- Bonus push: "You're in top 10 — extra reward this month"
- A/B test:
  - Landing page (referral vs. cold)
  - Reward amount (USD 20 vs USD 30)
  - Channel emphasis (email vs. SMS vs. WhatsApp)

---

## Step 8: KPIs and viral coefficient

### Key metrics

| Metric | Formula | Benchmark |
|--------|---------|-----------|
| Share rate | Referrers / total customers | 10% basic, 20% good, 30%+ excellent |
| Conversion rate | Successful redemptions / shares | 15% basic, 25% good, 40%+ excellent |
| Average referrals per sharer | Successful refs / sharers | 1.2 basic, 2+ good, 3+ excellent |
| K-factor (viral coefficient) | Share rate x Conversion rate x Avg refs | 0.3-0.5 typical, 1.0+ true viral |
| CAC via referral | Reward cost / referred customers | 30-50% of paid CAC |
| Referred customer LTV | Avg LTV of referred customers | Often 1.2x non-referred |

### K-factor interpretation

```
K = 0.3 -> 100 customers bring 30 new -> sub-viral, supplements other channels
K = 0.7 -> 100 customers bring 70 new -> strong supplement
K = 1.0 -> 100 customers bring 100 new -> equilibrium (each customer replaces one)
K > 1.0 -> Viral loop! Exponential growth (rare but transformative)
```

Most healthy referral programs target K = 0.4-0.7. K > 1 is rare and usually requires unique product mechanics (Dropbox, WhatsApp, Calendly).

---

## Output template

```markdown
# Referral Program - [Brand]
Region: [US/EU/SEA/LATAM]
Date: [YYYY-MM-DD]

## 1. Goal
[New customers / Lower CAC / Higher LTV / Multiple]

## 2. Prerequisites confirmed
- NPS: [X]
- AOV: [USD/EUR/etc.]
- LTV: [calculated]
- Customer base: [N]

## 3. Model
[1-way / 2-way / multi-tier]

## 4. Incentive structure
- Referrer gets: [reward + cost]
- Referee gets: [reward + cost]
- Total cost: [USD X, ~Y% of LTV]

## 5. Tracking tool
[ReferralCandy / Rewardful / etc.]

## 6. Anti-fraud measures
[List all 5-7 measures applied]

## 7. Referral flow (7 steps)
[Description per step]

## 8. Launch sequence (30 days)
[Week 1-4 plan]

## 9. KPIs
[Share rate, Conversion rate, K-factor target]

## 10. Legal compliance
[Per region variant — see specific variant file]
```

---

## Quality checklist

- [ ] Region variant chosen (US/EU/SEA/LATAM)
- [ ] NPS >= 40 confirmed (have happy customers)
- [ ] Total incentive cost <= 25% of LTV
- [ ] 2-way model unless strong reason for 1-way
- [ ] Tracking tool integrated and tested
- [ ] Anti-fraud measures live (5+)
- [ ] Reward delivery automated within 24h
- [ ] Legal compliance per region (TCPA / GDPR / PDPA / LGPD)
- [ ] Landing page for referees built
- [ ] K-factor target documented; measure at 30 / 60 / 90 days

---

## Related skills

- `product-marketing-context-global` — foundation
- `14-email-marketing-global` — email-driven referral mechanics
- `27-personal-brand-monetize-global` — affiliate / creator program (when available)
- `references/global-legal-compliance` — deep legal reference

---

*Global Skill 18 (Referral Program) | Over Powers Agency | v1.0.0*
