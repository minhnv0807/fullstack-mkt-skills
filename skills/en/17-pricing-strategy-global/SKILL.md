---
name: 17-pricing-strategy-global
description: "Pricing strategy for global markets — value-based, anchor pricing, charm pricing, decoy effect. Has 4 region variants for currency psychology (US/EU/SEA/LATAM). INCLUDES Dropshipping Markup Math section (3-5x markup, BE-ROAS, profit margin). Trigger: 'pricing strategy', 'price positioning', 'charm pricing', 'pricing psychology', 'dropshipping markup'."
metadata:
  version: 1.0.0
  category: strategy
license: MIT
triggers:
  - "pricing strategy"
  - "price positioning"
  - "charm pricing"
  - "pricing psychology"
  - "dropshipping markup"
related:
  - product-marketing-context-global
  - 16-marketing-psychology-global
  - 29-dropshipping-mastery-global
  - references/global-currency-pricing
---

# Pricing Strategy (Global)

> Price is the most leveraged decision in marketing. A 1% price increase typically yields a 10%+ profit improvement (Bain). Currency psychology, decimal conventions, and installment culture differ HUGELY by region.

---

## For newbies

### Who is this skill for?

| Audience | Concrete example |
|----------|------------------|
| Founder setting initial pricing | First product launch, no historical data |
| DTC brand optimizing pricing page | Already selling, want to lift conversion or margin |
| SaaS deciding tier structure | Free / Pro / Enterprise; monthly vs annual |
| Dropshipper calculating markup | Importing from supplier, selling DTC |
| Service business packaging offers | Coaching, consulting, agency retainers |

### Who is this NOT for?

- **Vietnam-only pricing** -> Use `17-pricing-strategy` (VN skill) — covers VND psychology
- **Already at scale with strong data team** -> You probably have proprietary models; this skill gives you starting frameworks

### 30-second pre-read

This skill produces ONE pricing strategy file with 7 components: pricing model selection, price ladder design (3-5 tiers), charm/anchor/decoy mechanics, break-even analysis, competitor benchmarking, A/B test plan, and pricing page layout. Pick 1 of 4 region variants — the variant tunes currency formatting, decimal convention, charm pricing styles, and installment culture.

### 3 common errors

1. **Using US charm pricing in EU** -> EU shoppers see `$9.99` as "American" not "low" — feels foreign
2. **Ignoring installment culture in LATAM** -> "BRL 1,200 to MXN 8,000" pricing flops without "12x R$100" or "8 cuotas sin intereses"
3. **Underpricing dropship products** -> 2x markup leaves no room for ad spend; need 3-5x minimum

---

## Why do you need this skill?

Without pricing strategy:
- Charm formatting wrong for region -> "feels off" -> conversion drop
- No anchor -> middle tier doesn't feel like value -> wrong tier wins
- No installment option in LATAM -> abandoned cart 60%+
- Dropship markup too thin -> can't afford ads -> stalls
- No charm psychology in B2C -> leaving money on the table

Pick the right region defaults, apply proven frameworks, layer on dropshipping math when relevant.

---

## Workflow

```
Step 0: Check global context file
    |-- exists -> read product / customer / region info
    |-- missing -> suggest user run product-marketing-context-global first
Step 1: Pick region variant (US / EU / SEA / LATAM)
Step 2: Choose pricing model (One-time / Subscription / Tiered / Bundle / Freemium / Pay-as-you-go)
Step 3: If dropshipping product -> apply markup math (this file, see below)
Step 4: Design price ladder (3-tier with charm + anchor + decoy)
Step 5: Calculate break-even
Step 6: Compare with 2-3 competitors
Step 7: Write pricing page copy + A/B test plan
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
Where do you primarily sell?
    |-- US / Canada            --> 01-us.md    (USD, charm $9.99, monthly subs)
    |-- EU / EEA / UK          --> 02-eu.md    (EUR, charm EUR 9,99, VAT-inclusive)
    |-- Southeast Asia         --> 03-sea.md   (SGD/MYR/IDR/THB/PHP, discount-heavy)
    |-- Latin America          --> 04-latam.md (BRL/MXN/ARS, parcelado / cuotas common)
    |-- Vietnam only           --> Use `17-pricing-strategy` (VN skill)
```

---

## Step 2: Pricing models

| Model | Best for | Examples |
|-------|---------|---------|
| **One-time** | Physical products, courses | T-shirt, ebook, lifetime license |
| **Subscription** | Recurring value, software | SaaS, streaming, gym, supplement |
| **Tiered** | Differentiated buyers | SaaS Free/Pro/Enterprise |
| **Bundle** | Bigger AOV, perceived savings | Spa package, software bundle |
| **Freemium** | Large funnel, low conversion | Slack, Zoom, Notion |
| **Pay-as-you-go** | Variable usage | Cloud, API, AWS |
| **Hybrid** | Combination of models | Subscription + add-on usage credits |

---

## Step 3: DROPSHIPPING MARKUP MATH (CRITICAL)

> **This section applies only if you're sourcing products from suppliers (AliExpress, Spocket, CJDropshipping, etc.) and reselling DTC.**

### The 3-5x markup rule

Dropshipping requires HIGH markup because:
- Ad spend is ~40-60% of revenue (paid acquisition is your only growth channel)
- Returns/refunds: 5-10% loss
- Payment processing: 2-3% per transaction
- Platform fees (Shopify): 1-2%
- Customs/duties (if cross-border): 5-15%

**If your markup is only 2x cost, you have ZERO budget for ads.** You need 3-5x minimum.

### The math

```
Cost from supplier:    USD 5.00
Shipping to customer:  USD 3.00
Total cost:            USD 8.00

Sale price:            USD 29.99 (3.75x markup)

Revenue:               USD 29.99
- Cost                 USD 8.00
- Payment processing  USD 0.90 (3%)
- Platform fee         USD 0.30 (1%)
= Gross profit         USD 20.79
= Gross margin         69.3%

Of that USD 20.79 gross profit:
- Ad spend cap         USD 14.55 (70% of profit)
- Operations           USD 2.08 (10%)
- Net profit           USD 4.16 (~14% net margin)
```

### Break-Even ROAS (BE-ROAS) formula

```
BE-ROAS = 1 / (1 - cost/sale_price)

Example:
- Cost USD 8, sale USD 29.99
- cost/sale = 0.267
- BE-ROAS = 1 / (1 - 0.267) = 1 / 0.733 = 1.36x

Translation: Your ads must return AT LEAST USD 1.36 for every USD 1 spent
just to break even. Profitable target: 2.5x or higher.
```

### Markup tiers by product price

| Product cost | Recommended markup | Sale price | BE-ROAS | Profit ROAS target |
|-------------|-------------------|-----------|---------|-------------------|
| < USD 5 | 5-10x | USD 25-49.99 | 1.25x | 2.5x |
| USD 5-15 | 4-5x | USD 49-79 | 1.40x | 2.7x |
| USD 15-30 | 3-4x | USD 79-129 | 1.55x | 3.0x |
| USD 30-60 | 2.5-3x | USD 129-199 | 1.75x | 3.2x |
| USD 60+ | 2-2.5x | USD 199+ | 2.0x | 3.5x |

### The dropshipping price ladder

```
Free shipping threshold:  USD 50  (push AOV up)
Lead-in product:          USD 19.99 (small impulse buy, charm)
Core product:             USD 39.99 (target sale, charm)
Premium variant:          USD 79.99 (anchor + upsell)
Bundle:                   USD 99.99 (3 products, "save 25%")
```

---

## Step 4: Design price ladder (universal — non-dropship)

### Standard 3-tier structure

```
Goi 1 - Basic / Starter:    [low charm price]   - 3-4 features  - "Try free"
Goi 2 - Pro / Standard:     [middle anchor]     - 7-8 features  - "Most popular" badge
Goi 3 - Premium / Enterprise: [high price]      - All features  - "Contact sales"
```

### Charm pricing (apply per region — see variants)

- US: `$9.99` `$29` `$99`
- EU: `EUR 9,99` `EUR 29` `EUR 99`
- SEA: `S$9.90` `RM39` `Rp 99,000`
- LATAM: `R$ 99` `MX$199` `12x R$ 33` (parcelado)

### Anchor effect

```
Goi Premium:  USD 199  (anchor — rarely sold)
Goi Pro:      USD 99   (target — 60-70% choose)
Goi Basic:    USD 29   (entry — price-sensitive)
```

### Decoy effect (3-option trap)

```
A. Digital only:        USD 50  (poor value)
B. Physical only:       USD 120 (decoy - close to C, less value)
C. Digital + Physical:  USD 130 (target - "+USD 10 gets BOTH")
```

Add decoy B -> ~3x lift in choosing C vs. without decoy.

---

## Step 5: Break-even analysis

```
Break-even units = Fixed costs / (Price per unit - Variable cost per unit)

Example:
- Fixed costs:        USD 30,000/month
- Sale price:         USD 99
- Variable cost:      USD 39 (cost + shipping + processing)
- Contribution:       USD 60
- Break-even:         500 units / month
```

---

## Step 6: Competitor benchmarking

Compare with 2-3 direct competitors:

```
| Competitor | Their price | Their feature | Your price | Your feature |
|------------|-------------|--------------|------------|--------------|
| Comp A     | USD 89      | [feature]    | USD 99     | + extra      |
| Comp B     | USD 129     | [feature]    | USD 99     | + extra      |
| Comp C     | USD 79      | [feature]    | USD 99     | premium tier |
```

### Pricing positioning vs. competitors

- **Premium** (+20% or more above): Justify with quality/result/brand
- **Parity** (within +/- 10%): Win with feature/service/UX differentiation
- **Value** (-15-25% below): Win with operational efficiency, not loss-leading

---

## Step 7: Pricing page + A/B test plan

### Pricing page must-haves

| Element | Why |
|---------|-----|
| 3 tiers (not 1, not 4+) | Easy comparison; 3 is the sweet spot |
| Highlight middle tier | Anchor + decoy effect |
| Monthly / Annual toggle | Annual locks in cash; -15-20% discount |
| Feature comparison table | Decision support |
| FAQ | Address pricing objections |
| Customer testimonial | Social proof |
| Trial / refund policy | Risk reduction |
| Visible price (B2C) | "Contact sales" kills B2C conversion |

### A/B test priority

1. Price level (e.g. USD 29 vs. USD 39 — biggest impact)
2. Charm format (USD 29 vs. USD 29.99)
3. Tier structure (2 vs. 3 tiers)
4. Annual discount % (15% vs. 20% vs. 25%)
5. CTA copy ("Start free" vs. "Try Pro free")

Run each test for 2 weeks minimum, 95% confidence.

---

## Output template

```markdown
# Pricing Strategy - [Brand]
Region variant: [US / EU / SEA / LATAM]
Currency: [USD / EUR / etc.]
Date: [YYYY-MM-DD]

## 1. Pricing model
[One-time / Subscription / Tiered / Bundle / Freemium / Pay-as-you-go]

## 2. Price ladder

| Tier | Price | Target buyer | Features | CTA |
|------|-------|--------------|----------|-----|
| Basic | X | Price-sensitive | [...] | "Try free" |
| Pro | Y | Target buyer | [...] | "Most popular" |
| Premium | Z | Anchor + premium | [...] | "Contact sales" |

## 3. Charm / anchor / decoy mechanics
- Charm: [region-appropriate format]
- Anchor: [premium tier explanation]
- Decoy: [if used]

## 4. Dropshipping markup (if applicable)
- Cost: USD X
- Sale: USD Y
- Markup: Nx
- BE-ROAS: 1.Xx
- Target ROAS: 2.Xx

## 5. Break-even
[Formula + monthly target]

## 6. Competitor positioning
[Premium / Parity / Value]

## 7. Pricing page layout
[3 tiers + comparison + FAQ + testimonial]

## 8. A/B test plan
[Test 1, Test 2, Test 3 with metrics]
```

---

## Quality checklist

- [ ] Region variant chosen + currency formatted correctly
- [ ] 3 tiers (not 1, not 4+)
- [ ] Middle tier highlighted (anchor + decoy)
- [ ] Charm pricing applied per region convention
- [ ] If dropshipping: markup >= 3x cost, BE-ROAS calculated
- [ ] Break-even units / month documented
- [ ] 2-3 competitors compared
- [ ] Pricing page mockup or wireframe
- [ ] A/B test plan with success metric
- [ ] Installment / financing option for LATAM/SEA where relevant

---

## Related skills

- `product-marketing-context-global` — foundation
- `16-marketing-psychology-global` — anchoring, scarcity, framing
- `29-dropshipping-mastery-global` — for dropshipping deep-dive (when available)
- `references/global-currency-pricing` — deep currency reference

---

*Global Skill 17 (Pricing Strategy) | Over Powers Agency | v1.0.0*
