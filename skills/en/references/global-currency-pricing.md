# Global Currency & Pricing Psychology

> Last updated: 2026-Q1. Exchange rate snapshot date: 2026-01-15. Review cadence: monthly for high-inflation regions (Argentina), quarterly otherwise. Source rates from ECB, XE.com, OANDA.

---

## 1. Currency Formats by Region

Format consistency matters: a price displayed in the wrong format reads as foreign and reduces conversion. Display the local format whenever the user's region is detected, regardless of base currency.

### North America
| Currency | Symbol | Format | Decimal | Thousands | Example |
|----------|--------|--------|---------|-----------|---------|
| US Dollar | $ | Symbol before, no space | Period | Comma | $1,299.99 |
| Canadian Dollar | $ or CA$ | Symbol before | Period | Comma | $1,299.99 / CA$1,299.99 |
| Mexican Peso | $ or MX$ | Symbol before | Period | Comma | $1,299.99 / MX$1,299.99 |

Note: In Quebec, French formatting applies — `1 299,99 $ CA` (space thousands, comma decimal, symbol after).

### Europe
| Currency | Symbol | Format | Decimal | Thousands | Example |
|----------|--------|--------|---------|-----------|---------|
| Euro (DE/AT) | € | Symbol after, with space | Comma | Period | 1.299,99 € |
| Euro (FR/IT/ES) | € | Symbol after, with space | Comma | Space | 1 299,99 € |
| Euro (NL/IE) | € | Symbol before | Comma | Period | €1.299,99 |
| British Pound | £ | Symbol before | Period | Comma | £1,299.99 |
| Swiss Franc | CHF or Fr. | Symbol before | Period | Apostrophe | CHF 1'299.99 |
| Polish Zloty | zł | Symbol after | Comma | Space | 1 299,99 zł |
| Swedish Krona | kr | Symbol after | Comma | Space | 1 299,99 kr |

### Southeast Asia
| Currency | Code | Symbol | Format | Example |
|----------|------|--------|--------|---------|
| Singapore Dollar | SGD | S$ | Symbol before, period decimal | S$1,299.99 |
| Malaysian Ringgit | MYR | RM | Symbol before, period decimal | RM1,299.99 |
| Thai Baht | THB | ฿ | Symbol before, period decimal | ฿1,299.99 |
| Indonesian Rupiah | IDR | Rp | Symbol before, period thousands, no decimals | Rp1.299.000 |
| Philippine Peso | PHP | ₱ | Symbol before, period decimal | ₱1,299.99 |
| Vietnamese Dong | VND | ₫ | Symbol after, period thousands, no decimals | 1.299.000 ₫ |

Notes: IDR and VND prices are typically shown without decimals due to large nominal values. In Indonesia, "K" or "rb" (ribu) suffix common in informal contexts.

### Latin America
| Currency | Code | Symbol | Format | Example |
|----------|------|--------|--------|---------|
| Brazilian Real | BRL | R$ | Symbol before with space, comma decimal, period thousands | R$ 1.299,99 |
| Mexican Peso | MXN | $ | Symbol before, period decimal, comma thousands | $1,299.99 |
| Argentine Peso | ARS | $ | Symbol before, comma decimal, period thousands | $1.299,99 |
| Colombian Peso | COP | $ | Symbol before, comma decimal, period thousands, often no cents | $1.299.000 |
| Chilean Peso | CLP | $ | Symbol before, no decimals, period thousands | $1.299.000 |
| Peruvian Sol | PEN | S/ | Symbol before with no space | S/1,299.99 |

---

## 2. Charm Pricing Patterns by Region

Charm pricing (.99, .95, .97) is universal but with regional variants. The key is to test — psychological tail digits move conversion 3-12% in many DTC contexts.

| Region | Most common ending | Alternative | Use case |
|--------|-------------------|-------------|----------|
| US/Canada | .99 | .97 (DTC), .95 (premium) | $19.99, $497, $1,995 |
| EU/UK | .99 or ,99 | .95, ,49 | €19,99 / £19.99 |
| Germany | ,99 or ,95 | .00 (round, B2B) | 19,95 € |
| Japan | Round (no decimals) | 8 endings (lucky) | ¥1,980 |
| China | 8 endings (lucky) | Avoid 4 (death) | ¥299, ¥888 |
| SEA | 9 or 99 endings | Round in IDR/VND | RM19.90, ₱1,999, Rp199.000 |
| Brazil | ,99 or ,90 | round for premium | R$ 99,90 |
| Mexico | .99 | round | $999.99 |
| Argentina | round (inflation) | mid-month repricing | $50.000 |

### Premium positioning rule
.00 endings or round prices signal premium ($2,500 reads more luxurious than $2,499). Use for high-end skincare, luxury fashion, B2B. Charm prices (.99, .97) signal value — DTC, fashion, food.

### "Left-digit effect"
$2.99 reads closer to $2 than to $3 because the brain anchors on the leftmost digit. Same applies in EU as 2,99 €. The drop-off is most powerful when the leftmost digit changes ($30 → $29.99 is stronger than $39 → $38.99).

---

## 3. Anchoring + Decoy Pricing (Universal Psychology)

These principles work across regions; only the price points change.

### Anchoring
Show the highest-priced item first. The brain anchors on it; subsequent prices feel cheaper.
- Premium plan first → Standard plan looks reasonable
- "Originally $499 → $299 today" → 40% discount feels generous
- Show competitor pricing alongside your own → frame as savings

### Decoy effect (asymmetric dominance)
Add a third option that makes the target option look like the obvious choice.

**Example: Subscription tiers**
- Bad (2 options): Basic $10, Pro $30 — many pick Basic
- Better (3 options): Basic $10, Pro $30, Premium $35 — most pick Pro because it's "almost Premium for less"

The Premium option is the decoy; few buy it, but it shifts choice toward Pro.

### Bundle vs. unbundle
- Bundles work for subscriptions, software, physical kits
- Unbundle for upsells — separate "premium support," "warranty," "fast shipping"

---

## 4. Subscription Pricing Conventions

### Monthly vs. annual display
| Region | Convention |
|--------|-----------|
| US/Canada | "$X/month, billed annually" — common; effective rate emphasized |
| EU/UK | Monthly equivalent or full annual price; VAT often shown separately for B2B, included for B2C |
| SEA | Monthly equivalent for SaaS; full annual for streaming/utilities |
| LATAM | Monthly first, annual discount called out (Brazil especially) |

### Discount framing
| Frame | Best in | Avoid in |
|-------|---------|----------|
| "Save 20%" | US/SEA | EU/UK (regulators scrutinize fake discounts under Omnibus Directive) |
| "2 months free" | EU/UK | — |
| "X% off retail" | US | EU (EU Omnibus rules require 30-day reference price) |

### EU Omnibus Directive (Directive 2019/2161, in force 2022)
"Reduced price" advertising must show the lowest price applied during the prior 30 days. Violations = up to **4% of annual turnover**. Fake "was $X / now $Y" anchoring is illegal in EU.

---

## 5. VAT / GST / Sales Tax Overview

### United States — Sales Tax
- No federal sales tax. State + local rates vary 0% to ~10.25%.
- States with no sales tax: Alaska, Delaware, Montana, New Hampshire, Oregon
- Sales tax is **added at checkout** (price displayed pre-tax) — different from VAT/GST regions
- Economic nexus rules (post-Wayfair 2018): sellers must collect tax in any state where they exceed thresholds (commonly $100K revenue or 200 transactions)
- Marketplace facilitator laws: Amazon, Shopify, Etsy, etc. collect on behalf of sellers in most states

### European Union — VAT
- VAT rates by country (standard 2026):
  - Hungary: 27% (highest)
  - Croatia, Denmark, Sweden: 25%
  - Finland: 25.5%
  - Greece, Portugal, Italy: 22-24%
  - France, Netherlands: 20-21%
  - Germany, Spain: 19-21%
  - Cyprus, Romania, Malta, Luxembourg: 17-21%
  - Reduced rates apply to food, books, medical, etc.
- B2C: VAT must be **included in displayed price** (Consumer Rights Directive)
- B2B: prices commonly shown ex-VAT with note ("plus VAT")
- OSS (One Stop Shop) for cross-border B2C in EU since July 2021
- Reverse charge for B2B cross-border within EU

### UK — VAT
- Standard rate: 20%
- Reduced: 5% (energy, child seats), 0% (most food, books, children's clothes)
- VAT-registered required at £90,000 turnover (2024 threshold)
- Post-Brexit: imports from EU now subject to UK VAT at border

### Southeast Asia — GST/VAT
| Country | Tax | Rate (2026) | Notes |
|---------|-----|-------------|-------|
| Singapore | GST | 9% | Increased from 8% in 2024 |
| Malaysia | SST | 6-10% (services 8%, sales 5-10%) | Replaced GST in 2018 |
| Thailand | VAT | 7% | Statutory 10%, reduced to 7% by royal decree |
| Indonesia | VAT (PPN) | 12% (effective Jan 2025, raised from 11%) | Digital goods/services subject |
| Philippines | VAT | 12% | Threshold PHP 3M |
| Vietnam | VAT | 10% (general) | Reduced 8% rates for some sectors |

### Latin America
| Country | Tax | Rate (2026) | Notes |
|---------|-----|-------------|-------|
| Brazil | ICMS (state) + IPI + PIS/COFINS + ISS | Effective combined ~17-32% depending on state and sector | Major reform underway — IBS/CBS replacing ICMS/PIS/COFINS in 2026-2033 transition |
| Mexico | IVA | 16% (general); 8% border zones | Charge IVA on B2C; reverse charge for some B2B |
| Argentina | IVA | 21% (standard); 10.5% reduced | Plus provincial IIBB tax 1.5-5% |
| Colombia | IVA | 19% | Some reduced rates 5%, exempt 0% |
| Chile | IVA | 19% | Uniform rate, no exemptions for most goods |
| Peru | IGV | 18% | Includes 2% municipal tax |

### Display rules summary
| Region | Display | Why |
|--------|---------|-----|
| US/Canada | Price excluding tax, tax added at checkout | Cultural + regulatory norm |
| EU/UK B2C | Price **including** VAT | Consumer Rights Directive |
| EU/UK B2B | Price excluding VAT, with note | Standard B2B convention |
| SEA | Price including GST/VAT for B2C | Local convention |
| LATAM | Price including all taxes for B2C | Consumer protection laws |

---

## 6. Currency Conversion Formula — When to Update Prices

### Static vs. dynamic pricing
- **Static (set once, update quarterly):** Best for SaaS, subscriptions, services. Predictable for users, easier accounting.
- **Dynamic (live conversion):** Common in marketplaces (Shopify, Airbnb), but transaction risk if FX swings 5%+ between cart and payment.

### When to reprice (static model)
1. Currency moves >5% vs. base over 30 days
2. Local inflation accumulates >5%
3. Quarterly review baseline (every 90 days)
4. Major currency events (devaluation, central bank intervention)

### Conversion + buffer formula
```
Local price = (Base USD price × Spot FX rate) × (1 + buffer%)
where buffer = 3-8% for stable pairs, 10-25% for volatile pairs (ARS, TRY, NGN)
```

Then round to local charm pattern:
- USD $19.99 → EUR (FX 0.92) × 1.05 buffer = €19.32 → display **€19,99**
- USD $19.99 → BRL (FX 5.10) × 1.05 buffer = R$ 107.05 → display **R$ 99,90** or **R$ 109,90**

### PPP (Purchasing Power Parity) consideration
Strict FX conversion ignores local purchasing power. Many SaaS companies set lower prices in lower-PPP markets:
- Spotify Family: $16.99 US, ₹179 India (~$2.15)
- Netflix: $15.49 US Standard, R$ 39.90 Brazil (~$8)

Trade-off: lower friction in market vs. arbitrage risk and accounting complexity.

---

## 7. Inflation Considerations (High-Inflation Regions)

### Argentina — Hyperinflation playbook
- Annual inflation 2024-2025: 100-200%+
- Strategies:
  - **USD-denominated pricing** displayed in ARS at daily blue-dollar rate (informal exchange rate, often 30-50% off official rate)
  - **MercadoPago "blue dollar" calculator** integrated at checkout
  - **Weekly or biweekly price updates** — monthly is too slow
  - **Installments (cuotas sin interés)** — 3-12 cuotas standard for >USD 50 purchases; absorb interest into base price
  - **Discount tiers tied to USD rate movements** — automated repricing

### Other high-inflation watchlist (2026)
- Turkey (TRY): 40-60% annual
- Egypt (EGP): 25-35%
- Nigeria (NGN): 25-30%
- Pakistan (PKR): 20-25%
- Iran (IRR): 35-45%

For these markets, follow Argentina playbook: more frequent reprice, USD/EUR-anchored pricing, installments, larger FX buffers.

### Stable inflation regions (2-5% annual)
US, EU, UK, Canada, Australia, Singapore, Japan, most SEA, Mexico, Brazil (post-2024 stabilization).

Standard quarterly reviews suffice.

---

## Update Log
- 2026-01: Initial release for Global Cluster v2.5.0. FX snapshot 2026-01-15. Indonesia VAT updated to 12%. Singapore GST at 9%. EU Omnibus Directive enforcement noted.
