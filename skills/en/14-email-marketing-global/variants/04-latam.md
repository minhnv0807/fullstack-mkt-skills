# EMAIL MARKETING — LATAM VARIANT

> **Region:** Latin America (Brazil, Mexico, Argentina, Colombia, Chile, Peru, and others)
> **Largest market:** Brazil (population ~215M, dominant LATAM internet economy)
> **Strictest law:** **LGPD (Lei Geral de Proteção de Dados Pessoais) Brazil** — modeled on GDPR
> **Consent model:** **OPT-IN MANDATORY** for Brazil and most other countries
> **Currency:** USD (cross-border) or local (BRL, MXN, ARS, COP, CLP, PEN)

---

## LATAM privacy laws — country-by-country

### Brazil — LGPD (Lei Geral de Proteção de Dados Pessoais), Law 13.709/2018

| Element | Detail |
|---------|--------|
| Authority | ANPD (Autoridade Nacional de Proteção de Dados) |
| Effective | August 2020; sanctions from August 2021 |
| Consent | **Opt-in mandatory; explicit, specific, informed** (Article 7, I + Article 8) |
| Lawful basis | 10 legal bases (similar to GDPR's 6) |
| DPO | Required (called "Encarregado") for most processors |
| Rights | Access, correction, anonymization, blocking, deletion, portability, withdrawal of consent |
| Penalty | Up to **BRL 50,000,000 per violation** OR 2% of company revenue in Brazil (capped at BRL 50M) |
| Cross-border transfer | Must have adequate protection (similar GDPR concept) |

LGPD is the most rigorous law in LATAM. Treat it like GDPR — full opt-in, double opt-in recommended, DPA with ESP mandatory.

### Mexico — LFPDPPP (Ley Federal de Protección de Datos Personales en Posesión de los Particulares), 2010

| Element | Detail |
|---------|--------|
| Authority | INAI (Instituto Nacional de Transparencia, Acceso a la Información y Protección de Datos Personales) |
| Consent | **Opt-in required** for sensitive data; tacit consent OK for non-sensitive (changing post-2025) |
| Privacy notice | Must be available before data collection (very strict requirement) |
| ARCO rights | Acceso, Rectificación, Cancelación, Oposición |
| Penalty | Up to MXN 27,000,000 (~USD 1.4M) for severe violations |
| DPO | Required (called "Encargado") |

Mexico is mid-strictness — privacy notice is the make-or-break requirement.

### Argentina — Ley 25.326 (Personal Data Protection Law), 2000 + updates

| Element | Detail |
|---------|--------|
| Authority | AAIP (Agencia de Acceso a la Información Pública) |
| Consent | **Opt-in required** |
| Adequacy | EU recognizes Argentina as adequate jurisdiction (since 2003) |
| Penalty | Up to ARS 100,000 per violation (lower in absolute terms) |

A new draft law (closer to GDPR) has been under review for years; current law still applies.

### Colombia — Estatuto del Consumidor (Law 1581/2012) + Habeas Data

| Element | Detail |
|---------|--------|
| Authority | SIC (Superintendencia de Industria y Comercio) |
| Consent | **Opt-in required** |
| Database registration | Companies must register databases with SIC's RNBD (National Registry of Databases) |
| Penalty | Up to 2,000 minimum monthly wages (~COP 2.6 billion / USD 600K) |

### Chile — Ley 19.628 (Personal Data Protection), 1999 + 2024 reform

| Element | Detail |
|---------|--------|
| Authority | New "Agencia de Protección de Datos Personales" (post-2024 reform) |
| Consent | **Opt-in required** post-2024 reform; previously more relaxed |
| Penalty | Up to USD 80,000 (more aggressive in 2025+) |

The 2024 Chilean reform aligns Chile much closer to GDPR.

### Other LATAM countries

- **Peru:** Law 29733 (2011) — opt-in required; APDP authority
- **Uruguay:** Law 18.331 (2008) — adequate per EU; opt-in required
- **Costa Rica:** Law 8968 — opt-in required
- **Ecuador, Panama, Paraguay:** All have opt-in requirements (similar GDPR direction)

---

## Common LATAM rule: OPT-IN

The post-2018 trend across LATAM (catalyzed by LGPD Brazil) is **opt-in mandatory**. Treat the entire region as opt-in.

---

## ESP picker for LATAM

| ESP | Why it fits LATAM |
|-----|-------------------|
| **RD Station Marketing** | **Brazil-native** (Resultados Digitais); LGPD-by-design; PT-BR UI |
| **Mailchimp** | Widely used; PT-BR + ES localization |
| **Brevo** | EU-compliant carries over to LGPD; PT and ES support |
| **Klaviyo** | Strong for DTC + Mercado Libre integrations |
| **ActiveCampaign** | Good for B2B + automation; ES localization |
| **eGoi** | Portuguese ESP (Lisbon HQ); strong in BR/PT markets |
| **GetResponse** | Polish; ES + PT localization |
| **HubSpot** | All-in-one; multilingual + LGPD support |

**For Brazil specifically:** RD Station is dominant. For DTC e-commerce: Klaviyo + Mercado Libre integration.

---

## Language considerations

| Country | Language | Notes |
|---------|----------|-------|
| Brazil | Portuguese (Brazilian) | Brazil is 80%+ of LATAM internet economy; localize FIRST |
| Mexico | Spanish (Mexican) | Different from Argentine/Spain Spanish; localize tone |
| Argentina | Spanish (Rioplatense) | "Vos" instead of "tu"; very different feel |
| Colombia | Spanish (neutral) | Close to international Spanish |
| Chile | Spanish (Chilean) | Distinctive slang; localize for B2C |
| Peru | Spanish (neutral) | Similar to Colombian |

Generic "Spanish" content works for B2B. B2C needs country-specific localization.

---

## LATAM footer template (LGPD-compliant for Brazil)

### Portuguese (PT-BR)

```
Voce esta recebendo este email porque se cadastrou em [yoursite.com.br]
em [data] (IP: [IP registrado]).

[Nome da Marca]
[Razao social, CNPJ]
[Endereco completo, Cidade, Estado, CEP, Brasil]

[Cancelar inscricao] | [Atualizar preferencias] | [Politica de Privacidade]

Voce tem direito de acesso, correcao, exclusao, anonimizacao,
portabilidade, e revogacao do consentimento conforme a LGPD.
Encarregado de Dados: [dpo@marca.com.br]

(c) [Ano] [Nome da Marca]. Todos os direitos reservados.
```

### Spanish (ES-MX, ES-AR, etc.)

```
Recibes este email porque te suscribiste en [yoursite.com] en [fecha].

[Nombre de la Marca]
[Razon social, RFC/CUIT]
[Direccion, Ciudad, Estado, CP, Pais]

[Darse de baja] | [Actualizar preferencias] | [Politica de Privacidad]

Tienes derecho de acceso, rectificacion, cancelacion y oposicion
(derechos ARCO) conforme a LFPDPPP / LGPD / Ley 25.326.
Contacto del Encargado: [dpo@marca.com]

(c) [Ano] [Nombre de la Marca]. Todos los derechos reservados.
```

---

## Welcome series — LATAM 3-email template

### Brazil (PT-BR)

| # | Send | Subject example | Goal |
|---|------|-----------------|------|
| 1 | Immediately | "Bem-vindo(a) a [Marca] - seu presente esta aqui" | Deliver lead magnet |
| 2 | +2 days | "[Nome], 3 coisas para saber sobre nos" | Brand story |
| 3 | +4 days | "Como [N clientes brasileiros] alcancaram [resultado]" | Case study + CTA |

### Mexico (ES-MX)

| # | Send | Subject example | Goal |
|---|------|-----------------|------|
| 1 | Immediately | "Bienvenido a [Marca] - tu regalo esta aqui" | Deliver lead magnet |
| 2 | +2 days | "[Nombre], 3 cosas que debes saber" | Brand story |
| 3 | +4 days | "Como [N clientes en Mexico] lograron [resultado]" | Case study + CTA |

---

## Send time (LATAM)

- **Brazil (BRT, GMT-3):** Tuesday-Thursday 9-11 AM, 8-10 PM (very long workday culture)
- **Mexico (CST, GMT-6):** Tuesday-Thursday 9-11 AM, 7-9 PM
- **Argentina (ART, GMT-3):** Tuesday-Thursday 10 AM-12 PM, 9-11 PM (later evening)
- **Colombia (COT, GMT-5):** Tuesday-Thursday 9-11 AM, 7-9 PM
- **Chile (CLT, GMT-3 / -4):** Tuesday-Thursday 9-11 AM, 8-10 PM

**Avoid:** Carnaval week (Brazil), Day of the Dead (Mexico Nov 1-2), local independence days, holy week (Semana Santa across LATAM).

---

## Mobile + WhatsApp reality

LATAM is the most WhatsApp-heavy region globally. Email is secondary to WhatsApp Business for many segments.

- Email is strong for: B2B, formal communications, receipts, post-purchase
- WhatsApp dominates: support, lead nurture (in Brazil especially), promotional messages
- **Pair email with WhatsApp Business** for best results in LATAM

---

## LATAM benchmarks (2025-2026, mixed currency)

| KPI | Poor | Average | Good | Excellent |
|-----|------|---------|------|-----------|
| Open rate | <16% | 16-24% | 24-32% | >32% |
| Click rate | <1.4% | 1.4-2.8% | 2.8-4.2% | >4.2% |
| Unsubscribe rate | >0.4% | 0.2-0.4% | 0.1-0.2% | <0.1% |
| Email ROI | <USD 17 per USD 1 | USD 17-25 | USD 25-35 | >USD 35 |

LATAM open rates a bit lower than US/EU (mobile-heavy + WhatsApp-preferred), but engagement rates can be very high among confirmed subscribers.

---

## LATAM compliance checklist

### Pre-launch (Brazil-strict default)

- [ ] Privacy policy in PT-BR (Brazil) and/or ES localized
- [ ] LGPD-compliant consent flow (opt-in, not pre-ticked)
- [ ] Double opt-in active for Brazil
- [ ] Encarregado / DPO appointed and email published
- [ ] DPA with ESP signed
- [ ] If non-LATAM ESP: cross-border transfer mechanism documented
- [ ] CNPJ (Brazil) or RFC (Mexico) shown in footer
- [ ] SPF + DKIM + DMARC set up

### Per email

- [ ] Footer with company legal name, registration number, address
- [ ] One-click unsubscribe
- [ ] Privacy policy link
- [ ] Encarregado contact for Brazil

### Monthly

- [ ] Process erasure requests within 15 days (LGPD has shorter window than GDPR's 30)
- [ ] Audit consent logs
- [ ] Update privacy notice if data flows changed
- [ ] Review unsubscribe rate

---

## LATAM-specific risk flags

- **Brazil LGPD strict enforcement:** ANPD has issued increasing fines since 2022
- **Argentina adequacy status:** Already EU-recognized; sets a high bar
- **Chile 2024 reform:** New rules effective; old practices may now be non-compliant
- **Mexico privacy notice:** Must be ACCESSIBLE before collecting any data; missing = violation
- **Colombia database registration (RNBD):** Often forgotten by foreign companies
- **WhatsApp + email crossover:** Each requires separate consent; bundled consent is invalid

---

## Multi-country LATAM strategy

If you serve all of LATAM:

1. **Default to LGPD Brazil rules** (strictest)
2. **Localize 3 versions:** PT-BR (Brazil), ES-MX (Mexico/Central America), ES-AR (Southern Cone)
3. **Single DPO/Encarregado** can cover regional ops if multilingual
4. **Time-zone-segment** sends (LATAM spans GMT-3 to GMT-6)
5. **Brazil-first content:** 60%+ of LATAM revenue typically comes from Brazil

---

*LATAM Variant | Global Skill 14 | Over Powers Agency | v1.0.0*
