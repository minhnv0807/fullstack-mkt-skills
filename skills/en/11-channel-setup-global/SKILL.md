---
name: 11-channel-setup-global
description: "Setup marketing channels for global businesses — channel selection, platform-specific setup checklists, integration guides. Has 4 region variants (US/EU/SEA/LATAM) with region-specific platform priorities. US: Meta+Google+LinkedIn. EU: + LinkedIn/Xing. SEA: TikTok+Shopee/Lazada+LINE. LATAM: WhatsApp Business+Mercado Libre. Trigger: 'channel setup', 'platform setup', 'marketing tech stack', 'multi-channel marketing', 'platform selection'."
metadata:
  version: 1.0.0
  category: operations
license: MIT
triggers:
  - "channel setup"
  - "platform setup"
  - "marketing tech stack"
  - "multi-channel marketing"
  - "platform selection"
related:
  - product-marketing-context-global
  - 00-marketing-plan-global
  - 14-email-marketing-global
  - references/global-platforms-comparison
---

# Channel Setup A-Z (Global)

Setup marketing channels for global businesses — selection, platform-specific checklists, integration guides. Region variants (US/EU/SEA/LATAM) provide localized platform priorities.

---

## For newbies — Read this first

If you've never set up marketing channels:

1. **Don't start with all channels.** Pick 2-3 max for the first 90 days. More channels = thinner attention = worse results.
2. **Channel selection depends on your audience, not your preference.** If your customers live on TikTok, Email won't work no matter how much you love Email.
3. **Region matters massively.** WhatsApp dominates LATAM. LINE dominates Thailand. LinkedIn dominates B2B in DE/UK. Don't import US assumptions.
4. **Each channel has 4 setup phases:** Create, Verify, Integrate, Run first 30 days. Skipping phases leads to weak performance later.
5. **Tech stack < Process.** A perfect Meta Pixel doesn't matter if no one is making content. Setup the publishing rhythm first.
6. **Trust takes 30-90 days.** Don't expect ROAS in week 1. Channels need data + content rhythm + audience to mature.
7. **Compliance is per-region.** GDPR (EU), CCPA (US), LGPD (BR), PDPA (TH) — each has rules for tracking, opt-in, and data handling.

---

## Step 0 — Read context + select region variant

Before setting up:

1. **Read `.agents/product-marketing-context-global.md`** — get product, audience, region, target channels.
2. **Pick region variant for platform priority list:**
   - `variants/01-us.md` — North America
   - `variants/02-eu.md` — Europe (GDPR-aware)
   - `variants/03-sea.md` — Southeast Asia
   - `variants/04-latam.md` — Latin America (WhatsApp-first)
3. **See cross-platform comparison:** `references/global-platforms-comparison.md`

### Information gathering

Ask user up to 4 questions:

1. **Which channels are you considering?** (Meta / Google / TikTok / LinkedIn / WhatsApp / LINE / Shopee / Mercado Libre / email — you can pick multiple)
2. **Industry, product, target audience?** What you sell, to whom, in which countries?
3. **Existing channels?** List current channels, follower count, status.
4. **90-day goal?** Followers? Leads? Orders? Brand awareness?

---

## Universal channel framework

### Channel selection criteria

Score each candidate channel on:

| Criterion | Weight |
|-----------|--------|
| Audience match (does your ICP use it?) | 30% |
| Competition vs. opportunity (are gaps available?) | 20% |
| Cost-to-acquire / CPM in your region | 15% |
| Platform stability / longevity | 10% |
| Internal capability (can you produce content?) | 15% |
| Integration with rest of stack | 10% |

> Score 1-5. Total ≥3.5 = include. <3.5 = skip for now.

### 4-phase setup (universal)

| Phase | Duration | Goal |
|-------|----------|------|
| **1. Create & Setup** | Days 1-2 | Account creation, profile completion |
| **2. Verify & Optimize** | Days 3-7 | Verification, tool integration, search optimization |
| **3. Connect & Integrate** | Days 7-14 | Cross-channel linking, automation |
| **4. First 30 days plan** | Days 1-30 | Content, posting cadence, KPI tracking |

---

## Universal platform setup template

For ANY channel, run this template:

### Phase 1: Create & Setup

| Step | Detail | Status |
|------|--------|--------|
| Account creation | Use business email, not personal | [ ] |
| Business account upgrade | Switch to business/professional tier | [ ] |
| Industry category | Select correctly — affects algorithm | [ ] |
| Avatar | Standard size, clear logo, brand-consistent | [ ] |
| Username/handle | Match brand across all channels | [ ] |
| Bio / About | Clear positioning + CTA | [ ] |
| Cover image / banner | Brand visual + offer/CTA | [ ] |
| Contact info | Phone, email, hours, address (if local) | [ ] |
| Primary CTA | Message / Call / Book / Shop / etc. | [ ] |

### Phase 2: Verify & Optimize

| Step | Detail | Status |
|------|--------|--------|
| Identity verification | Submit docs as required | [ ] |
| 2FA enabled | Security baseline | [ ] |
| Pixel/tracking installed | Site or app side | [ ] |
| Conversion API setup | Server-side (where supported) | [ ] |
| Analytics integration | GA4 / native analytics | [ ] |
| Auto-reply / DM templates | Welcome + FAQ | [ ] |
| Search optimization | Hashtags, keywords, categories | [ ] |
| Privacy/legal pages linked | Terms, Privacy Policy, Refund Policy | [ ] |

### Phase 3: Connect & Integrate

| Step | Detail | Status |
|------|--------|--------|
| Cross-platform linking | IG ↔ FB, TikTok ↔ IG, etc. | [ ] |
| Ad account linking | Business Manager / Ads Manager setup | [ ] |
| CRM integration | Sync leads/customers to CRM | [ ] |
| Email/messaging integration | List sync, automation triggers | [ ] |
| E-commerce integration | Shop, catalog, product feed | [ ] |
| Chatbot setup (if used) | Pre-built flows for FAQ + intent | [ ] |
| Team access | Roles: admin / editor / analyst | [ ] |

### Phase 4: First 30 days plan

| Week | Volume | Content type | Goal |
|------|--------|--------------|------|
| 1 | TOFU (top of funnel) | Brand intro, value, behind-scenes | Test format, find voice |
| 2 | TOFU + light MOFU | Education, tips, demos | Build engagement, lead capture |
| 3 | MOFU + light BOFU | Social proof, case studies, comparisons | Trust + initial conversions |
| 4 | Mix 40/30/30 (TOFU/MOFU/BOFU) | Educational + promo balance | Establish recurring sales motion |

---

## Common platforms — neutral overview

> Detailed per-region setups in variants. This is universal context.

### Meta (Facebook + Instagram)

- Universal: works in all regions, strongest for B2C
- Setup: Page → Business Manager → Pixel + CAPI → Ads Manager
- Strengths: Massive audience, mature ad tools, Conversion API
- Weaknesses: iOS attribution gap (US), GDPR complexity (EU)

### Google (Search + Display + YouTube + Shopping)

- Universal: high-intent search ads everywhere
- Setup: Google Ads + Merchant Center (e-com) + GA4
- Strengths: Search intent, YouTube reach, Shopping for e-com
- Weaknesses: Lower brand-build than Meta, requires SEO foundation

### TikTok (Ads + Organic + Shop)

- Universal: works in most countries, strongest in SEA + US Gen Z
- Setup: TikTok Business → Ads Manager → Pixel
- Strengths: Lowest CPM in many regions, viral reach, TikTok Shop
- Weaknesses: Banned in India, restricted in some markets

### LinkedIn

- Universal: dominant for B2B in US, UK, DE, AU
- Setup: Company Page → Campaign Manager → Insight Tag
- Strengths: B2B targeting (job title, company size), thought leadership
- Weaknesses: Expensive CPM, weaker for B2C

### WhatsApp Business / LINE / Zalo (Messaging-first)

- Region-specific: WhatsApp = LATAM/IN/EU; LINE = TH/JP/TW; Zalo = VN
- Setup: Verified Business Account → Cloud API → Templates → Bot
- Strengths: 90%+ read rates, conversational sales
- Weaknesses: Requires staff to handle replies, opt-in compliance

### E-commerce platforms (Shopee / Lazada / Tokopedia / Mercado Libre / Amazon)

- Region-specific: Shopee/Lazada/Tokopedia = SEA; Mercado Libre = LATAM; Amazon = US/EU
- Setup: Seller account → Catalog upload → Internal ads
- Strengths: Built-in audience, payment, logistics
- Weaknesses: Platform takes 4-15% fee, less brand control

### Email (Klaviyo / Mailchimp / Brevo / ActiveCampaign)

- Universal but highest ROI in US/EU
- Setup: Domain auth (DKIM/SPF/DMARC) → list import → automation flows
- Strengths: Highest ROI when list grows, owned channel
- Weaknesses: Slow to grow, lower priority in LATAM/SEA

---

## Decision tree — which variant to use

| Region | Variant | Primary platform priority |
|--------|---------|---------------------------|
| US, Canada | `01-us.md` | Meta + Google + LinkedIn (B2B) + Klaviyo |
| EU, EEA, UK | `02-eu.md` | Meta + Google + LinkedIn + Xing (DE) + GDPR-compliant ESP |
| SEA | `03-sea.md` | TikTok + Shopee/Lazada + Meta + LINE/Zalo |
| LATAM | `04-latam.md` | WhatsApp Business + Meta + Mercado Libre + TikTok |

---

## Cross-channel integration patterns

### Lead capture pattern

```
Ad (Meta/TikTok/Google)
  → Landing page or Click-to-Message
  → Lead form / Inbox conversation
  → CRM (HubSpot, Pipedrive, RD Station, Bitrix)
  → Email/WhatsApp nurture sequence
  → Sales handoff or self-serve checkout
```

### E-commerce pattern

```
Ad (Meta/TikTok/Google Shopping)
  → Product page (own site or platform)
  → Cart / Checkout (with retargeting pixel)
  → Email/SMS abandoned cart sequence
  → Post-purchase upsell (email + on-site)
  → Repeat purchase reactivation (email/SMS/WhatsApp)
```

### Service business pattern

```
Ad (Meta/TikTok/Google Local)
  → Click-to-message (WhatsApp/Messenger/LINE/Zalo)
  → Inbox conversation (qualify lead)
  → Booking link (Calendly/Setmore/native scheduler)
  → Pre-appointment reminder (SMS/WhatsApp)
  → Post-service review request → repeat booking
```

### B2B pattern

```
Ad (LinkedIn/Google Search)
  → Whitepaper or webinar landing page
  → Lead capture form (name, company, role)
  → Email nurture sequence (5-7 emails)
  → SDR outreach (cold email + LinkedIn DM)
  → Demo / discovery call → close
```

---

## 30/60/90-day milestones (universal)

| Day | Milestone | KPI |
|-----|-----------|-----|
| Day 7 | All accounts created, profiles complete | 100% setup checklist |
| Day 14 | First content published on each channel | 5+ posts/channel |
| Day 30 | Cadence established, first leads | 20+ posts, 50+ followers, 5+ leads |
| Day 60 | Content rhythm + paid ads running | 100+ followers, 20+ leads, ROAS measurable |
| Day 90 | Optimization phase begins | First repeat customers, ROAS target hit |

---

## Common mistakes — universal

| Mistake | Cost | Fix |
|---------|------|-----|
| Setting up too many channels at once | Thin attention, weak content on each | Start 2-3 max |
| Skipping pixel/tracking setup | Cannot measure ROI accurately | Setup BEFORE first ad spend |
| Inconsistent branding across channels | Trust gap | Brand kit + asset library |
| No content calendar | Random posting → algorithm punishes | 1 calendar across all channels |
| Ignoring platform-specific norms | Look out of place, low engagement | Lurk first, observe norms |
| No automation | Manual work doesn't scale | Email/SMS/WhatsApp automation flows from day 1 |
| Compliance oversight | Account ban, fines | Region-specific compliance per variant |
| No analytics dashboard | Cannot see across channels | One BI tool (Looker Studio, GA4, etc.) |

---

## Cross-reference

| Need | Skill |
|------|-------|
| Marketing strategy first | `00-marketing-plan-global` |
| Content calendar | `01-content-calendar-global` |
| Email marketing deep dive | `14-email-marketing-global` |
| Customer insight before channel pick | `09-customer-insight-global` |
| Performance evaluation | `03-performance-eval-global` |
| Reverse KPI for budget | `10-reverse-kpi-global` |

---

## Quality checklist

Before delivering channel setup plan:

- [ ] Region variant selected — platform priorities match user's market
- [ ] User confirmed channel selection (no "set up everything" pattern)
- [ ] 4-phase setup checklist filled per channel
- [ ] Cross-channel integration path mapped
- [ ] Pixel/tracking + Conversion API status confirmed
- [ ] CRM integration planned
- [ ] Compliance per region (GDPR/CCPA/LGPD/PDPA) addressed
- [ ] Content calendar for first 30 days defined
- [ ] Team access + roles assigned
- [ ] 30/60/90-day KPIs realistic for region
- [ ] Mobile-first design verified for SEA/LATAM
- [ ] Common mistakes review done
