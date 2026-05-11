# EMAIL MARKETING — SEA VARIANT

> **Region:** Southeast Asia (Singapore, Malaysia, Indonesia, Thailand, Philippines)
> **Note:** Vietnam is covered by `14-email-marketing` (VN skill) — Decree 13/2023/ND-CP
> **Common rule:** **Most SEA countries now require OPT-IN** (post-2020 wave of privacy laws)
> **Strictest:** Singapore PDPA (well-enforced, often cited as APAC's GDPR)
> **Currency for benchmarks:** USD or local (SGD, MYR, IDR, THB, PHP)

---

## SEA privacy laws — country-by-country

### Singapore — Personal Data Protection Act (PDPA) 2012, amended 2020

| Element | Detail |
|---------|--------|
| Authority | Personal Data Protection Commission (PDPC) |
| Consent | **Opt-in mandatory** for marketing email |
| Withdrawal | Must honor within reasonable time |
| Penalty | Up to SGD 1,000,000 or 10% annual turnover (whichever higher, post-2022 amendment) |
| DNC Registry | Singapore Do-Not-Call Registry (covers SMS + voice; not email) |
| DPO | Required if processing personal data |

**Singapore is the gold standard in SEA.** If you comply with PDPA Singapore, you're 80% compliant for the rest of the region.

### Malaysia — Personal Data Protection Act (PDPA) 2010, amended 2024

| Element | Detail |
|---------|--------|
| Authority | Department of Personal Data Protection (PDP) |
| Consent | **Opt-in required** with clear notice |
| Notice | Must inform of purpose, third parties, rights |
| Penalty | Up to MYR 1,000,000 (post-2024 amendment); imprisonment possible |
| DPO | Required for "data user" handling personal data at scale |

### Indonesia — UU PDP (Personal Data Protection Law) 2022, effective Oct 2024

| Element | Detail |
|---------|--------|
| Authority | Personal Data Protection Agency (under formation) |
| Consent | **Opt-in mandatory; granular consent required (similar to GDPR)** |
| Right to erasure | Yes |
| Penalty | Up to IDR 50,000,000,000 (~USD 3.2M) or 2% global revenue |
| Cross-border transfer | Restricted; requires equivalent protection in destination |

UU PDP is the most GDPR-like law in SEA — treat as strict.

### Thailand — Personal Data Protection Act (PDPA) 2019, effective June 2022

| Element | Detail |
|---------|--------|
| Authority | Personal Data Protection Committee (PDPC) |
| Consent | **Opt-in required, must be explicit and separable** |
| Penalty | Up to THB 5,000,000 + criminal penalties for violations |
| DPO | Required for large data processors |
| Cross-border | Restricted unless adequate protection |

### Philippines — Data Privacy Act of 2012 (RA 10173)

| Element | Detail |
|---------|--------|
| Authority | National Privacy Commission (NPC) |
| Consent | **Opt-in required for direct marketing** |
| Registration | Personal Information Controllers (PICs) must register with NPC if processing 1,000+ records |
| Penalty | Up to PHP 5,000,000 + imprisonment |
| Breach notification | Within 72 hours to NPC |

---

## Common SEA rule: OPT-IN

The post-2020 trend across SEA is OPT-IN (similar to GDPR direction). Treating SEA-wide as opt-in is the safe default.

### Soft opt-in (existing customer exception)

Singapore PDPA, Malaysia PDPA, and Philippines DPA allow some flexibility for emailing existing customers about similar products, but the rules are narrower than EU ePrivacy. **Practical default: always require opt-in**, even for existing customers, when starting a new email program.

---

## ESP picker for SEA

| ESP | Why it fits SEA |
|-----|----------------|
| **Mailchimp** | Widely used; works for SG/MY/PH; English-first |
| **ActiveCampaign** | Good for B2B; automation strong |
| **Klaviyo** | Best for DTC / Shopee / Lazada / Tokopedia integrations |
| **Brevo** | EU servers; multilingual; good for SEA with EU customers |
| **Insider** | Turkish, with strong APAC presence; built for SG/MY/ID |
| **CleverTap** | India HQ but heavy SEA usage (mobile-first) |
| **MoEngage** | India HQ, dominant in mobile-first SEA markets (ID, TH, PH) |

**For Indonesia/Thailand specifically:** Look at MoEngage or CleverTap for mobile-app-driven email + push combo (the dominant pattern in mobile-first SEA markets).

---

## Language considerations

Most SEA countries are multilingual. Email strategy should account for:

| Country | Primary language | Secondary | Notes |
|---------|------------------|-----------|-------|
| Singapore | English | Mandarin, Malay, Tamil | English universal for B2B; localize B2C |
| Malaysia | Malay (Bahasa Malaysia) | English, Mandarin | English fine for urban professional; localize for mass market |
| Indonesia | Bahasa Indonesia | Local dialects | Localize EVERYTHING; English-only excludes 90%+ of market |
| Thailand | Thai | English (urban) | Thai-only for B2C; English OK for B2B Bangkok |
| Philippines | English | Filipino (Tagalog) | English very strong; Tagalog adds warmth |

---

## SEA footer template (PDPA-compliant)

```
You're receiving this email because you opted in at [yoursite.com] on
[date].

[Brand Name]
[Legal entity, registration number]
[Street Address, City, Country]

[Unsubscribe] | [Update preferences] | [Privacy Policy]

Your data is processed under [Country] PDPA / DPA. To exercise your
rights (access, correction, withdrawal, deletion), contact our DPO at
[dpo@brand.com].

(c) [Year] [Brand Name]
```

---

## Welcome series — SEA 3-email template

| # | Send | Subject (English example) | Goal |
|---|------|---------------------------|------|
| 1 | Immediately | "Welcome — here's your free guide" | Deliver lead magnet |
| 2 | +2 days | "[First name], 3 things to know" | Brand story + social proof |
| 3 | +4 days | "How customers in [SG/MY/ID/TH/PH] achieve [outcome]" | Case study + CTA |

---

## Send time (SEA)

- **Singapore (GMT+8):** Tue-Thu 9-11 AM, 8-10 PM
- **Malaysia (GMT+8):** Tue-Thu 9-11 AM, 8-10 PM (same as SG)
- **Indonesia (GMT+7 / +8 / +9 — 3 zones):** Use Jakarta time (GMT+7) as default; 9-11 AM, 7-9 PM
- **Thailand (GMT+7):** Tue-Thu 9-11 AM, 7-9 PM (Friday traffic high)
- **Philippines (GMT+8):** Tue-Thu 9-11 AM, 6-8 PM

**Avoid:** Major Islamic holidays (Eid al-Fitr, Eid al-Adha) for MY/ID; Buddhist holidays for TH; Christmas week (very strong in PH).

---

## Mobile-first reality

SEA is the most mobile-dominant region globally. 80-95% of email opens are on mobile.

- Subject line: 30 chars or less (mobile preview)
- Single-column layout, large tap targets
- Image height: <600 px (mobile fold)
- File size: <100 KB total
- Test on Android (Indonesia/Philippines majority) and iOS (Singapore majority)

---

## SEA benchmarks (2025-2026, mixed currency)

| KPI | Poor | Average | Good | Excellent |
|-----|------|---------|------|-----------|
| Open rate | <17% | 17-25% | 25-32% | >32% |
| Click rate | <1.5% | 1.5-3% | 3-4.5% | >4.5% |
| Unsubscribe rate | >0.4% | 0.2-0.4% | 0.1-0.2% | <0.1% |
| Email ROI | <USD 18 per USD 1 | USD 18-28 | USD 28-38 | >USD 38 |

Lower ROI than US/EU largely because email is less mature in SEA — many users prefer messaging apps (LINE, Zalo, WhatsApp). Pair email with messaging for best results.

---

## SEA compliance checklist

### Pre-launch

- [ ] Privacy notice in primary local language
- [ ] Opt-in checkbox (un-ticked) on signup form
- [ ] Double opt-in for highest-risk markets (ID, TH)
- [ ] DPO appointed (mandatory in SG, ID, TH, PH for many cases)
- [ ] DPA / equivalent agreement with ESP
- [ ] Privacy policy with rights statement
- [ ] Sender domain authenticated (SPF + DKIM + DMARC)

### Per email

- [ ] Footer with sender identity + address
- [ ] One-click unsubscribe
- [ ] Subject line accurate

### Monthly

- [ ] Process unsubscribes promptly (24h target)
- [ ] Honor erasure requests (30 days)
- [ ] Re-validate consent every 12-24 months for dormant lists

---

## SEA-specific risk flags

- **Cross-border data transfer:** ID and TH restrict transfers; document destination protections
- **Indonesian language requirement:** UU ITE may require Indonesian for consumer-facing communications
- **Thailand language:** Some authorities expect Thai-language privacy notices
- **Philippines NPC registration:** Required if processing 1,000+ records as a Personal Information Controller
- **Singapore DNC registry:** Applies to SMS/voice but signals user intent — be careful adding non-explicit subscribers

---

## Multi-country SEA strategy

If you serve multiple SEA countries:

1. **Default to strictest applicable law** (usually Singapore PDPA or Indonesian UU PDP)
2. **Localize footer** with country-appropriate legal text
3. **Segment list by country** so you can adjust for local holidays + send time
4. **Translate** all signup forms into primary local language
5. **Single DPO** can usually cover multi-country if all align under similar regimes

---

*SEA Variant | Global Skill 14 | Over Powers Agency | v1.0.0*
