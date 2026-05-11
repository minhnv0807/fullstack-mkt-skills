# PRICING STRATEGY — LATAM VARIANT

> **Region:** Latin America (Brazil, Mexico, Argentina, Colombia, Chile, Peru)
> **Currency variation:** BRL, MXN, ARS, COP, CLP, PEN
> **Decimal convention:** **Comma decimal** (`R$ 99,90`, `MX$ 199,99`)
> **Charm pricing:** `R$ 99` (round common), `MX$ 199`, `12x R$ 33` (parcelado)
> **Cultural reality:** **Parcelado (Brazil) / Cuotas (Spanish-speaking) — installments are MANDATORY display**

---

## LATAM currency formatting rules

| Country | Currency | Symbol | Example | Notes |
|---------|----------|--------|---------|-------|
| Brazil | Real | R$ | `R$ 99,90` `R$ 1.299,00` | Comma decimal, period thousands |
| Mexico | Peso | $ or MXN or MX$ | `$199.99` `MX$ 199` | **PERIOD decimal** (like US) |
| Argentina | Peso | $ or ARS | `$1.299,00` | Comma decimal; HIGH inflation - prices change |
| Colombia | Peso | $ or COP | `$99.000` (no decimal) | Period thousands; usually no decimal due to inflation |
| Chile | Peso | $ or CLP | `$9.990` (no decimal) | Period thousands, no decimal |
| Peru | Sol | S/ or PEN | `S/ 39,90` | Comma decimal |

### Major LATAM formatting traps

1. **Mexico uses PERIOD as decimal** (like US) but Brazil uses COMMA — don't mix
2. **Colombian and Chilean Pesos rarely have decimals** (small unit value)
3. **Argentine peso volatility:** Prices change frequently; many e-com sites show "ARS at exchange rate XX" with USD anchor

---

## Parcelado (Brazil) — the biggest LATAM pricing rule

**Brazilian e-commerce displays 95%+ of prices in installment format.** Not optional.

### How parcelado works

```
Sticker price:       R$ 1.200,00
Display:             "12x R$ 100,00 sem juros" (12x R$ 100 no interest)
Or:                  "Em ate 12x sem juros" (up to 12x with no interest)
Or:                  "OU R$ 1.080,00 a vista" (or R$ 1,080 cash)
```

### Why parcelado matters

- 70-80% of Brazilian e-commerce uses parcelado
- "Without parcelado" = much lower conversion rate
- Even small purchases (R$ 100+) are often split into 3-6x
- Interest-free installments are absorbed by merchant or via credit card promotions

### Practical implementation

- **Always show "Xx YYYY,YY" first**, list price second
- Standard: 6x, 10x, 12x interest-free
- Premium products: up to 18x or 24x
- Stripe Brazil, MercadoPago support parcelado natively
- Cost to merchant: ~3-5% per transaction (vs. 2-3% for single payment)

---

## Cuotas (Spanish-speaking LATAM) — equivalent to parcelado

In Mexico, Argentina, Colombia, Chile, Peru: similar installment culture, called **cuotas** or **mensualidades**.

| Country | Term | Standard installment |
|---------|------|---------------------|
| Mexico | Mensualidades sin intereses (MSI) | 3, 6, 9, 12, 18 MSI |
| Argentina | Cuotas sin interes | 3, 6, 12, 18 cuotas |
| Colombia | Cuotas | 3, 6, 12 cuotas |
| Chile | Cuotas | 3, 6, 12 cuotas |
| Peru | Cuotas | 3, 6, 12 cuotas |

### Mexico-specific (MSI)

- **MSI (Meses Sin Intereses)** culture is very strong; Mexicans expect 6-18 month installments
- Major credit cards (Banamex, BBVA, Santander) sponsor MSI promotions
- Black Friday and Buen Fin (Mexican equivalent) push 18 MSI promotions

### Practical display

```
Mexico:
  $1,200 MXN
  6 MSI de $200 sin intereses

Argentina:
  $12.000 ARS
  6 cuotas sin interes de $2.000

Colombia:
  $1.200.000 COP
  o 6 cuotas sin interes de $200.000
```

---

## LATAM pricing psychology

### Inflation reality (especially Argentina, Venezuela)

- Argentina: 100-300% annual inflation; prices rise weekly
- Venezuela: hyperinflation, mostly USD pricing for stability
- Brazil/Mexico: stable; standard pricing
- Many LATAM e-com sites peg to **USD or EUR** internally and convert

### Cash culture (still strong in LATAM)

| Country | Cash payment % (e-com) |
|---------|----------------------|
| Brazil | 5-10% (low - PIX dominates) |
| Mexico | 25-35% (OXXO, banco) |
| Argentina | 30-40% (RapiPago, Pago Facil) |
| Colombia | 30-40% (Efecty, Baloto) |
| Chile | 15-25% (Servipag, sucursales) |
| Peru | 35-45% (PagoEfectivo) |

**Practical:** Offer "cash voucher" payment (OXXO, RapiPago, etc.) — buyer goes to convenience store with code, pays cash, you get credit. Lifts conversion 20-40% in cash-heavy markets.

### Discount-conscious

LATAM consumers compare prices heavily and respond strongly to:
- "Black Friday" (BR, MX, CO)
- "Buen Fin" (Mexico, mid-November)
- "CyberMonday" (Latin-wide, October)
- "Hot Sale" (Argentina, May)
- Seasonal "Liquidacao" (BR), "Liquidacion" (ES)

---

## LATAM tier conventions

### B2C DTC (skincare, fashion, electronics)

Brazil example:

| Tier | Price | Strategy |
|------|-------|---------|
| Lead-in | `R$ 99` (parcelado: 3x R$ 33) | Trial / mini |
| Core | `R$ 199` (parcelado: 6x R$ 33,17) | Target |
| Bundle | `R$ 499` (parcelado: 10x R$ 49,90) | AOV lift |

Mexico example:

| Tier | Price | Strategy |
|------|-------|---------|
| Lead-in | `MX$ 399` (3 MSI de $133) | Trial |
| Core | `MX$ 999` (6 MSI de $166.50) | Target |
| Bundle | `MX$ 2,499` (12 MSI de $208) | AOV lift |

### B2B SaaS (Brazil leading market)

| Tier | Price | Strategy |
|------|-------|---------|
| Starter | `R$ 99-199/mes` | Self-serve |
| Pro | `R$ 399-799/mes` | Target SMB |
| Business | `R$ 999-1.999/mes` | Mid-market |
| Enterprise | Contato | Sales-led |

Often priced in USD for cross-border SaaS (Klaviyo, Mailchimp etc. all USD pricing in LATAM).

---

## LATAM payment methods

| Country | Top methods |
|---------|------------|
| Brazil | **PIX (instant bank transfer, dominant ~50%)**, credit card with parcelado, boleto bancario |
| Mexico | Credit card with MSI, OXXO (cash voucher), SPEI (bank transfer) |
| Argentina | MercadoPago (PSP), credit card with cuotas, RapiPago, PagoFacil |
| Colombia | PSE (bank transfer), credit card with cuotas, Efecty/Baloto cash |
| Chile | WebPay (Transbank), credit card with cuotas, Servipag |
| Peru | PagoEfectivo (cash voucher), credit card with cuotas, Yape (mobile) |

### PIX (Brazil) — game changer

PIX (launched 2020) has captured 50%+ of Brazil e-commerce payments. Free for consumers, very low cost for merchants. **Skip PIX = lose 30-50% of Brazilian customers.**

### Cross-border PSPs

- **MercadoPago:** Dominant Argentina, strong Brazil/Mexico. Built-in installments.
- **dLocal:** Cross-border specialist for LATAM
- **EBANX:** Brazilian PSP with full LATAM coverage
- **Stripe:** US/EU first, expanding LATAM

---

## Dropshipping pricing — LATAM

LATAM has favorable margin dynamics for dropshippers:
- CPM lower than US (Meta CPM USD 4-12)
- Strong middle class with disposable income
- BUT: customs and duties are HIGH, especially Brazil

| Product cost (USD) | LATAM sale (USD equiv) | Markup | Notes |
|-------------------|------------------------|--------|-------|
| < USD 5 | USD 19.99-39.99 | 5-8x | Watch customs (Brazil 60% on imports) |
| USD 5-15 | USD 39.99-69.99 | 4-6x | Sweet spot |
| USD 15-30 | USD 69.99-119 | 3-5x | Premium positioning |
| USD 30+ | USD 119+ | 2.5-3x | Mostly cross-border to LATAM |

### Brazil customs reality

- Imports under USD 50: 0% duty (post-Lula 2024 reforms removing prior exemption)
- Imports over USD 50: 60% duty + ICMS state tax (17-25%)
- Solution: ship from Brazilian warehouse (Shopee local, Mercado Libre fulfillment, etc.)

---

## LATAM-specific pricing tactics

### Dia das Maes (Brazil), Dia de las Madres (Mexico)

Mother's Day is HUGE in LATAM. Plan campaigns 4-6 weeks ahead.

### Black Friday in LATAM

- **Brazil:** Last Friday November (US date); 30-50% off expected
- **Mexico:** Buen Fin (mid-November weekend); 20-40% off + 18 MSI
- **Argentina:** Black Friday + CyberMonday (Oct/Nov)
- **Colombia/Chile:** Cyberlunes / CyberDay

### Christmas (Aguinaldo / 13eme)

- Brazil/Argentina/Mexico: 13th-month bonus pays out December
- Major spending event (different from US/EU early-Dec rush)

---

## LATAM benchmarks — pricing (2025-2026)

| Metric | Range |
|--------|-------|
| DTC AOV (BR, USD equiv) | USD 25-65 |
| DTC AOV (MX, USD equiv) | USD 30-75 |
| SaaS ACV SMB (BR, USD equiv) | USD 1.5K-8K/year |
| Parcelado adoption (BR) | 70-85% of orders |
| MSI adoption (MX) | 50-70% of orders |
| PIX adoption (BR) | 50%+ of e-commerce payments |
| Cash voucher (MX/CO/AR) | 25-40% of orders |
| Buen Fin (MX) uplift | 200-300% normal |
| Black Friday (BR) uplift | 250-400% normal |

---

## LATAM pricing checklist

- [ ] Currency in local with correct decimal convention (BR comma, MX period)
- [ ] **Parcelado / cuotas / MSI displayed prominently** for B2C (mandatory in Brazil and Mexico)
- [ ] Local payment methods (PIX for Brazil, MSI for Mexico, MercadoPago for Argentina)
- [ ] Cash voucher option (OXXO, RapiPago, etc.) for low-bank markets
- [ ] Holiday/sale event plan (Buen Fin, Black Friday, Mother's Day, etc.)
- [ ] Customs / import duty considered (especially Brazil 60% rule)
- [ ] Inflation hedging for Argentina (USD anchor or weekly price update)
- [ ] If cross-border: PSP with LATAM coverage (dLocal, EBANX, MercadoPago)
- [ ] If dropshipping: 3-8x markup; high customs in Brazil
- [ ] Mobile-first design (LATAM 75-85% mobile commerce)

---

*LATAM Variant | Global Skill 17 | Over Powers Agency | v1.0.0*
