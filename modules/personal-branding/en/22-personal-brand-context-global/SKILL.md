---
name: 22-personal-brand-context-global
description: "Foundation skill for global personal brand cluster. Creates `.agents/personal-brand-context-global.md` with region-specific personal brand context. 4 region variants (US/EU/SEA/LATAM); each covers founder/coach/creator inside. Reads BEFORE other PB skills (23-28 global). Trigger: 'global personal brand', 'international personal brand', 'US founder brand', 'EU coach brand', 'creator economy global'."
metadata:
  version: 1.0.0
  category: foundation
license: MIT
triggers:
  - "global personal brand"
  - "international personal brand"
  - "US founder brand"
  - "EU coach brand"
  - "creator economy global"
related:
  - product-marketing-context-global
  - 23-personal-brand-strategy-global
  - 24-ai-avatar-production-global
---

# Personal Brand Context (Global Foundation)

> **Foundation skill for the GLOBAL personal brand cluster** — runs BEFORE every other global PB skill (23-28). Creates `.agents/personal-brand-context-global.md` with personal positioning, niche, story arc, content pillars, audience, voice, monetization tuned to a specific region.
>
> **Parallel to `product-marketing-context-global`:** That one serves PRODUCTS; this one serves PEOPLE — founders, coaches, creators going international.

---

## For newbies

### Who is this skill for?

| Audience | Concrete example |
|----------|------------------|
| Founder / CEO going global | Building thought leadership outside home market |
| Coach / Consultant selling internationally | English-speaking course buyers, global cohorts |
| Creator / KOL with global audience | Targeting US/EU viewers, brand deals in USD/EUR |
| Agency onboarding international personal brand client | Need region-tagged context once, reuse everywhere |

### Who is this NOT for?

- **Vietnam-only personal brand** -> Use `22-personal-brand-context` (VN foundation) instead
- **Company / product brand** -> Use `product-marketing-context-global`
- **Single piece of content** -> Use `05-ad-copy-global` or `04-script-video-global` directly
- **Person who has not decided to build a personal brand yet** -> Brainstorm first; no context file needed yet

### 30-second pre-read

This skill produces ONE region-tagged file (`.agents/personal-brand-context-global.md`) with 12 sections describing WHO YOU ARE in marketing terms. Pick 1 of 4 region variants (US/EU/SEA/LATAM) — the variant tunes currency, primary platforms, regulations, cultural defaults, and gives examples for ALL THREE audience types (founder/coach/creator) inside ONE file. Every other PB skill (23-28) reads this file before working — like a medical chart every doctor reads first.

### 3 common errors

1. **Picking variant by passport, not by audience** — A Vietnamese founder selling SaaS to US enterprise should pick US variant, NOT SEA. Pick by where YOUR AUDIENCE lives.
2. **Mixing audience role inside a region** — Each region variant covers ALL three audience types (founder/coach/creator) but you must declare ONE primary role per file. Multi-role -> pick MAIN role + note secondary.
3. **Skipping story arc** — No one remembers "I am good at X". They remember the JOURNEY. Section 5 is the most under-written and most important.

---

## Why do you need this skill?

**Without this file**, every PB skill has to re-ask: Who are you? What region? What audience? What voice? What story? Repetitive, slow, inconsistent across skills.

**With `.agents/personal-brand-context-global.md`:**
- Answer ONCE at brand setup
- Every PB skill reads it automatically -> straight to work
- Region defaults (currency, platforms, regulations) propagate everywhere
- Story arc + brand voice stay consistent across content, ads, AI avatar, scripts
- Save ~70% of session-setup time

---

## Workflow

```
Step 1: Check existing file
    |-- exists  -> ask which section to update
    |-- missing -> Step 2
Step 2: Choose region variant (US / EU / SEA / LATAM)
Step 3: Declare primary role (Founder / Coach / Creator)
Step 4: Collect info per variant (12 sections, role-specific defaults)
Step 5: Create file `.agents/personal-brand-context-global.md`
```

---

## Step 1: Check existing file

Check whether `.agents/personal-brand-context-global.md` already exists.

- **If it exists** -> read the file, summarize, ask user which section to update. Only collect info for that section.
- **If it does not exist** -> proceed to Step 2.

---

## Step 2: Choose region variant

Ask the user one question: **"Which region is your PRIMARY audience: US, EU, SEA, or LATAM?"**

### Decision tree

```
Where does your PRIMARY audience live?
    |-- North America (USA, Canada)
    |       --> 01-us.md    (USD, FTC, LinkedIn/X/TikTok/YouTube)
    |-- European Union (UK, DE, FR, ES, IT, NL, etc.)
    |       --> 02-eu.md    (EUR, GDPR + EU AI Act, LinkedIn/Substack/Instagram)
    |-- Southeast Asia EXCEPT Vietnam (SG, MY, ID, TH, PH)
    |       --> 03-sea.md   (USD/local, PDPA, LinkedIn/TikTok/LINE)
    |-- Latin America (BR, MX, AR, CO, CL)
    |       --> 04-latam.md (USD/local, LGPD, WhatsApp/Instagram/TikTok)
    |-- Vietnam only
    |       --> Use `22-personal-brand-context` (VN foundation)
    |-- Multi-region
            --> Pick LARGEST audience as primary; note secondary in section 12
```

### Detection logic

1. User says explicitly ("my audience is US founders") -> load matching variant
2. User vague ("I post in English") -> ask which country gives the most engagement / revenue
3. Multi-region -> pick PRIMARY region; add secondary regions in section 12 (KPIs / goals)

---

## Step 3: Declare primary role

Inside the chosen region variant, ask: **"Are you primarily a Founder/CEO, a Coach/Consultant, or a Creator/KOL?"**

| Role | Best for | Distinguishing trait |
|------|----------|---------------------|
| **Founder** | CEO, Co-founder, Startup/SME owner | Personal brand serves the COMPANY (B2B leads, deal flow, talent) |
| **Coach** | Consultant, Mentor, Trainer, Course creator | Personal brand IS the product (revenue from courses, coaching, programs) |
| **Creator** | YouTuber, TikToker, KOL, Podcaster, Streamer | Audience-first; revenue from brand deals + own products |

Multi-role (e.g. founder who also creates content) -> pick MAIN role; note secondary in section 1 (Profile).

---

## Step 4: Collect info per variant

After choosing region + role, read the matching variant file in `variants/` and walk through each section:

1. **Brief explanation** — what this section captures and why it matters
2. **Ask 1-3 questions** — one section at a time, NEVER all at once
3. **Confirm** — read back; user confirms
4. **Move to next section**

**Notes:**
- Every variant has 12 sections (matches VN structure)
- All 4 variants share the same skeleton; DEFAULTS, EXAMPLES, and REGIONAL NOTES change per region
- Inside each section, role-specific guidance is split for Founder / Coach / Creator
- Region cues: currency, platform list, regulation pointer, cultural notes, regional examples

Variant summary:
- `variants/01-us.md` — USD, FTC, LinkedIn/X (founder), LinkedIn/YouTube (coach), TikTok/IG/YouTube (creator). Examples: Naval, Hormozi, MrBeast.
- `variants/02-eu.md` — EUR, GDPR + EU AI Act, LinkedIn/Xing (DACH), Substack newsletter culture. Examples: Daniel Ek, Felicia Hogendorf, Khaby Lame.
- `variants/03-sea.md` — USD/SGD/MYR/IDR/THB/PHP, PDPA, LinkedIn for B2B, TikTok-heavy creators, LINE in Thailand. Examples: Anthony Tan, Vannia Wirawan, Mae Fah Luang.
- `variants/04-latam.md` — USD/BRL/MXN/ARS/COP, LGPD, WhatsApp Business critical for coaches, Instagram + TikTok for creators. Examples: David Velez, Alex Cavoukian, Luisa Fernanda W.

---

## Step 5: Create the file

Save to `.agents/personal-brand-context-global.md` (create the `.agents/` folder if missing).

```markdown
# Personal Brand Context (Global) — [Full name]

> Region variant: [US / EU / SEA / LATAM]
> Primary role: [Founder / Coach / Creator]
> Primary currency: [USD / EUR / SGD / BRL / etc.]
> Last updated: [YYYY-MM-DD]
> Compatible with: Claude Code, ChatGPT, Gemini, any AI agent

---

[12 sections following the chosen variant + role]
```

---

## How other PB skills use this file

In every global PB skill (23-personal-brand-strategy-global, 24-ai-avatar-production-global, 25-28-*), add this block under "Collect info":

```markdown
## Collect info

### Step 0: Check personal brand context

Check whether `.agents/personal-brand-context-global.md` exists:
- **Yes** -> Read everything; pull region / role / niche / audience / voice / story. Do NOT re-ask.
- **No**  -> Suggest user run `22-personal-brand-context-global` first.
  If user wants to continue anyway, ask 2-3 minimum questions about identity + region.
```

**Skills that will read this file:**
- `23-personal-brand-strategy-global` — Personal brand strategy
- `24-ai-avatar-production-global` — AI avatar production (needs voice + visual identity)
- `25-*` through `28-*` — All other global PB skills

---

## Quality checklist

Before finishing:

- [ ] File saved at `.agents/personal-brand-context-global.md`
- [ ] Region variant tagged at the top (US / EU / SEA / LATAM)
- [ ] Primary role declared (Founder / Coach / Creator)
- [ ] All 12 sections completed (or at least core: 1, 2, 3, 4, 5, 6, 7, 11, 12)
- [ ] Currency format matches region ($ / € / S$ / R$ / etc.)
- [ ] Story arc (section 5) has 3 chapters: Origin / Turning point / Current — NOT just "I am good at X"
- [ ] Brand voice (section 7) has BOTH a sample line you would say AND a line you would NEVER say
- [ ] North Star (section 3) is concrete and measurable
- [ ] KPIs (section 12) match role (B2B leads for founder, course MRR for coach, follower/deal floor for creator)
- [ ] Regulation acknowledged (FTC/GDPR/PDPA/LGPD per region) in section 9 or 11
- [ ] Last-updated date present

---

## Related skills

- `product-marketing-context-global` — Global product foundation (parallel to this skill)
- `22-personal-brand-context` — Vietnam personal brand foundation (parallel)
- `23-personal-brand-strategy-global` — Reads this file first
- `24-ai-avatar-production-global` — Needs brand voice + visual identity from this file

*Global PB Foundation Skill | Over Powers Agency | v1.0.0*
