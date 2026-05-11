---
name: 14-email-marketing-global
description: "Email marketing automation for global markets — welcome series, nurture sequences, re-engagement, transactional. Has 4 region variants for LEGAL compliance: US (CAN-SPAM opt-out), EU (GDPR opt-in mandatory), SEA (PDPA per country), LATAM (LGPD Brazil). Tools: Klaviyo, Mailchimp, ActiveCampaign. Trigger: 'email marketing', 'email automation', 'newsletter', 'drip campaign', 'GDPR email', 'CAN-SPAM'."
metadata:
  version: 1.0.0
  category: operations
license: MIT
triggers:
  - "email marketing"
  - "email automation"
  - "newsletter"
  - "drip campaign"
  - "GDPR email"
  - "CAN-SPAM"
related:
  - product-marketing-context-global
  - 11-channel-setup-global
  - 18-referral-program-global
  - references/global-legal-compliance
---

# Email Marketing (Global)

> Email is the only owned channel — algorithm-proof, free to re-reach. **But legal differs HUGELY by region: US allows opt-out, EU mandates opt-in, SEA/LATAM mostly require opt-in.** Pick the right variant — getting this wrong can cost up to EUR 20M (GDPR) or USD 51,744 per email (CAN-SPAM).

---

## For newbies

### Who is this skill for?

| Audience | Concrete example |
|----------|------------------|
| Founder / DTC brand running newsletter | Shopify store, SaaS company, B2B service |
| Agency setting up email automation for client | Welcome series, nurture, re-engage |
| Marketer migrating from one ESP to another | Klaviyo to Mailchimp, ActiveCampaign to Brevo |
| Multi-region brand needing legal-safe email | Selling US + EU + LATAM, must comply per region |

### Who is this NOT for?

- **Vietnam-only email marketing** -> Use `14-email-marketing` (VN skill) — covers PDPA Vietnam (Decree 13/2023)
- **Transactional-only (order confirms, password reset)** -> Use ESP defaults; transactional emails have softer consent rules in most regions
- **SMS / WhatsApp / push** -> Different channels with different laws (TCPA US, GDPR EU)

### 30-second pre-read

This skill produces ONE email marketing strategy file with 4 components: subscriber segmentation, sequence templates (welcome / nurture / re-engage / promo), automation flow, and KPI tracking. Pick 1 of 4 region variants — the variant tunes the LEGAL framework (consent model, unsubscribe rules, data retention, cross-border transfer). Every email automation built without this risks legal exposure.

### 3 common errors

1. **Reusing US opt-out logic in EU** -> GDPR violation; fines up to EUR 20M or 4% global revenue
2. **Skipping double opt-in for EU/Brazil/SEA** -> Cannot prove consent if challenged; subscribers can demand deletion
3. **Missing physical address in footer** -> CAN-SPAM violation US; EUR 51,744 per email

---

## Why do you need this skill?

Email is the highest-ROI channel (USD 36-42 per USD 1 spent globally), but legal compliance is non-negotiable. Without the right region variant:
- US brand using EU opt-in flow -> losing 30-50% of subscribers unnecessarily
- EU brand using US opt-out flow -> direct GDPR violation
- LATAM brand ignoring LGPD -> BRL 50M penalty risk in Brazil
- SEA brand mixing rules -> PDPA Singapore + per-country differences

Pick the right variant once -> all downstream emails compliant by default.

---

## Workflow

```
Step 0: Check global context file
    |-- exists -> read product / region / customer info
    |-- missing -> suggest user run product-marketing-context-global first
Step 1: Pick region variant (US / EU / SEA / LATAM)
Step 2: Choose ESP based on region (Klaviyo / Mailchimp / ActiveCampaign / Brevo)
Step 3: Set up legal foundation (consent flow, footer, unsubscribe, DPA)
Step 4: Design segmentation (behavioral + lifecycle)
Step 5: Build sequences (welcome / nurture / re-engage / promo)
Step 6: Configure automation flow
Step 7: Set up tracking + A/B test plan
```

---

## Step 0: Check global context file

Check whether `.agents/product-marketing-context-global.md` exists:
- **Yes** -> Read product, customer, region, language, regulation context. Do NOT re-ask.
- **No** -> Suggest running `product-marketing-context-global` first. If user wants to continue, ask 2-3 minimum questions about product + region.

---

## Step 1: Pick region variant

Ask the user one question: **"Which is your PRIMARY region: US, EU, SEA, or LATAM?"**

### Decision tree (LEGAL FRAMING)

```
Where do MOST of your subscribers live?
    |-- US / Canada
    |       --> 01-us.md    (CAN-SPAM Act 2003, opt-out OK, CCPA/state laws)
    |-- EU / EEA / UK
    |       --> 02-eu.md    (GDPR + ePrivacy, opt-in MANDATORY, EUR 20M penalty)
    |-- Southeast Asia (SG, MY, ID, TH, PH)
    |       --> 03-sea.md   (PDPA Singapore + per-country, mostly opt-in)
    |-- Latin America (BR, MX, AR, CO, CL)
    |       --> 04-latam.md (LGPD Brazil + LFPDPPP Mexico, opt-in mandatory)
    |-- Vietnam only
    |       --> Use `14-email-marketing` (VN skill) — Decree 13/2023
    |-- Multi-region
            --> Default to STRICTEST applicable region (usually EU GDPR)
```

### Why "default to strictest" matters

If you sell in US + EU + LATAM, you can either:
1. **Run separate sequences per region** (best — but operationally heavy)
2. **Apply EU GDPR rules globally** (safe — but loses 20-30% US subscribers due to double opt-in friction)

For most early-stage brands, option 2 is the safer default. Document the decision in your DPA.

---

## Step 2: Choose ESP (Email Service Provider)

| ESP | Strength | Region fit | Legal features |
|-----|----------|------------|---------------|
| **Klaviyo** | E-commerce / DTC | US (default), EU (with EU data center) | GDPR-ready, opt-in flows, suppression lists |
| **Mailchimp** | General-purpose, easy UI | US (HQ), EU (Intuit-owned, GDPR DPA available) | Built-in GDPR forms, double opt-in toggle |
| **ActiveCampaign** | CRM + automation | US default, global | Behavioral + GDPR consent tracking |
| **Brevo (Sendinblue)** | EU-native, transactional | EU (data residency in FR/DE), Global | GDPR by default, EU servers |
| **Customer.io** | API-first, developer-friendly | Global | GDPR + CCPA + LGPD ready |
| **HubSpot Marketing Hub** | All-in-one CRM | US default, EU (with EU hosting) | GDPR consent + cookie management |

### ESP picker per region

- **US (DTC/e-commerce):** Klaviyo (default) or Mailchimp
- **US (B2B SaaS):** ActiveCampaign or HubSpot
- **EU:** Brevo (EU servers), Klaviyo EU, Mailchimp + EU DPA
- **SEA:** Mailchimp, ActiveCampaign (no native local ESP dominant)
- **LATAM:** Brevo (BR datacenter via partner), ActiveCampaign, RD Station (BR-native)

---

## Step 3: Legal foundation (varies by variant)

This is the CRITICAL step. Read the variant file carefully — it spells out the consent model, footer requirements, unsubscribe rules, and data retention specific to your region.

### Universal requirements (all regions)

- Working unsubscribe link in every email
- Sender identification (brand name, physical address)
- Subject line accurately describes content (no deceptive headers)
- Honor unsubscribe within reasonable time (10 days US, 24h EU/SEA/LATAM)

### Region-specific requirements (see variants)

- **US:** Physical postal address, opt-out within 10 days
- **EU:** Explicit opt-in (timestamp + IP logged), DPO if processing large data, DPA with ESP, right to erasure
- **SEA:** Per-country (Singapore PDPA strictest), opt-in for marketing
- **LATAM:** Brazil LGPD requires opt-in + DPO; Mexico LFPDPPP requires privacy notice

---

## Step 4-7: Segmentation, sequences, automation, tracking

These are largely region-agnostic in CONTENT, but legal-bound in EXECUTION. The variant file documents:
- What data fields you can/cannot collect (e.g., EU requires "minimum necessary")
- Retention period (e.g., LGPD Brazil = 5 years max default)
- Cross-border transfer rules (e.g., EU -> US requires SCCs or DPF)

For sequence templates and KPI structure, the patterns are the same as the VN skill (welcome 3-email, nurture 5-email, re-engage 3-email) but with region-tuned subject lines, send times, and footer.

---

## How other skills use this file

When `00-marketing-plan-global` includes email as a channel, it references this skill for the operational layer. When `18-referral-program-global` builds a referral flow with email triggers, it inherits the consent model from this skill.

---

## Quality checklist

- [ ] Region variant chosen (US / EU / SEA / LATAM)
- [ ] ESP selected with region-appropriate data residency
- [ ] Consent model documented (opt-in vs opt-out)
- [ ] Footer compliant (physical address + unsubscribe)
- [ ] DPA signed with ESP if processing EU/UK/Brazil data
- [ ] Sequences tested in dev environment before launch
- [ ] Suppression list / hard-bounce auto-removal active
- [ ] A/B test plan documented (one variable at a time)

---

## Related skills

- `product-marketing-context-global` — foundation context (run first)
- `11-channel-setup-global` — channel infrastructure (when available)
- `18-referral-program-global` — referral via email
- `references/global-legal-compliance` — deep legal reference

---

*Global Skill 14 (Email Marketing) | Over Powers Agency | v1.0.0*
