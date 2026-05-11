# CHANNEL SETUP — SEA VARIANT

> **Region:** Southeast Asia EXCLUDING Vietnam (use VN cluster for VN)
> Includes: Singapore, Malaysia, Indonesia, Thailand, Philippines
> **Currency:** USD (regional default) or local (SGD, MYR, IDR, THB, PHP)
> **Top platforms:** TikTok + Shopee/Lazada/Tokopedia + LINE (TH) + Meta + Google
> **Privacy law:** PDPA Singapore (mature) + UU PDP Indonesia (since 2022) + PDPA Thailand (since 2022) + Data Privacy Act PH + PDPA Malaysia
> **Tracking:** Mobile-first; 80%+ mobile penetration; payments fragmented per country

---

## Top 5 channels for SEA market

### 1. TikTok (DOMINANT — different from US/EU)

**Why first?** SEA leads global TikTok usage per capita (TH especially). TikTok Shop is the e-commerce channel in 2026.

**Setup checklist:**
- [ ] TikTok Business Center + Ads Manager
- [ ] TikTok Pixel + Events API (Pageview, AddToCart, Purchase)
- [ ] **TikTok Shop integration** (critical for e-commerce in TH/MY/PH)
- [ ] Spark Ads (boost organic creator content)
- [ ] Catalog connected for DPA
- [ ] Local language creative (TH for Thailand, BM for Malaysia, ID for Indonesia)

**TikTok Shop priorities by country:**
- **Thailand:** TikTok Shop largest after Shopee
- **Indonesia:** TikTok Shop banned briefly (2023), reopened via GoTo partnership
- **Philippines:** TikTok Shop growing fast, lower than Lazada/Shopee
- **Malaysia:** TikTok Shop catching up
- **Singapore:** Smaller, premium positioning

**Common pitfalls:**
- English-only creative → poor performance vs local language
- Treating TikTok like Meta → algorithm differs significantly
- Skipping TikTok Shop integration in TH/PH/ID → missing 30-50% of e-commerce GMV
- Using polished US-style ads → UGC native creators outperform 3-5x

### 2. Shopee + Lazada (E-commerce platforms)

**Why second?** SEA e-commerce dominated by these 2 platforms. Tokopedia leads in Indonesia (now part of GoTo).

**Setup checklist:**
- [ ] Shopee Seller Center (per country) — separate accounts for each market
- [ ] Lazada Seller Center
- [ ] Tokopedia Seller (Indonesia only)
- [ ] Product listing optimization (per-country language, pricing in local currency)
- [ ] Shopee Ads / Lazada Sponsored Solutions setup
- [ ] **Shopee Live + Lazada Live** — live commerce critical (especially TH, ID, PH)
- [ ] Inventory + warehouse fulfillment (FBL Lazada, SLS Shopee)

**Common pitfalls:**
- Same product listing across countries → no localization
- USD pricing → conversion drop vs local currency
- No live commerce → missing 20-40% of GMV in TH/ID
- Slow shipping → ratings tank quickly

### 3. LINE (Thailand-critical)

**Why?** LINE has 95%+ penetration in Thailand. Not a "social network" — it's the messaging + commerce + content layer.

**Setup checklist (Thailand):**
- [ ] LINE Official Account (LOA)
- [ ] LINE Ads Platform (LAP) — equivalent to Meta Ads but for LINE
- [ ] LINE Shopping integration if e-commerce
- [ ] Broadcast messages (1-2 per week max — over-messaging causes block)
- [ ] LINE Stickers (branded stickers if budget allows — viral)

**Common pitfalls:**
- Broadcasting too often → block rate spikes (Thai users sensitive)
- Treating LINE like email → rich messages perform better than text
- Skipping LINE in Thailand → missing the dominant messaging channel

### 4. Meta (Facebook + Instagram)

**Why fourth (not first)?** Still important but TikTok overtook in many SEA markets for younger demos. Strong for older demos + Filipinos (Facebook still dominant in PH).

**Setup checklist:**
- [ ] Meta Business Suite + Pixel + CAPI
- [ ] Country-specific ad accounts (each country = separate billing/currency)
- [ ] Catalog uploaded
- [ ] WhatsApp Business integration (for direct sales)
- [ ] Local language creative

**Common pitfalls:**
- Single ad account for all SEA → currency mess, performance hard to track
- English copy → underperforms local
- Ignoring Facebook in Philippines → still dominant there

### 5. Google Ads + WhatsApp Business

**Why?** Google for intent (Search/YouTube). WhatsApp Business for direct customer service.

**Setup checklist:**
- [ ] Google Ads + GA4 (with consent mode for users from regions with privacy laws)
- [ ] WhatsApp Business API or app
- [ ] Click-to-WhatsApp ads (popular in SEA — direct messaging conversion)
- [ ] LINE Pay / GrabPay / GoPay payment integrations where applicable

**Common pitfalls:**
- No WhatsApp/LINE click-to-message → users prefer messaging over forms
- Same Google Ads as US → search behavior differs (more local terms)

---

## SEA-specific considerations

### Country-specific platform priority

| Country | Top 1 | Top 2 | Top 3 | Messaging |
|---------|-------|-------|-------|-----------|
| Singapore | Meta | Google | TikTok | WhatsApp |
| Malaysia | Shopee + TikTok Shop | Meta | Google | WhatsApp |
| Indonesia | Tokopedia + Shopee | TikTok Shop | Meta | WhatsApp |
| Thailand | LINE + Shopee | TikTok Shop | Lazada | LINE |
| Philippines | Facebook + Shopee | TikTok | Lazada | Messenger + Viber |

### Payment fragmentation

- **Singapore:** GrabPay, PayNow, credit cards (mature)
- **Malaysia:** Touch 'n Go eWallet, GrabPay, FPX (online banking)
- **Indonesia:** GoPay, OVO, DANA, ShopeePay, bank transfers
- **Thailand:** PromptPay, TrueMoney, Rabbit LINE Pay
- **Philippines:** GCash, PayMaya, GrabPay, COD (cash on delivery — still ~30% e-commerce)

**COD reality:** Philippines, Indonesia, Vietnam (separate cluster), Thailand all have 20-40% COD share. Plan for it: COD failure rate ~10-20% (returned to sender).

### Privacy compliance

- **Singapore PDPA:** opt-in, 21-day data breach notification, DPO required
- **Indonesia UU PDP (2022):** opt-in, similar to GDPR (penalty 2% revenue)
- **Thailand PDPA (2022):** opt-in, mirrors GDPR
- **Malaysia PDPA:** opt-in for sensitive data, opt-out OK for non-sensitive (less strict than SG)
- **Philippines DPA 2012:** opt-in, NPC enforcement

**Practical rule:** Treat all SEA users like GDPR (opt-in, consent records, DPO if scaling).

### Tools

| Tool | Purpose | Notes |
|------|---------|-------|
| **AppsFlyer** | Mobile attribution (most used in SEA) | $300+/mo |
| **Adjust** | Mobile attribution alternative | Similar pricing |
| **Branch** | Deep linking + attribution | Free tier available |
| **Klaviyo** | Email (regional servers via Cloudflare) | $45+/mo |
| **Brevo** | Email + SMS + WhatsApp | Cheaper than Klaviyo, good SMS rates |

---

## SEA output template addition

```markdown
## SEA Setup Status (Country: [TH/MY/ID/PH/SG])

### Phase 1 Channels Active
- [x] TikTok: Pixel + Events API + Spark Ads
- [x] Shopee/Lazada: seller account + first listings
- [ ] LINE OA (Thailand only)

### Phase 2
- [ ] Meta: separate country account + catalog
- [ ] Google: Search + brand campaign
- [ ] WhatsApp/LINE Business

### Compliance
- [x] PDPA opt-in flow live
- [x] DPO appointed (if SG/ID/TH scale)
- [x] Local language copy ready

### Spend ramp (USD or local)
- Week 1-2: $30-50/day TikTok
- Week 3-4: +$30-50/day Shopee/Lazada Ads
- Month 1: ~$2,000-2,500
- Target ROAS: 2-3x (lower than US due to lower margins)
```

---

## Common pitfalls (SEA-specific)

1. **English-only creative** → 50%+ performance loss vs local language
2. **Skipping TikTok Shop in TH/ID/PH** → missing 30-50% e-commerce GMV
3. **Ignoring LINE in Thailand** → can't reach #1 messaging app
4. **Single ad account for multi-country** → billing/currency mess
5. **No COD support** → losing 20-40% of PH/ID e-commerce
6. **Polished US-style ads on TikTok** → UGC creators outperform
7. **Treating Indonesia like Singapore** → 2 different markets economically
8. **Slow shipping → seller rating tanks** → algorithm punishes
9. **No live commerce** → missing 20-40% GMV in TH/ID
10. **GDPR-only thinking** — SEA has its own privacy regimes (Indonesia UU PDP especially strict)

---

## Region quick-wins (SEA)

- TikTok + TikTok Shop FROM DAY 1 (especially TH/PH/MY)
- Local language creative (BM for Malaysia, TH for Thailand, ID for Indonesia)
- WhatsApp/LINE click-to-message ads (higher conversion than landing page)
- Live commerce (Shopee Live, Lazada Live, TikTok Live) — schedule weekly
- COD support if e-commerce in PH/ID
- AppsFlyer for mobile-first attribution (mobile = 80%+ traffic)
