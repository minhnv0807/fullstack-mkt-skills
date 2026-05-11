---
name: product-marketing-context-global
description: "Foundation skill for the global marketing cluster. Creates `.agents/product-marketing-context-global.md` with region-specific context (currency, primary platforms, regulations, persona research framework). Pick 1 of 4 region variants: US (USD/FTC), EU (EUR/GDPR), SEA (USD or local/PDPA), LATAM (USD or local/LGPD). All other global skills (00-29) read this context file. Trigger: 'global marketing context', 'international product context', 'US marketing context', 'EU marketing setup', 'SEA marketing context', 'LATAM marketing setup', 'multi-region context'."
metadata:
  version: 1.0.0
  category: foundation
license: MIT
triggers:
  - "global marketing context"
  - "international product context"
  - "US marketing context"
  - "EU marketing setup"
  - "SEA marketing context"
  - "LATAM marketing setup"
  - "multi-region context"
related:
  - product-marketing-context
  - 00-marketing-plan-global
  - 22-personal-brand-context-global
---

# Product Marketing Context (Global Foundation)

> **Foundation skill for the GLOBAL marketing cluster** — runs BEFORE every other global skill (00-29). Creates `.agents/product-marketing-context-global.md` with product, customer, positioning context tuned to a specific region. Parallel to `product-marketing-context` (the Vietnam foundation); this one serves 4 regions: US, EU, SEA, LATAM.

---

## For newbies

### Who is this skill for?

| Audience | Concrete example |
|----------|------------------|
| Founder going international | Already in Vietnam, expanding to US/EU/SEA |
| Global SaaS / DTC brand | Multi-region launch needing region-specific context per market |
| Agency serving international clients | Onboarding a US, EU, SEA, or LATAM client |
| Marketer entering a new market | Setting up positioning for a new geography |

### Who is this NOT for?

- **Vietnam-only marketing** -> Use `product-marketing-context` (VN foundation) instead
- **Personal brand (founder/coach/creator)** -> Use `22-personal-brand-context-global` (when available)
- **Single ad campaign** -> Use `02-campaign-brief-global` directly; you do not need a full context file

### 30-second pre-read

This skill produces ONE region-tagged file (`.agents/product-marketing-context-global.md`) with 12 sections describing your product, customers, competitors, positioning. Pick 1 of 4 region variants (US, EU, SEA, LATAM) — the variant tunes currency, platforms, regulations, persona framework. Every global skill (00-29) reads this file before working — like a medical chart every doctor reads first.

### 3 common errors

1. **Wrong region variant** — "I sell in 5 countries" -> pick PRIMARY market first; multi-region later.
2. **Mixing currencies** — Mixed USD/EUR/local without a primary anchor confuses downstream skills.
3. **Skipping regulations** — GDPR/CCPA/PDPA/LGPD shape data collection; ignoring breaks campaigns at launch.

---

## Why do you need this skill?

Without this file, every global marketing skill has to re-ask: What is the product? Who is the customer? Which region? Currency? Regulations? Platforms? Repetitive, slow, inconsistent.

With `.agents/product-marketing-context-global.md`:
- Answer ONCE at project start
- Every skill reads it automatically -> straight to work
- Region defaults (currency, platforms, regulations) propagate everywhere
- No drift between skills — copy and report use the same persona, currency, metrics

---

## Workflow

```
Step 1: Check existing file
    |-- exists  -> ask which section to update
    |-- missing -> Step 2
Step 2: Choose region variant (US / EU / SEA / LATAM)
Step 3: Collect info per variant (12 sections)
Step 4: Create file `.agents/product-marketing-context-global.md`
```

---

## Step 1: Check existing file

Check whether `.agents/product-marketing-context-global.md` already exists.

- **If it exists** -> read the file, summarize, ask user which section to update. Only collect info for that section.
- **If it does not exist** -> proceed to Step 2.

---

## Step 2: Choose region variant

Ask the user one question: **"Which is your PRIMARY region: US, EU, SEA, or LATAM?"**

### Decision tree

```
Where is your primary market?
    |-- North America (USA, Canada)
    |       --> 01-us.md    (USD, FTC + CCPA, Meta + Google + TikTok)
    |-- European Union (UK, DE, FR, ES, IT, NL, etc.)
    |       --> 02-eu.md    (EUR, GDPR + EU AI Act, Meta + Google + LinkedIn)
    |-- Southeast Asia EXCEPT Vietnam (SG, MY, ID, TH, PH)
    |       --> 03-sea.md   (USD or local, PDPA, TikTok + Shopee/Lazada)
    |-- Latin America (BR, MX, AR, CO, CL)
    |       --> 04-latam.md (USD or local, LGPD, WhatsApp + Meta + Mercado Libre)
    |-- Vietnam only
    |       --> Use `product-marketing-context` (VN foundation) — NOT this skill
    |-- Multi-region (>2 regions equally important)
            --> Pick the LARGEST market as primary; note others in section 12
```

### Detection logic

1. User says explicitly ("we sell in the US") -> load matching variant
2. User vague ("we sell internationally") -> ask which country has the most revenue today
3. Truly multi-region -> pick primary market; add secondary markets in section 12 (Goals)

---

## Step 3: Collect info per variant

After choosing the variant, read the matching file in `variants/` and walk through each section:

1. **Brief explanation** — what this section captures and why it matters
2. **Ask 1-3 questions** — one section at a time, NEVER all at once
3. **Confirm** — read back; user confirms
4. **Move to next section**

**Notes:**
- Every variant has 12 sections (matching the VN foundation structure)
- All 4 variants share the same skeleton but have DIFFERENT defaults, examples, and region-specific notes
- Region cues: currency format, platform list, regulation pointer, cultural context

Variant summary:
- `variants/01-us.md` — USD, FTC + CCPA, Meta + Google + TikTok, JTBD + ICP
- `variants/02-eu.md` — EUR, GDPR + EU AI Act, Meta + Google + LinkedIn, GDPR-compliant ICP
- `variants/03-sea.md` — USD or local, PDPA, TikTok + Shopee/Lazada + LINE, mobile-first persona
- `variants/04-latam.md` — USD or local, LGPD, WhatsApp + Meta + Mercado Libre, WhatsApp-first persona

---

## Step 4: Create the file

Save to `.agents/product-marketing-context-global.md` (create the `.agents/` folder if missing).

```markdown
# Product Marketing Context (Global) — [Product name]

> Region variant: [US / EU / SEA / LATAM]
> Primary currency: [USD / EUR / SGD / BRL / etc.]
> Last updated: [YYYY-MM-DD]
> Compatible with: Claude Code, ChatGPT, Gemini, any AI agent

---

[12 sections following the chosen variant]
```

---

## How other skills use this file

In every global marketing skill (00-marketing-plan-global, 05-ad-copy-global, etc.), add this block under "Collect info":

```markdown
## Collect info

### Step 0: Check global context file

Check whether `.agents/product-marketing-context-global.md` exists:
- **Yes** -> Read everything; pull product / customer / region / currency / regulation context. Do NOT re-ask.
- **No**  -> Suggest user run `product-marketing-context-global` first.
  If user wants to continue anyway, ask 2-3 minimum questions about product + region.
```

**Skills that will read this file:** `00-marketing-plan-global`, `01-content-calendar-global`, `02-campaign-brief-global`, ... `29-*` (all global cluster skills).

---

## Quality checklist

- [ ] File saved at `.agents/product-marketing-context-global.md`
- [ ] Region variant tagged at the top (US / EU / SEA / LATAM)
- [ ] All 12 sections completed (or at least 8 core: 1, 2, 4, 5, 6, 9, 10, 12)
- [ ] Currency format matches region (e.g. `$9.99` for US, `€9,99` for EU)
- [ ] Voice of customer (section 9) uses REAL quotes — not paraphrased
- [ ] Anti-persona explicit (section 7); 3 concrete differentiators (section 6)
- [ ] North Star Metric defined (section 12); last-updated date in file

---

## Related skills

- `product-marketing-context` — Vietnam foundation (parallel)
- `00-marketing-plan-global` — reads this file first
- `22-personal-brand-context-global` — personal brand foundation (when available)

*Global Foundation Skill | Over Powers Agency | v1.0.0*
