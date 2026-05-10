# ADS AUDIT — LATAM VARIANT

> **Region:** Brazil, Mexico, Argentina, Colombia, Chile, Peru (also: Uruguay, Costa Rica, Dominican Republic, Ecuador)
> **Currency:** USD-equivalent (local: BRL, MXN, ARS, COP, CLP, PEN — high volatility, especially ARS)
> **Primary platforms:** Meta (FB+IG, WhatsApp), TikTok (rapid growth), Google (Search+YouTube), Mercado Libre Ads (Brazil/Mexico/Argentina), Kwai (Brazil)
> **Key regulations:** Brazil LGPD, Mexico LFPDPPP, Argentina PDPL (2025 update), Colombia Ley 1581, Chile Ley 19.628 (updated 2024)
> **Major attribution platforms:** GA4 (heavy adoption), Mercado Libre native dashboards, WhatsApp Business API integrations, growing Triple Whale presence in BR

---

## HEALTHY BENCHMARK RANGES (LATAM, 2025-2026)

### Meta Ads (Brazil, Mexico, Colombia)

| Metric | Poor | Average | Good | Excellent |
|--------|------|---------|------|-----------|
| **CPM (Conversion, USD)** | >$3 | $1.50-3 | $0.80-1.50 | <$0.80 |
| **CPM (BRL)** | >R$15 | R$8-15 | R$4-8 | <R$4 |
| **CPM (MXN)** | >$60 | $30-60 | $15-30 | <$15 |
| **CTR (link click)** | <1% | 1-2% | 2-3% | >3% |
| **CPC (USD)** | >$0.35 | $0.15-0.35 | $0.07-0.15 | <$0.07 |
| **CPL (B2C)** | >$3 | $1.20-3 | $0.50-1.20 | <$0.50 |
| **CPA (DTC e-com, AOV $25-50)** | >$18 | $9-18 | $4.50-9 | <$4.50 |
| **ROAS (DTC, prospecting)** | <1.4x | 1.4-2.2x | 2.2-3.0x | >3.0x |
| **ROAS (DTC, blended)** | <1.8x | 1.8-2.5x | 2.5-3.5x | >3.5x |
| **Frequency (cold)** | >5 | 3.5-5 | 2-3.5 | <2 |

### Meta Ads (Argentina — currency volatility caveat)

Argentina ARS reports are unreliable for trending due to inflation (50-150% YoY swings). Always normalize to USD at daily Banco Central rate.

| Metric (USD) | Average | Good |
|--------------|---------|------|
| **CPM** | $0.50-1.20 | $0.30-0.50 |
| **CPC** | $0.08-0.20 | $0.04-0.08 |

### TikTok Ads

| Metric | Poor | Average | Good | Excellent |
|--------|------|---------|------|-----------|
| **CPM (USD)** | >$1.50 | $1-1.50 | $0.50-1 | $0.40-1 |
| **CTR** | <1% | 1-1.8% | 1.8-2.8% | >2.8% |
| **CPC** | >$0.25 | $0.12-0.25 | $0.06-0.12 | <$0.06 |
| **CPA (DTC, AOV $20-40)** | >$12 | $6-12 | $3-6 | <$3 |
| **ROAS (Spark Ads)** | <1.3x | 1.3-2x | 2-3x | >3x |

### Kwai Ads (Brazil-specific, growing)

| Metric (BRL) | Average | Good |
|--------------|---------|------|
| **CPM** | R$5-10 | R$3-5 |
| **CPC** | R$0.40-0.80 | R$0.20-0.40 |
| **CPA (DTC)** | R$25-50 | R$12-25 |

### Google Ads

| Metric | Poor | Average | Good | Excellent |
|--------|------|---------|------|-----------|
| **CPC (Search non-brand, USD)** | >$1.20 | $0.50-1.20 | $0.20-0.50 | <$0.20 |
| **CTR (Search non-brand)** | <3% | 3-6% | 6-9% | >9% |
| **Quality Score** | <5 | 5-6 | 6-8 | 8-10 |
| **CPA (DTC e-com)** | >$25 | $12-25 | $6-12 | <$6 |
| **ROAS (PMax DTC)** | <1.8x | 1.8-2.5x | 2.5-3.5x | >3.5x |

### ROAS targets by business model (LATAM)

| Model | Break-even ROAS | Healthy ROAS | Scale ROAS |
|-------|-----------------|--------------|------------|
| **DTC e-com (40-50% margin)** | 2.0-2.5x | 2.5-3.2x | 3.2x+ |
| **Local service (estética, dental, F&B)** | 3-4x first-touch | 5-7x | 7x+ |
| **Real estate (lead → consult)** | Cost-per-consult <$10 | <$6 | <$3 |
| **Course / info-product** | 1.6-2x | 2.2-3x | 3x+ |
| **Dropshipping (cross-border to LATAM)** | 2-2.5x | 2.5-3.2x | 3.2x+ |
| **Mercado Libre / Mercado Ads** | 2.5-3x | 3.5-5x | 5x+ |

---

## COMMON RED FLAGS (LATAM)

### Currency volatility (the #1 LATAM challenge)

1. **Argentina ARS cliffs** — inflation 50-150% YoY makes historical ROAS comparison meaningless without USD normalization.
2. **Brazil BRL fluctuations** — 10-25% swings in 6 months are normal. Audit must show USD-stable view.
3. **Multi-currency ad accounts** — running BRL account for Mexican customers (or vice versa) creates 5-10% conversion fee leak.
4. **Meta auto-conversion to local at ad-account currency** — locks in conversion rate at billing time, not transaction time. Fee leak.

### Tracking gaps

1. **WhatsApp tracking gaps** — WhatsApp is THE conversion channel in LATAM (60-80% of e-com communicates via WhatsApp). Few accounts properly track Click-to-WhatsApp → Sale.
   - Audit: Is "Click to WhatsApp" tracked as a custom event with downstream Sale attribution?
   - Audit: Does WhatsApp Business API integrate with Pixel/CAPI?
2. **Mercado Libre attribution opaque** — when running Mercado Libre Ads, only platform-reported ROAS available; no GA4-equivalent visibility.
3. **No CAPI** — most LATAM accounts lag 12-18 months behind US; CAPI adoption ~30-40%.
4. **PIX (Brazil instant payment) attribution** — orders via PIX often complete on bank app, breaking standard checkout pixel chain.
5. **iOS attribution gap** — iOS share lower (~25-35%) than US/EU but still material.

### Compliance / Vertical-specific

1. **LGPD (Brazil) — fines up to 2% revenue** — explicit consent for tracking. Many LATAM advertisers underweight this.
2. **Health/beauty claims** — ANVISA (Brazil), COFEPRIS (Mexico) regulate cosmetics + supplements claims. Many ads non-compliant.
3. **Financial services / lending** — Banco Central de Brasil, CNBV (Mexico) require pre-approval for credit/loan/forex ads.
4. **Sweepstakes / lotteries** — restricted; require government license in BR, MX, AR.
5. **Crypto** — variable: BR semi-regulated, MX restricted, AR loosening, CO mostly banned for ads.

### Account stability

1. **Payment method instability** — local debit cards in BR, AR, CO frequently decline. Backup payment method critical.
2. **Account verification delays** — BM verification can take 2-4 weeks in LATAM for new accounts.
3. **Ad account ban** — risk lower than SEA but elevated for nutraceuticals, gambling, crypto verticals.

### Creative

1. **Spanish vs Portuguese mismatch** — Brazilian ads in Spanish (or vice versa) destroy CTR. Mandatory native language per market.
2. **Mexican Spanish vs Argentinian Spanish vs Colombian Spanish** — vocabulary differences matter (e.g., "carro" vs "auto" vs "coche"). Localize creative.
3. **English-only creative** — outside premium B2B SaaS, English-only kills performance in LATAM.
4. **Cultural mismatch** — direct-translation US copy underperforms local-creator UGC by 50-200%.

---

## REGION-SPECIFIC AUDIT RULES

### Tracking peculiarities (LATAM)

- **CAPI strongly recommended** for any DTC store; iOS share rising.
- **WhatsApp Business API** integration with Pixel/CAPI mandatory for stores with WhatsApp checkout flow.
- **GA4 + Looker Studio + GTM** is the most common stack.
- **Mercado Libre / Mercado Ads** — separate audit track; platform-only attribution.
- **PIX webhook integration** (Brazil) — must hook PIX confirmation into Purchase event.

### Privacy / Consent

- **Brazil LGPD** — comprehensive, modeled on GDPR. Effective Aug 2020, sanctions effective Aug 2021. ANPD enforcement active.
- **Mexico LFPDPPP** — operational since 2010; updated guidance via INAI.
- **Argentina PDPL** — 2025 update aligns more closely with GDPR.
- **Colombia Ley 1581** — Habeas Data; consent + database registration with SIC.
- **Chile Ley 19.628** — updated 2024 with stricter requirements.
- **Consent banner adoption** lower than EU but growing fast post-LGPD enforcement.

### Bid strategy maturity

| Stage | Recommended |
|-------|-------------|
| New account | Lowest Cost / Maximize Conversions |
| Stable (50+ conv/week) | Cost Cap (Meta), Target CPA (Google), Target Cost (TikTok) |
| Mature (100+ conv/week) | Bid Cap, Target ROAS |

> **Special note on Argentina:** Even mature accounts may stay on Lowest Cost / Maximize Conversions due to currency-induced cost variability; rigid bid caps can be undershot or overshot weekly.

---

## LATAM-SPECIFIC QUICK WINS

1. **Implement WhatsApp conversion tracking** — track Click-to-WhatsApp + downstream Sale; recover 20-40% "lost" conversions.
2. **Set up CAPI / Events API** — recover 10-20% of iOS-blocked conversions.
3. **Add PIX webhook → Pixel Purchase event** (Brazil) — closes the order-to-event loop for 30-50% of BR DTC sales.
4. **Localize creative per country** — Spanish (MX) ≠ Spanish (AR) ≠ Spanish (CO). Multiplier on CTR.
5. **Add Mercado Libre Ads** for relevant products — often higher intent than Meta cold prospecting.
6. **Switch ad account currency to local** — eliminates 2-5% FX conversion fee leak.
7. **Audit LGPD compliance** — implement CMP, opt-in cookie consent.

---

## DROPSHIPPING IN LATAM

### LATAM-specific dropshipping rules

| Check | Pass criteria | Severity |
|-------|---------------|----------|
| Local fulfillment / customs setup | Avoid 30-60 day customs hold | Critical |
| Local payment methods (PIX, OXXO, Mercado Pago, Boleto, PSE, transferencia) | At least 3 methods per market | Critical |
| Local language customer service via WhatsApp | <30 min response during peak | Critical |
| Compliance with local consumer law (BR Código de Defesa do Consumidor, MX LFPC) | 7-day return for online sales | Critical |
| Tax registration where required (BR ICMS, MX RFC) | Legal entity setup | High |
| Currency stability strategy (Argentina especially) | Daily USD normalization in profit model | High |
| Refund process documented in local language | Visible on LP + WhatsApp template | Critical |

### LATAM dropshipping benchmarks

- **Winning product CPA**: $4-9 USD-equivalent for AOV $25-50.
- **Mature winner ROAS**: 2.5-3.2x (after FX, fees, refunds).
- **WhatsApp-driven sales contribution**: 30-60% (LATAM dropshipping typically heavy on WhatsApp).
- **Creative testing budget**: 25-35% of total ad spend.
- **Hero product lifecycle**: 30-60 days at scale.
- **PIX share of payments (Brazil)**: 50-75% of online orders.

---

## OUTPUT NOTES (LATAM)

- Use USD as the stable normalization currency; show local-currency benchmarks alongside (BRL, MXN, ARS in USD).
- For Argentina specifically, NEVER trend metrics in ARS — always normalize daily to USD.
- WhatsApp is a Critical channel and must appear in every LATAM audit, even if user didn't mention it.
- Reference major LATAM events: Black Friday (BR especially huge), Buen Fin (MX, Nov), Hot Sale (BR, MX, AR mid-year), Carnival (BR, Feb-March), 12-month installment culture (everything sold "12x sin interés").
- Compliance theme: LGPD (BR) is the dominant regulatory force. Audit must mention even when not currently triggered.
- ROAS gaps Meta-vs-Shopify reconciliation: typically 15-30% in LATAM, with WhatsApp orders + PIX often missing entirely from Pixel-only tracking.
- Mercado Libre / Kwai (BR) / Mercado Ads run as separate audit tracks with their own benchmarks; do not mix into Meta/Google/TikTok aggregate.
