# PRICING STRATEGY — SEA VARIANT

> **Region:** Southeast Asia (Singapore, Malaysia, Indonesia, Thailand, Philippines)
> **Note:** Vietnam covered by `17-pricing-strategy` (VN skill)
> **Currency variation:** SGD, MYR, IDR, THB, PHP — major variation in absolute price levels
> **Decimal convention:** Mostly period (like US), but local: SGD `S$9.90`, MYR `RM39.90`, IDR `Rp 99.000` (period thousands)
> **Cultural reality:** **Discount-heavy psychology**, dual currency display common (USD + local)

---

## SEA currency formatting rules

| Country | Currency | Symbol | Example | Notes |
|---------|----------|--------|---------|-------|
| Singapore | Singapore Dollar | S$ or SGD | `S$9.90` `S$29.90` | Period decimal; charm `.90` |
| Malaysia | Malaysian Ringgit | RM | `RM39` `RM39.90` | Period decimal; charm `.90` common |
| Indonesia | Indonesian Rupiah | Rp | `Rp 99.000` `Rp 1.200.000` | **Period as thousands** (no decimals); LARGE numbers |
| Thailand | Thai Baht | THB | `฿299` or `THB 299` | Period decimal; symbol `฿` |
| Philippines | Philippine Peso | PHP | `P 499` or `PHP 499` | Period decimal |

### Major formatting trap

**Indonesia uses PERIOD as thousands separator** (like Germany), and prices have NO decimals (Rupiah denominations are always thousands). `Rp 99.000` means "99,000 Rupiah" — NOT 99 with decimals.

| Wrong | Right |
|-------|-------|
| `Rp 99,000` (US-style) | `Rp 99.000` (Indonesian-style) |
| `IDR 1,200,000` | `Rp 1.200.000` |

---

## Dual currency display (very common SEA pattern)

For cross-border DTC or SaaS:

```
PHP 1,499 (~USD 25.99)
S$39.90 (~USD 29.99)
RM 129 (~USD 27.50)
Rp 449.000 (~USD 28.50)
THB 990 (~USD 27.50)
```

**Why:** Many SEA consumers price-compare in USD especially for cross-border products. Showing both reduces sticker shock and builds trust.

---

## SEA pricing psychology

### Discount-heavy culture

SEA shoppers expect discounts. Plan for:
- **Permanent "starter discount"**: 20-30% off list (this becomes the real price)
- **Mega Sale Days**: 9.9, 10.10, 11.11, 12.12 — discount expectation 40-60%
- **Lazada/Shopee sale days** drive massive volume; off-platform brands compete with same days
- **Cashback culture**: ShopeePay, GrabPay, Touch 'n Go offer 5-15% cashback that consumers actively claim

### Price tier perception

SEA consumers segment heavily by price brackets:

| Bracket (USD equiv) | Perception | Strategy |
|--------------------|-----------|---------|
| < USD 5 | "Cheap, may be low quality" | Add social proof aggressively |
| USD 5-15 | "Affordable, mass market" | Sweet spot for DTC |
| USD 15-30 | "Mid-tier, considered purchase" | Justify with quality story |
| USD 30-100 | "Premium, careful purchase" | Strong reviews, warranty needed |
| > USD 100 | "Luxury, status purchase" | Brand prestige + service |

### Mobile-first pricing UX

SEA is the most mobile-dominant region. Pricing pages must:
- Display prices large and bold
- Use stacked tier cards (not horizontal columns) on mobile
- Show installment / "buy now pay later" upfront
- Heavy use of badges ("Best Value", "Save XX%", "Limited")

---

## SEA tier conventions

### B2C DTC (cosmetics, electronics, fashion)

Singapore example (highest income SEA market):

| Tier | Price | Strategy |
|------|-------|---------|
| Lead-in | `S$19.90` | Trial / mini |
| Core | `S$39.90` | Target |
| Bundle | `S$99` (3-pack) | AOV lift, "save S$20" |

Indonesia example (largest SEA market by population):

| Tier | Price | Strategy |
|------|-------|---------|
| Lead-in | `Rp 99.000` | Trial |
| Core | `Rp 199.000` | Target |
| Bundle | `Rp 499.000` (3-pack) | AOV lift |

### B2B SaaS (Singapore primary)

| Tier | Price | Strategy |
|------|-------|---------|
| Starter | `S$29-49/mo` | Self-serve |
| Pro | `S$99-199/mo` | Target SMB |
| Business | `S$299-599/mo` | Mid-market |
| Enterprise | Contact sales | Regional accounts |

For other SEA SaaS markets, often priced in USD to avoid currency complexity.

---

## SEA payment methods (very local)

| Country | Top payment methods |
|---------|---------------------|
| Singapore | PayNow, credit card, GrabPay, ApplePay |
| Malaysia | FPX, Touch 'n Go, GrabPay, credit card, Boost |
| Indonesia | GoPay, OVO, DANA, ShopeePay, BCA (bank transfer), credit card |
| Thailand | TrueMoney, PromptPay (bank transfer), Rabbit LINE Pay, credit card |
| Philippines | GCash (60%+), Maya, credit card, Bayad Center |

**E-wallet penetration:** Indonesia 80%+, Philippines 70%+, Thailand 60%+, Malaysia 50%+, Singapore 40%+.

**Practical:** Stripe + local PSPs (Xendit, 2C2P) for SEA. Excluding GoPay (ID) or GCash (PH) excludes 50%+ of buyers.

---

## Installment / BNPL — SEA huge

BNPL adoption in SEA is high:

| Country | Top BNPL |
|---------|---------|
| Singapore | Atome, Pace, Hoolah |
| Malaysia | Atome, SPayLater (Shopee), Riipay |
| Indonesia | Akulaku, Kredivo, SPayLater |
| Thailand | Atome, Lazada PayLater |
| Philippines | Atome, BillEase, Plentina |

**For products > USD 30:** ALWAYS show "12x payment" or "3-month installment" option. Lifts conversion 25-40%.

---

## Dropshipping pricing — SEA

SEA dropship has unique dynamics:
- Lower CPM than US/EU (Meta CPM USD 5-15)
- Lower buying power -> lower absolute prices
- Higher shipping cost relative to product
- Marketplace competition (Shopee, Lazada) sets pricing floor

| Product cost (USD) | SEA sale price (USD equiv) | Markup | Notes |
|-------------------|---------------------------|--------|-------|
| < USD 3 | USD 9.99-19.99 | 4-7x | Bulk shipping helps |
| USD 3-7 | USD 19.99-39.99 | 4-6x | Sweet spot |
| USD 7-15 | USD 39.99-69.99 | 3-5x | Need quality story |
| USD 15-30 | USD 69.99-119 | 2.5-4x | Premium positioning |

Common pricing in local currency:

| USD | SGD | MYR | IDR | THB | PHP |
|-----|-----|-----|-----|-----|-----|
| 19.99 | S$26.90 | RM89 | Rp 299.000 | ฿650 | P 1,099 |
| 29.99 | S$39.90 | RM129 | Rp 449.000 | ฿990 | P 1,649 |
| 49.99 | S$69 | RM219 | Rp 749.000 | ฿1,650 | P 2,749 |

---

## SEA-specific pricing tactics

### Mega Sale Days

| Date | Origin | Importance |
|------|--------|-----------|
| 9.9 (Sep 9) | Shopee | Major SEA-wide |
| 10.10 (Oct 10) | Lazada | Major SEA-wide |
| 11.11 (Nov 11) | Singles' Day (China) | BIGGEST in SEA |
| 12.12 (Dec 12) | Year-end | Major SEA-wide |
| Lazada Birthday | March | Lazada-driven |
| Shopee Birthday | December | Shopee-driven |

**Plan major discount events for these dates** even if you're not on marketplaces.

### Free shipping thresholds

| Country | Recommended threshold | Why |
|---------|----------------------|-----|
| Singapore | S$60 | Compact market, fast delivery |
| Malaysia | RM150 | Wide geography |
| Indonesia | Rp 200.000 | Massive geography, multi-island |
| Thailand | THB 1,500 | Bangkok-centric |
| Philippines | P 1,500 | Multi-island shipping |

### Cash on Delivery (COD)

In Indonesia, Thailand, Philippines, COD is still dominant for first-time buyers (40-70% of orders). Build COD into pricing — typically adds 5-10% to operational cost (collection fees, returns).

---

## SEA benchmarks — pricing (2025-2026)

| Metric | Range |
|--------|-------|
| DTC AOV (USD equiv) | USD 25-65 |
| SaaS ACV SMB (Singapore) | USD 3K-15K/year |
| BNPL adoption rate | 25-45% of orders > USD 30 |
| Mega Sale Day uplift | 200-500% normal day |
| Discount price as default | 20-30% off list (consumer expectation) |
| Trial-to-paid (SaaS) | 8-18% (lower than US/EU) |

---

## SEA pricing checklist

- [ ] Currency in local (SGD/MYR/IDR/THB/PHP); dual display with USD where helpful
- [ ] Indonesian uses PERIOD thousands (`Rp 99.000`)
- [ ] BNPL/installment prominently shown for products > USD 30
- [ ] Local payment methods integrated (GCash, GoPay, OVO, etc.)
- [ ] Mega Sale Day plan (9.9, 10.10, 11.11, 12.12)
- [ ] COD option for Indonesia/Thailand/Philippines
- [ ] Free shipping threshold per country
- [ ] Mobile-first pricing page (stacked, large fonts)
- [ ] Discount expectation built into list price strategy
- [ ] If dropshipping: 3-7x markup; account for cross-border shipping cost

---

*SEA Variant | Global Skill 17 | Over Powers Agency | v1.0.0*
