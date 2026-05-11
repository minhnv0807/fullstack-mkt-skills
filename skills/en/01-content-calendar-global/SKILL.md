---
name: 01-content-calendar-global
description: "Monthly content calendar for global businesses — multi-channel posting schedule with funnel ratio, content pillars, repurposing matrix, and quality scoring. Reads `.agents/product-marketing-context-global.md`. Universal framework, region-specific posting times via foundation skill. Trigger: 'content calendar', 'posting schedule', 'monthly content plan', 'social media calendar', 'editorial calendar'."
metadata:
  version: 1.0.0
  category: content
license: MIT
triggers:
  - "content calendar"
  - "posting schedule"
  - "monthly content plan"
  - "social media calendar"
  - "editorial calendar"
related:
  - product-marketing-context-global
  - 00-marketing-plan-global
  - 04-script-video-global
  - 02-campaign-brief-global
  - 09-customer-insight-global
---

# Global Content Calendar

> Plan a 30-day multi-channel content calendar with funnel ratios, content pillars, source-type mix, and AI scoring before publishing.

---

## Step 0 — Read context file

Before generating the calendar, read `.agents/product-marketing-context-global.md` for:

- Brand voice & tone
- Active channels and follower base
- Region (drives optimal posting times and channel mix)
- Currency (drives any monetary CTA framing)

If the file is missing, ask the user to run `product-marketing-context-global` first.

---

## Information gathering

Ask the user up to 4 questions before starting:

1. **Product / service?** Industry, core USP, price tier.
2. **Active channels?** List channels (TikTok, Instagram, Facebook, YouTube, LinkedIn, X, Email, Blog, Podcast) with current follower / subscriber counts.
3. **Goal this month?** Grow followers / grow inbound messages / grow orders / launch a new product / seasonal campaign?
4. **Content resources?** How many people produce content? Can you record video? Do you have UGC / testimonials available?

---

## Calendar principles

### 1. Funnel distribution

| Funnel stage | Share | Goal | Content type |
|-------------|-------|------|-------------|
| TOFU (Awareness) | 40% | Attract new viewers | Trends, tips, POV, behind-the-scenes, pain points |
| MOFU (Consideration) | 35% | Build trust, persuade | Case study, review, comparison, process, FAQ |
| BOFU (Conversion) | 15% | Close the order | Offer, deal, countdown, retarget, livestream |
| Retention | 10% | Retain existing customers | VIP content, referral, community, re-engagement |

### 2. Content pillar balance

Every brand needs 3–5 pillars. Audit balance weekly.

| Pillar | Recommended share | This week's count |
|--------|-------------------|-------------------|
| Education | 30–35% | [count] / [total] = [%] |
| Inspiration | 20–25% | [count] / [total] = [%] |
| Entertainment | 20–25% | [count] / [total] = [%] |
| Selling | 10–15% | [count] / [total] = [%] |
| Community | 5–10% | [count] / [total] = [%] |

**Rule:** If any pillar drifts more than 10% from its target, rebalance the following week.

### 3. Source-type mix

| Source type | Share | Description |
|-------------|-------|-------------|
| FGC (Founder Generated) | 25–30% | Founder / expert content — highest trust |
| Brand Content | 30–35% | Official brand assets |
| UGC (User Generated) | 20–25% | Customer-created — social proof |
| EGC (Employee Generated) | 10–15% | Team-created — authentic culture |

---

## Content matrix — generate ideas at scale

> Adapted from Justin Welsh's content matrix method. Universal, works in any market.

Multiply your **content pillars** by **8 formats** to generate 24–40 ideas in one sitting.

### 8 content formats

| # | Format | Description | Example |
|---|--------|-------------|---------|
| 1 | **How-to** | Teach a specific skill, step by step | "3 steps to set up a Meta Pixel correctly" |
| 2 | **Inspiration** | Success stories, overcoming obstacles | "From 0 to 50K followers in 6 months — true story" |
| 3 | **Analysis** | Explain why, how a mechanism works | "Why expensive ads still produce no orders — root cause analysis" |
| 4 | **Contrarian** | Challenge a common belief | "Running more ads is NOT how you grow orders" |
| 5 | **Observation** | Hidden trends, things others miss | "Something is happening on TikTok Shop that few notice" |
| 6 | **X vs Y** | Compare 2 tools / approaches / strategies | "Meta Ads vs TikTok Ads: which industries pick which?" |
| 7 | **Now vs Future** | Predictions, upcoming trends | "Marketing 2025 vs 2026: 5 big shifts" |
| 8 | **List** | Tips, mistakes, lessons, tools | "7 most common ad mistakes SMBs make" |

### How to use

1. Pull 3–5 brand content pillars (from `product-marketing-context-global` or by asking)
2. Build a grid: pillars (rows) × 8 formats (columns) = 24–40 ideas
3. Each cell holds a **specific headline** — never generic ("Marketing" is wrong, "3 ways to cut CPMess below $5" is right)
4. Pick the 15 strongest ideas → fill them into the weekly calendar

### Content matrix template

```markdown
| Pillar \ Format | How-to | Inspiration | Analysis | Contrarian | Observation | X vs Y | Now vs Future | List |
|-----------------|--------|-------------|----------|------------|-------------|--------|---------------|------|
| [Pillar 1] | [Idea] | [Idea] | [Idea] | [Idea] | [Idea] | [Idea] | [Idea] | [Idea] |
| [Pillar 2] | [Idea] | [Idea] | [Idea] | [Idea] | [Idea] | [Idea] | [Idea] | [Idea] |
| [Pillar 3] | [Idea] | [Idea] | [Idea] | [Idea] | [Idea] | [Idea] | [Idea] | [Idea] |
| [Pillar 4] | [Idea] | [Idea] | [Idea] | [Idea] | [Idea] | [Idea] | [Idea] | [Idea] |
```

> **Tip:** Run the matrix once per month → bank 32+ ideas. You will never run dry.

---

## Content repurposing matrix — 1:7 ratio

Every source asset spawns at least 7 derivatives.

### Repurposing table

| # | Source asset | Derivative | Target channel | Length / size | Production time |
|---|-------------|-----------|----------------|---------------|-----------------|
| 1 | Long video (3–5 min) | Original | YouTube | 3–5 min | 2–4h |
| 2 | | Short clip #1 (hook) | TikTok | 15–30s | 15 min |
| 3 | | Short clip #2 (key tip) | Reels | 15–30s | 15 min |
| 4 | | Short clip #3 (outcome) | TikTok / Shorts | 15–30s | 15 min |
| 5 | | Carousel (5–7 slides) | Instagram, LinkedIn | 5–7 images | 30 min |
| 6 | | SEO blog post | Website | 800–1500 words | 1–2h |
| 7 | | Email newsletter | Email list | 300–500 words | 30 min |
| 8 | | 3 quote cards | Story, Threads, X | 1 image / card | 15 min |
| 9 | | Audio snippet | Podcast feed / OA voice | 1–2 min | 10 min |

### Repurposing workflow

```
Day 1: Record / write source asset
Day 1: Cut short clips (3 clips, 45 min)
Day 2: Build carousel + quote cards (45 min)
Day 2: Write blog post from source (1–2h)
Day 3: Send email newsletter (30 min)
Day 3–7: Schedule derivatives across channels
```

---

## Optimal posting times — region note

Posting times shift by region. The defaults below cover the **global average**. Override per region using `product-marketing-context-global`.

### Global default windows (local time)

| Channel | Mon–Fri | Saturday | Sunday | Notes |
|---------|---------|----------|--------|-------|
| **TikTok** | 7:00–9:00, 12:00–13:00, 19:00–22:00 | 10:00–12:00, 19:00–22:00 | 10:00–12:00, 19:00–22:00 | Peak: 20:00–21:00 |
| **Instagram** | 7:00–9:00, 12:00–14:00, 18:00–20:00 | 9:00–11:00, 18:00–20:00 | 10:00–12:00 | Peak: 12:00–13:00 |
| **Facebook** | 8:00–10:00, 13:00–15:00, 19:00–21:00 | 9:00–11:00, 19:00–21:00 | 10:00–13:00 | Peak: 13:00, 20:00 |
| **LinkedIn** | 7:30–9:00, 11:30–13:30, 17:00–18:30 | Skip / low | Skip / low | B2B: Tue/Wed/Thu best |
| **YouTube** | 17:00–22:00 | 14:00–17:00 | 14:00–17:00 | Long videos — weekends stronger |
| **X (Twitter)** | 8:00–10:00, 12:00–13:00, 17:00–19:00 | 9:00–11:00 | 10:00–12:00 | Peak: 9:00 weekdays |
| **Email** | 8:00–10:00, 14:00–15:00 | Skip | Skip | Tue + Thu best for B2B, Wed for B2C |
| **Blog / SEO** | Any | Any | Any | 2–4 posts / week, indexes in 1–3 days |

### Region notes (set in foundation skill)

- **US**: Time zones split (ET / CT / PT) — schedule to dominant audience zone. LinkedIn strong for B2B SaaS.
- **EU**: Strict GDPR — confirm consent for email. CET / GMT split. LinkedIn strong DACH region.
- **SEA**: TikTok dominates, LINE / Zalo / WhatsApp are messenger-of-record. Mobile-first, evening peak 19:00–22:00.
- **LATAM**: WhatsApp + TikTok + Instagram primary. Spanish + Portuguese require localised copy. Late-evening engagement (21:00–23:00).
- **APAC ex-China**: Mix of Instagram, TikTok, LINE (Japan / Taiwan), KakaoTalk (Korea). Localisation required.
- **MENA**: Snap + TikTok + Instagram. Friday is weekend — adjust scheduling.

### Seasonal peaks (universal)

| Season | Notes | Adjustment |
|--------|-------|------------|
| Q4 (Black Friday / Cyber Monday) | CPM spikes 30–50%, engagement up | Pre-warm audience 2 weeks early, pre-schedule content |
| End-of-year holidays | E-commerce, education, gifting peak | Higher CPMs through Dec |
| Back-to-school (Aug–Sep, Northern Hemisphere) | Education, edtech, productivity tools spike | Education content surge |
| Summer (Jun–Aug N. Hemisphere) | F&B, travel, leisure surge | Leisure-themed content |
| Region-specific (Lunar New Year, Ramadan, Diwali) | Local cultural moments | Plan 2–3 weeks in advance, localise content |

---

## AI content scoring

Score every piece before publishing (0–10 scale):

| Criterion | Weight | Score (1–10) | Score × weight |
|-----------|--------|--------------|---------------|
| **Hook** (first 3 seconds — does it stop the scroll?) | 25% | [score] | |
| **Relevance** (does it match the target customer insight?) | 20% | [score] | |
| **Value** (what does the viewer take away?) | 20% | [score] | |
| **CTA** (clear and action-driving?) | 15% | [score] | |
| **Visual** (image / video quality?) | 10% | [score] | |
| **Brand consistency** (correct tone, colours?) | 10% | [score] | |
| **Total** | **100%** | | **[total] / 10** |

**Publishing thresholds:**

- 8–10: Publish now, consider boosting with paid
- 6–7.9: Publish with minor edits
- 4–5.9: Rewrite hook or CTA before publishing
- <4: Do not publish, redo

---

## Weekly calendar template

### Week [number] — [start date] to [end date]

| Date | Day | Channel | Time | Format | Funnel | Pillar | Topic | Hook / headline | CTA | Source type | Owner | Status |
|------|-----|---------|------|--------|--------|--------|-------|-----------------|-----|-------------|-------|--------|
| [date] | Mon | TikTok | 20:00 | Video 30s | TOFU | Education | [topic] | [hook 3s] | [CTA] | FGC | [name] | Draft / Done / Posted |
| [date] | Mon | Instagram | 12:00 | Carousel | MOFU | Inspiration | [topic] | [headline] | [CTA] | Brand | [name] | |
| [date] | Tue | TikTok | 12:00 | Video 15s | TOFU | Entertainment | [topic] | [hook] | [CTA] | EGC | [name] | |
| [date] | Tue | Email | 09:00 | Newsletter | MOFU | Education | [topic] | [subject line] | [CTA] | Brand | [name] | |
| [date] | Wed | TikTok | 20:00 | Video 30s | MOFU | Inspiration | [topic] | [hook] | [CTA] | UGC | [name] | |
| [date] | Wed | Facebook | 20:00 | Video 60s | BOFU | Selling | [topic] | [headline] | [CTA] | Brand | [name] | |
| [date] | Thu | TikTok | 12:00 | Video 15s | TOFU | Education | [topic] | [hook] | [CTA] | FGC | [name] | |
| [date] | Thu | Email | 08:30 | Offer | BOFU | Selling | [topic] | [subject line] | [CTA] | Brand | [name] | |
| [date] | Thu | LinkedIn | 09:00 | Post | MOFU | Education | [topic] | [headline] | [CTA] | FGC | [name] | |
| [date] | Fri | TikTok | 20:00 | Video 30s | TOFU | Entertainment | [topic] | [hook] | [CTA] | EGC | [name] | |
| [date] | Fri | Facebook | 12:00 | Post | MOFU | Education | [topic] | [headline] | [CTA] | Brand | [name] | |
| [date] | Sat | TikTok | 20:00 | Video 30s | MOFU | Inspiration | [topic] | [hook] | [CTA] | UGC | [name] | |
| [date] | Sat | Instagram | 18:00 | Reels | TOFU | Entertainment | [topic] | [hook] | [CTA] | FGC | [name] | |
| [date] | Sun | TikTok | 20:00 | Video 15s | TOFU | Education | [topic] | [hook] | [CTA] | FGC | [name] | |
| [date] | Sun | Blog | -- | Post | MOFU | Education | [topic] | [SEO title] | [CTA] | Brand | [name] | |

### Weekly balance check

| Item | Plan | Actual | On ratio? |
|------|------|--------|-----------|
| **Funnel:** TOFU | 40% (6 posts) | [count] | Yes / No |
| **Funnel:** MOFU | 35% (5 posts) | [count] | |
| **Funnel:** BOFU | 15% (2 posts) | [count] | |
| **Funnel:** Retention | 10% (2 posts) | [count] | |
| **Pillar:** Education | 30–35% | [count] | |
| **Pillar:** Inspiration | 20–25% | [count] | |
| **Pillar:** Entertainment | 20–25% | [count] | |
| **Pillar:** Selling | 10–15% | [count] | |
| **Pillar:** Community | 5–10% | [count] | |
| **Source:** FGC | 25–30% | [count] | |
| **Source:** Brand | 30–35% | [count] | |
| **Source:** UGC | 20–25% | [count] | |
| **Source:** EGC | 10–15% | [count] | |

---

## Recommended posting frequency by channel

| Channel | Minimum | Recommended | Optimal | Notes |
|---------|---------|-------------|---------|-------|
| TikTok | 3 videos / week | 5–7 videos / week | 1–2 videos / day | More posts = more data to optimise |
| Instagram | 3 posts / week | 4–5 posts / week | 1 post / day | Reels prioritised |
| Facebook | 3 posts / week | 4–5 posts / week | 1 post / day | Mix video + carousel + text |
| LinkedIn | 2 posts / week | 3–4 posts / week | 1 post / weekday | B2B: longer-form posts win |
| X (Twitter) | 5 / week | 1–2 / day | 3–5 / day | Threads + replies drive reach |
| YouTube | 1 video / week | 1–2 videos / week | 2 videos / week | Quality > quantity |
| Email | 1 email / week | 2 emails / week | 2 emails / week | Beyond this risks spam complaints |
| Blog / SEO | 1 post / week | 2–4 posts / week | 1 post / day | SEO compounds over time |

---

## Cross-reference

| When you need | Call skill |
|---------------|-----------|
| Script for a TikTok video in this calendar | `04-script-video-global` |
| Ad copy for a Facebook post in this calendar | (use ad copy skill if available) |
| Insights to pick topics | `09-customer-insight-global` |
| Overall plan that contains this calendar | `00-marketing-plan-global` |
| Campaign-specific calendar | `02-campaign-brief-global` |

---

## Examples — diversified regions

### Example A — US B2B SaaS

- 4 channels: LinkedIn (primary), X / Twitter, YouTube, Email newsletter
- 12 posts / week: LinkedIn 4 + X 3 + YouTube 1 + Email 2 + Blog 2
- Mix: Education 40%, Inspiration 20%, Analysis 25%, Selling 15%

### Example B — EU DTC apparel

- 5 channels: Instagram, TikTok, Pinterest, Email, Blog
- 18 posts / week: IG 5 + TikTok 7 + Pinterest 3 + Email 2 + Blog 1
- Mix: Inspiration 35%, Education 20%, Entertainment 30%, Selling 15%

### Example C — SEA fitness coaching app

- 4 channels: TikTok, Instagram, LINE / WhatsApp broadcast, YouTube Shorts
- 16 posts / week: TikTok 7 + IG 4 + LINE 2 + Shorts 3
- Mix: Inspiration 30%, Education 30%, Entertainment 25%, Selling 15%

---

## Quality checklist

Before delivering the calendar, verify:

- [ ] At least 15 posts per week (or matching the user's target frequency)
- [ ] Funnel ratio sums correctly: TOFU 40% + MOFU 35% + BOFU 15% + Retention 10%
- [ ] Content pillars balanced — no pillar drifts more than 10% off target
- [ ] Source-type mix includes FGC, Brand, UGC, EGC
- [ ] Every post has a specific hook / headline — no blanks
- [ ] Every post has a clear CTA
- [ ] Posting times respect the region's local peak windows
- [ ] No two posts on the same channel at the same time
- [ ] Content repurposing — every source asset has at least 3 derivatives
- [ ] Email kept to 2 / week (excluding welcome flows)
- [ ] Owner and status columns filled
- [ ] AI Content Score >= 6 for every post
- [ ] Region-specific channels included where relevant
- [ ] Currency in CTAs matches `.agents/product-marketing-context-global.md`
