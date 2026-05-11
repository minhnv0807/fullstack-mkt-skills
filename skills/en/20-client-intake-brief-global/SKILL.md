---
name: 20-client-intake-brief-global
description: "Generic client intake brief for international marketing agencies — 11-section template covering business overview, target audience, current marketing, goals, budget, timeline, brand assets, success criteria. Generic version (no industry variants for v2.5 — coming in v2.6+ if demand). Trigger: 'client intake', 'agency brief', 'new client onboarding', 'project kickoff brief', 'discovery call template'."
metadata:
  version: 1.0.0
  category: operations
  language: en
license: MIT
triggers:
  - "client intake"
  - "agency brief"
  - "new client onboarding"
  - "project kickoff brief"
  - "discovery call template"
output: A .md file containing 11-section client intake brief that the client fills in and returns to the agency. The completed brief is the input gate for downstream skills (00, 02, 08, 09, 10).
related:
  - product-marketing-context-global
  - 00-marketing-plan-global
  - 02-campaign-brief-global
  - 09-customer-insight-global
---

# Client Intake Brief (Global, Generic)

> **Role of this skill:** This is the **input gate** for every marketing engagement.
>
> Other "brief" skills are produced by the agency *for* internal teams or vendors:
> - `02-campaign-brief-global` — agency drafts for execution team
> - `06-ugc-egc-brief-global` — agency drafts for creators
> - `12-landing-page-brief-global` — agency drafts for designers/devs
>
> This skill is different — it is the document the **client fills in for the agency** so the agency has structured input to plan from.

> **Note on industry variants:** v2.5 ships a single generic English template. Industry-specific variants (SaaS, DTC, healthcare, real estate, etc.) may be added in v2.6+ based on demand. The generic template is designed to work across categories — agencies should add 1–2 industry-specific questions in Section B and Section I as needed.

---

## For Newbies

A bad intake produces a bad plan. Most agency-client relationships fail in the first 30 days because the agency built a strategy on assumptions instead of facts.

This brief is your insurance policy. It forces the client to write down what they often only carry in their head — their actual customer, their real budget, what success means to them, what they've already tried, what's off-limits.

**Two failure modes to avoid:**
1. **Brief is too short** — agency starts work with 5 lines of context, makes wrong assumptions, three rounds of revisions follow.
2. **Brief is too long** — client abandons it halfway, fills the rest with "TBD," agency starts work blind anyway.

The 11-section template below is the minimum viable intake — designed to be completable in 30–45 minutes by a non-marketer founder.

---

## When to Use This Skill

| Situation | Use this skill? |
|-----------|----------------|
| New client inquiry — collect info before quoting | YES |
| Starting a new marketing project — need structured input | YES |
| Re-brief when client expands scope or pivots goals | YES |
| Onboarding a long-term retainer client | YES |
| Already have full context from extensive discovery calls — go straight to `00-marketing-plan-global` | NO |

---

## Step 0 — Read Context

Read `.agents/product-marketing-context-global.md` if it exists. The agency may already have brand-voice or template preferences captured.

---

## Step 1 — Information Gathering

Ask the agency lead up to 4 questions:

1. **What is the client's industry?** (SaaS, DTC ecommerce, healthcare, education, real estate, professional services, etc.) — used to tailor Section B and I
2. **Client size?** (Solo founder / SMB / Mid-market / Enterprise / Agency-of-record relationship)
3. **Project type?** (Launch / Re-launch / Scale / Long-term retainer / Single campaign)
4. **Delivery format?** (Fillable .md sent by email / Notion doc / Google Form / Typeform / printed in-person)

---

## The 11-Section Intake Template

Designed to flow from easy (basics) to hard (strategic decisions), so the client builds momentum.

### A. Business Overview

The "who are you" section. Quick to fill, builds confidence.

- A1. Legal company name (and trading name if different)
- A2. Year founded
- A3. Founder(s) and key leadership — name, role, LinkedIn
- A4. One-sentence description of what you do
- A5. Annual revenue range — checkbox: pre-revenue / <$100K / $100K–$500K / $500K–$2M / $2M–$10M / $10M+ / prefer not to say
- A6. Geographic markets served (current)
- A7. Geographic markets you want to reach (future)
- A8. Mission / brand philosophy (2–3 lines)
- A9. Tagline or brand promise (if you have one)

### B. Products & Services

The "what you sell" section. The most industry-specific section — adapt sub-questions to the client's category.

- B1. Core products/services/packages — table: name | description | price (or range)
- B2. Best-selling product/service and approximate % of revenue
- B3. New products/services launching in next 6 months
- B4. What problem does your offering solve?
- B5. Top 3 USPs — what makes you different from competitors
- B6. Premium / mid-market / value pricing tier — and why
- B7. Bundle / upsell / cross-sell opportunities

### C. Target Audience

The "who buys" section. Critical for downstream insight work.

- C1. Ideal customer in 2–3 sentences
- C2. Demographics — age range, gender split, income / company size, location, occupation / industry, education (if relevant)
- C3. Psychographics — what they care about, fear, aspire to
- C4. Buying behavior — discovery channels, decision cycle length, who else is involved, where they research
- C5. Existing personas: detailed (please attach) / rough idea (described) / none yet (agency to build)
- C6. Customer reviews / testimonials we should see — links or attachments

### D. Competitive Landscape & Positioning

- D1. Top 3 direct competitors — table: name | website | what they do well | what they do poorly
- D2. Top 2 indirect competitors (different offering, same audience)
- D3. Substitutes — what customers use instead of buying anything
- D4. Current market position — checkbox: premium leader / premium challenger / mid-market mainstream / value/low-cost / niche specialist / not sure (agency to recommend)
- D5. Where you want to sit in 12 months
- D6. Brands you admire (in or out of your industry) and why

### E. Campaign / Project Goals

The "what does success look like" section. Forces measurable thinking.

- E1. Primary objective — checkbox: brand awareness / lead generation / sales-revenue / product launch / repositioning / retention-loyalty / international expansion / other
- E2. Specific KPIs — for each: metric, target number, deadline (provide 3 KPI rows)
- E3. Long-term goal (12–24 months out)
- E4. What does failure look like? What outcomes would make this engagement a waste?
- E5. How will you measure ROI on this engagement?

### F. Budget & Timeline

- F1. Total budget — checkbox: <$5K / $5K–$25K / $25K–$100K / $100K–$500K / $500K+ / need agency recommendation
- F2. Budget split (best estimate) — strategy & creative / paid media / production (video, design, copy) / tools & tech / agency fees, as percentages
- F3. Project start date
- F4. Critical milestones — launches, events, seasons
- F5. Hard deadlines that can't move
- F6. Engagement type — checkbox: one-off / 3-month / 6-month / ongoing retainer

### G. Current Resources

- G1. In-house team relevant to this engagement — table: role | name | hours/week available
- G2. Existing agency or freelancer relationships
- G3. In-house production capability — checkbox: photo/video / copy / design / web dev / email / paid media / influencer relationships / none
- G4. Tools you already pay for and want to keep using
- G5. Founder availability for content (interviews, founder-led video) — yes / limited / no

### H. Existing Digital Assets

- H1. Active channels — for each: handle/URL, follower count: website / Instagram / TikTok / LinkedIn / YouTube / Facebook / Twitter-X / Pinterest / other
- H2. Email list — platform, list size, average open rate, average click rate
- H3. CRM / customer database — platform, customer count, data quality (clean & segmented / partial / messy)
- H4. Analytics setup — checkbox: GA4 installed and tagged / Meta Pixel / TikTok Pixel / server-side tracking / none-or-unsure
- H5. Ad accounts and historical spend — Meta, Google, TikTok, LinkedIn, other (lifetime + current monthly per platform)
- H6. Best-performing past campaigns — share if available

### I. Creative Requirements & Constraints

- I1. Brand voice — checkbox (multi-select): professional/corporate / friendly/conversational / witty/playful / authoritative/expert / inspirational/aspirational / edgy/provocative / warm/nurturing / minimal/understated
- I2. Brands whose tone of voice you admire
- I3. Visual / aesthetic direction — reference brands or moodboards, color palette (if defined), typography (if defined)
- I4. Do's — things to lean into
- I5. Don'ts — things to avoid
- I6. Legal, regulatory, compliance constraints — industry regulations (healthcare claims, financial advice, alcohol marketing), trademark restrictions, required disclaimers, accessibility (WCAG, ADA)
- I7. Languages and markets — primary language(s), localization required for which markets
- I8. Approval process — who signs off on creative, typical turnaround

### J. Desired Deliverables

- J1. Strategy deliverables — checkbox: marketing plan / audience research / competitive audit / positioning / channel strategy / content strategy / measurement framework
- J2. Creative deliverables — checkbox: brand identity refresh / website-landing pages / ad creative (static, video, UGC) / email templates / social content / photo-video production
- J3. Operations deliverables — checkbox: paid media management / email automation / analytics & dashboard / influencer-creator outreach / PR & earned media
- J4. Reporting cadence — checkbox: weekly / bi-weekly / monthly / quarterly

### K. Additional Information

- K1. Attachments to share — checkbox: brand guidelines / past campaign results / customer survey data / sales-CRM data / competitor screenshots / other
- K2. What's something about your business or audience an outsider would never guess?
- K3. What past marketing experiments worked unexpectedly well?
- K4. What past marketing experiments failed and why?
- K5. Questions you want the agency to answer in our next call
- K6. Anything else we should know

---

## Discovery Call Script (use this brief as the agenda)

If you fill this in collaboratively on a discovery call rather than sending it ahead:

1. **Welcome (3 min)** — agency intro, confirm goals of the call
2. **Section A walk-through (5 min)** — quick business overview
3. **Sections B–C (15 min)** — products and target audience deep dive
4. **Section D (10 min)** — competitive landscape, positioning aspiration
5. **Section E (10 min)** — pin down specific KPIs with numbers
6. **Section F (10 min)** — budget reality-check and timeline
7. **Sections G–H (10 min)** — what's already in place
8. **Section I (10 min)** — brand voice, references, constraints
9. **Sections J–K (5 min)** — confirm deliverables, capture extras
10. **Wrap-up (2 min)** — confirm next steps and proposal timeline

Total: ~80 minutes. Schedule 90 to leave buffer.

---

## How the Skill Runs

### Step 1 — Detect industry
From the agency lead's input, identify the client's industry. The generic v2.5 template adapts via the agency adding 1–2 industry-specific questions to Sections B and I.

### Step 2 — Generate the brief file
- File name: `client-intake-brief-[client-name]-[YYYYMMDD].md`
- Example: `client-intake-brief-acme-saas-20260508.md`

### Step 3 — Render the full template
Render all 11 sections (A–K) as a fillable document. Use checkboxes where the question is multi-choice, text fields where it's open. Add example answers below questions where the client may not know how to respond.

### Step 4 — Add agency cover note
Cover note at the top:
- Agency name and contact for questions
- Estimated time to complete (30–45 minutes)
- Submission deadline (default: 5–7 business days)
- What happens after they submit (review meeting + plan v1 timeline)
- Confidentiality statement

### Step 5 — Auto-trigger downstream skills
Once the client returns the completed brief, automatically suggest:

```
20-client-intake-brief-global (input received)
   |
   |-- [Next 1] 09-customer-insight-global    → Deep persona work from Section C
   |-- [Next 2] 08-competitor-research-global → Detailed audit of Section D
   |-- [Next 3] 10-reverse-kpi-calc-global    → Reverse-engineer Section E targets
   |-- [Next 4] 00-marketing-plan-global      → Synthesize into full plan
   |-- [Next 5] 02-campaign-brief-global      → Specific campaign brief(s)
```

---

## Universal Brief Design Principles

### 1. Friendly to non-marketers
- Avoid jargon (TOFU, ROAS, CPA, MQL, SQL) without explanation
- Provide example answers below each question
- Add a "Don't know — please advise" option to questions that require expertise

### 2. Structured > open-ended
- Prefer checkboxes and radio buttons for structured data
- Use 2–3 column tables for comparable items (competitors, products, team)
- Reserve long-form text only for persona, story, and constraints

### 3. Easy → hard ordering
- Start with simple business basics (Section A)
- Build up to strategic and budget decisions (Sections E–F)
- End with reflective questions (Section K)
- Client builds momentum, doesn't quit on question 3

### 4. Time-respectful
- 30–45 minutes total to complete
- Add a progress indicator ("Section A of 11")
- Optional sections marked clearly so client can return later

### 5. Closing commitment
- Client signs off that information is accurate
- Agency commits to confidentiality and use limitation
- Clear timeline (24-hour confirmation, 5–7 business day plan v1)

---

## Red Flags Checklist (review the returned brief)

When the client sends the brief back, scan for these warning signs before quoting:

- [ ] **"TBD" in too many fields** — they haven't done the homework. Schedule a working session.
- [ ] **Budget mismatched to goals** — "$5K to launch internationally" requires re-scoping or re-targeting.
- [ ] **No measurable KPIs** — Section E filled with adjectives ("more leads"). Force numbers before quoting.
- [ ] **Timeline impossible** — wants results "in 2 weeks" with no audience, no list, no creative. Re-set expectations.
- [ ] **Decision-maker not engaged** — brief filled by junior staff, principal hasn't seen it. Pause until you have leadership alignment.
- [ ] **Conflicting stakeholders** — Section I "do's" contradict each other (e.g., "premium luxury feel" + "aggressive discount campaigns").
- [ ] **No data, no tracking** — Section H mostly blank. Plan needs to budget for measurement setup before optimization work.
- [ ] **Recently fired previous agency** — Section G mentions a prior agency relationship that ended. Get the why before signing.
- [ ] **Compliance landmines** — Section I mentions a regulated category (health, finance, alcohol, gambling) without legal contact. Add legal review to scope.

---

## Quality Checklist (before sending to client)

### Content
- [ ] All 11 sections (A–K) present
- [ ] Each question has an example answer or industry-relevant prompt
- [ ] All terminology accessible to a non-marketer
- [ ] "Don't know — advise" option present on expertise-heavy questions
- [ ] Tone matches agency brand (formal / casual / boutique)

### Structure
- [ ] Header includes agency contact, send date, return-by date
- [ ] All tables have clear column headers
- [ ] Checkboxes use consistent Markdown format
- [ ] Next Steps section at the bottom
- [ ] Confidentiality statement included

### Industry adaptation (if applied)
- [ ] Section B has 1–2 industry-specific product/service questions
- [ ] Section I includes industry-specific compliance constraints
- [ ] Persona examples in Section C reflect the client's category
- [ ] Competitive examples in Section D are realistic for the industry

---

## Linked Skills

- **`00-marketing-plan-global`** — once the brief returns, build the full marketing plan
- **`02-campaign-brief-global`** — turn the plan into specific campaign briefs
- **`08-competitor-research-global`** — expand Section D into detailed competitive intelligence
- **`09-customer-insight-global`** — expand Section C into deep persona research
- **`10-reverse-kpi-calc-global`** — turn Section E targets into reverse-engineered funnel math

---

## Notes for v2.6+

Industry variants planned (if demand justifies):
- SaaS / B2B software
- DTC ecommerce (apparel, beauty, F&B)
- Healthcare & wellness
- Real estate
- Online education & coaching
- Professional services (legal, accounting, consulting)
- Restaurants & hospitality

Each variant would override Sections B and I with industry-tuned questions while preserving the 11-section A–K structure.
