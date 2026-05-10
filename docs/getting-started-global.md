# Getting Started — Global Marketing Cluster (5 minutes)

> **5-minute quickstart** for the global cluster (skills `00-29-global` + `product-marketing-context-global`).
> By the end: you know **the next 5 things to do** to stand up international marketing.

---

## Step 1: Install the plugin (1 minute)

```bash
/plugin marketplace add minhnv0807/fullstack-mkt-skills
/plugin install fullstack-mkt-skills
```

Expected terminal output:

```
Loading marketplace...
Found 60+ skills (Vietnam + Global), 5 agents, 8 global workflows
Installing v2.5.0...
[OK] Installed: fullstack-mkt-skills@2.5.0
[OK] 30 global skills loaded (00-29 + product-marketing-context-global)
[OK] 8 global workflows registered (incl. dropshipping-launch)
[OK] 5 agents now universal (auto-detect VN vs Global context)
Restart Claude Code to activate.
```

If output looks different (e.g., "Failed", "Not found") -> see "Common errors" at the bottom of this doc.

---

## Step 2: Open Claude Code (30 seconds)

```bash
claude
```

Expected output:

```
Welcome to Claude Code v1.x.x
60+ skills available (type /skill list)
8 global workflows ready (type /workflow list global)
Type /help for commands.

>
```

---

## Step 3: Run skill `product-marketing-context-global` (30 seconds)

```bash
/skill product-marketing-context-global
```

Expected output:

```
[Skill activated] product-marketing-context-global v1.0.0
Foundation skill — Global marketing context (4 region variants).

Before we start, which region are you serving?
1. US      — North America. USD. FTC + state-level regs.
2. EU      — European Union + UK. EUR/GBP. GDPR + EU AI Act.
3. SEA     — Southeast Asia (excl. VN). USD or local. PDPA per country.
4. LATAM   — Latin America. USD or local. LGPD + per country.

Reply with: 1, 2, 3, or 4.
```

---

## Step 4: Pick the region variant (1 minute)

Reply with `1`, `2`, `3`, or `4` based on where your customers live.

Quick rule of thumb:

- **US** = North America customers, USD pricing, English (en-US) primary, ad mix Meta + Google + TikTok + LinkedIn (B2B)
- **EU** = European Union or UK customers, EUR/GBP pricing, multi-language (en-GB, de, fr, es, it), GDPR mandatory
- **SEA** = Singapore/Thailand/Indonesia/Philippines/Malaysia, local currency or USD, TikTok dominant + LINE (TH) + LINE (JP-adj), PDPA per country
- **LATAM** = Brazil/Mexico/Argentina/Colombia, local currency or USD, WhatsApp Business dominant, Spanish/Portuguese, LGPD (Brazil)

Not sure yet? Pick the country with the highest revenue first; cross-region is a v2.6.0 thing — see `docs/global-region-guide.md` for the decision tree.

It is OK to re-run skill `product-marketing-context-global` later with a different variant; the file gets overwritten on confirm.

---

## Step 5: Answer 4 collection questions (2 minutes)

The skill asks 4 base questions:

```
1. Product / service name (and 1-line elevator pitch)?
2. Target customer in this region (age, role, geography, household income)?
3. 12-month goal for this region (revenue, customers, MRR — pick one)?
4. Top 3 competitors in this region (brand names + 1-line difference each)?
```

Keep answers short. Example for a US D2C beauty brand:

```
1. "Lumen Skincare — clean-ingredient retinol serum for sensitive skin, $48/30ml"
2. "Women 28-45, US suburban, household income $80-150K, currently using Drunk Elephant or The Ordinary"
3. "$1.2M ARR by Q4 2027 (currently $300K)"
4. "Drunk Elephant (luxury anchor), The Ordinary (price anchor), Paula's Choice (clinical anchor); we are clean+effective midmarket"
```

You can refine answers later by running the strategy skill (`23-personal-brand-strategy-global`) or marketing plan (`00-marketing-plan-global`).

---

## Output: `.agents/product-marketing-context-global.md`

Skill creates a 12-section file (~3KB) tagged with your region:

```
.agents/
  product-marketing-context-global.md   (~3KB, 12 sections, region-tagged)
    1. Identity (product, region, currency)
    2. Goal 12 months
    3. Target customer (region-specific persona)
    4. Pain points
    5. Competitors (3 tiers, region-specific)
    6. Differentiation
    7. Objections (region cultural variants)
    8. Switching dynamics
    9. Customer language (verbatim quotes from region)
    10. Brand voice (en-US / en-GB / es / pt / etc.)
    11. Proof points (region-relevant)
    12. Compliance flags (FTC / GDPR / PDPA / LGPD)
```

Every other global skill (00-29) reads this file before running, so you only set this up once per region.

---

## Next steps — pick one path

After the context file is created, you have three paths:

### A. Strategy first (recommended for first-time international launch)

```bash
/skill 00-marketing-plan-global
/skill 08-competitor-research-global
/skill 09-customer-insight-global
```

Pick this path if you are entering a new region and need a 90-day plan before producing assets.

### B. Content production (skip strategy if you already have it)

```bash
/skill 04-script-video-global
/skill 05-ad-copy-global
/skill 06-ugc-egc-brief-global
```

Pick this path if your strategy is already defined and you only need a faster content engine (e.g. campaign launch next week).

### C. Personal-brand workflow (founders / coaches / creators going global)

```bash
/skill 22-personal-brand-context-global
/workflow personal-brand-launch-global
```

Pick this path if you are a person building authority on LinkedIn (US/EU B2B) or YouTube/Twitter for international audience.

### Bonus: Dropshipping workflow

```bash
/workflow dropshipping-launch-global
```

Reads from skill `29-dropshipping-mastery-global` — covers product research, store setup, ad creative, scaling decisions over 30 days. See `docs/dropshipping-guide.md` for the deep-dive handbook.

---

## Common errors

### 1. Skill does not trigger after install

- Check: did the plugin install? `/plugin list` should show `fullstack-mkt-skills`.
- Restart Claude Code: quit and re-open.
- Try the explicit form: `/skill product-marketing-context-global`.

### 2. Skill asks too many questions

The Global foundation skill is designed for 4 questions minimum.

- If it asks 8+ questions, you are probably on an older snapshot. Run `/plugin update fullstack-mkt-skills`.
- If it still asks too many, type "skip optional" — the skill will draft from defaults.

### 3. `.agents/product-marketing-context-global.md` not created

- The skill confirms before writing. Reply "yes" when asked to save.
- Check the folder exists: `ls .agents/`. Create it manually with `mkdir -p .agents` if needed.
- Last resort: re-run the skill and say "yes" at the save prompt.

### 4. Confused between Vietnam vs Global context

- VN cluster file: `.agents/product-marketing-context.md` (no `-global` suffix)
- Global cluster file: `.agents/product-marketing-context-global.md` (with `-global` suffix)
- You CAN have both at the same time — agents auto-detect which one to read based on the active skill (VN skills read VN file; global skills read global file).

### 5. Picked the wrong region variant

- Re-run `/skill product-marketing-context-global` and choose a different variant.
- The file gets overwritten on confirm — back up the old version first if needed (`cp .agents/product-marketing-context-global.md .agents/product-marketing-context-global.bak.md`).

---

## Resources

- **Region decision guide:** `docs/global-region-guide.md` (which of the 4 regions to start with, comparison matrix)
- **Dropshipping handbook:** `docs/dropshipping-guide.md` (8 chapters, 30 FAQ)
- **APAC roadmap:** `docs/apac-roadmap.md` (Japan, Korea, Australia in v2.6.0+)
- **v2.5.0 release notes:** `docs/release-notes/v2.5.0.md`
- **Vietnam cluster (parallel):** `docs/getting-started.md`, `docs/personal-brand-guide.md`
- **Workflows folder:** `workflows-global/` — 8 workflows including dropshipping-launch, campaign-launch, monthly-cycle

---

## Learning roadmap

| When | Activity | Skill / File |
|------|----------|--------------|
| Today | Run `product-marketing-context-global` -> get region-tagged context file | `product-marketing-context-global` |
| Tomorrow | Run `00-marketing-plan-global` -> get 90-day plan | `00-marketing-plan-global` |
| This week | Read region decision guide and dropshipping handbook | `docs/global-region-guide.md`, `docs/dropshipping-guide.md` |
| Next 2 weeks | Pick a workflow (campaign-launch, dropshipping-launch, or content-production) | `workflows-global/` |
| Next month | Add personal-brand-global cluster (skills 22-28) if relevant | `22-personal-brand-context-global` |
| Next quarter | Run monthly-cycle workflow + KPI reverse calc + audit | `workflows-global/monthly-cycle-global.md` |

---

Questions or feedback? Open an issue: [github.com/minhnv0807/fullstack-mkt-skills/issues](https://github.com/minhnv0807/fullstack-mkt-skills/issues)
