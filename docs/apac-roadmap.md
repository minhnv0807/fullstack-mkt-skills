# APAC Roadmap — Why Asia-Pacific is Not in v2.5.0 (Yet)

> Future-region planning doc for Japan, South Korea, Australia, New Zealand. Explains why they were intentionally deferred from v2.5.0 and the criteria for inclusion in v2.6.0+.

---

## 1. Why APAC is not in v2.5.0

v2.5.0 ships with 4 region variants (US, EU, SEA, LATAM) covering ~2.1 billion addressable consumers and ~$25T in regional GDP. APAC (defined here as Japan + Korea + Australia + New Zealand, distinct from Southeast Asia) was deferred for three reasons:

1. **YAGNI principle** — adding regions before validated demand bloats the codebase and degrades quality for the regions we already cover. Each region variant carries roughly 2,000-3,000 lines of region-specific guidance across the 30 skills; adding 4 more regions in v2.5.0 would have meant an additional ~10,000 lines of unproven content.

2. **Platform integration depth** — Japan and Korea require deep platform integration (LINE messaging in Japan, KakaoTalk + Naver in Korea) that does not map cleanly onto the existing US/EU/SEA/LATAM pattern of "Meta + Google + TikTok + local marketplace." Doing it half-right would be worse than not shipping it.

3. **Validation cost** — testing region-quality output requires native-speaker review for each market. We do not yet have committed review partners for Japanese, Korean, or Australian content. Without that, our APAC variants would risk hallucinated platform names, wrong regulation citations, or inappropriate cultural framing.

The decision is intentional, not a gap. Better to ship 4 strong region variants than 8 mediocre ones.

---

## 2. What "APAC" means in this roadmap

For clarity, the term "APAC" in this document means specifically:

- **Japan** — JPY currency, LINE messaging dominant, expensive ad inventory, formal business culture, AKB48-style J-pop influencer system
- **South Korea** — KRW currency, KakaoTalk + Naver dominant, K-content global influence, Coupang e-commerce, fast-moving trends
- **Australia** — AUD currency, bridge between US and EU patterns, English-native, time-zone overlap with SEA
- **New Zealand** — NZD currency, treated as Australia-adjacent in most marketing planning

Note: Southeast Asia (Singapore, Thailand, Indonesia, Philippines, Malaysia) is **already in v2.5.0** as the SEA variant. SEA is **not** what this roadmap means by APAC.

---

## 3. Decision criteria for v2.6.0 inclusion

APAC will move from roadmap to implementation when at least 2 of the following are true:

1. **Issue volume** — 5+ GitHub issues or discussion threads explicitly requesting APAC variants (Japan, Korea, Australia named)
2. **Star milestone** — repository reaches 1,000 stars (signals broad enough adoption to justify investment)
3. **Explicit demand from native-speaker users** — at least 2 native-speaker users from Japan or Korea volunteer to validate output quality
4. **Commercial demand** — paying clients or sponsors signal willingness to fund APAC variant development
5. **Platform stabilization** — LINE Marketing API, KakaoTalk Business API, and Naver Ads platform reach a stable enough state that documenting them does not break in 90-day cycles

If you want to flag interest, open a GitHub issue with the label `region-request:apac` and your country + use case. We aggregate these issues quarterly to assess the criteria above.

---

## 4. Estimated effort

Adding APAC variants is non-trivial:

```
Per region (Japan, Korea, Australia):
  - 30 skills × ~150 lines region-specific edits = ~4,500 lines
  - 1 region variant for product-marketing-context-global = ~300 lines
  - 8 workflows × ~50 lines region-specific edits = ~400 lines
  - Region guide doc + getting-started additions = ~500 lines
  - Total: ~5,700 lines per region

For all 3 APAC sub-regions (Japan + Korea + Australia):
  ~17,000 lines of region-specific content

Plus: native-speaker review (~40 hours per region), QA testing, doc updates, release notes, version bump.
```

Calendar estimate: 6-10 weeks of focused work for Japan + Korea, plus 2-3 weeks for Australia (lighter because English-native).

---

## 5. Tentative timeline

| Milestone | Trigger | Estimated date |
|-----------|---------|----------------|
| **APAC roadmap doc** | v2.5.0 release | Done (this doc) |
| **Demand validation window** | Q3 2026 - Q4 2026 | Track via GitHub issues |
| **APAC scoping decision** | Criteria from §3 met | Q4 2026 - Q1 2027 |
| **v2.6.0 development start** | Decision made + native-speaker reviewers committed | Q1 2027 |
| **v2.6.0 release (Japan + Korea)** | If criteria met | Q2 2027 |
| **v2.6.x Australia variant** | After Japan/Korea ship | Q3 2027 |

Dates are tentative and depend on community signal. If APAC demand stays low, this may slip to v2.7.0+ or never ship — see §7.

---

## 6. What APAC variants would cover

### Japan variant (sketch)

```
Currency:           JPY (1 USD ~ 150 JPY as of 2026)
GDP per capita:     ~$33K
Primary platforms:  LINE (messaging + ads), Yahoo! Japan (search + ads), Twitter/X (high engagement), Instagram, TikTok (growing)
Secondary:          YouTube (high engagement), Pinterest (women 25-44), niche bulletin boards (5ch)
E-commerce:         Rakuten (dominant), Amazon Japan, Yahoo! Shopping, Mercari (C2C)
Messaging:          LINE (~95% adoption — primary customer service AND marketing channel)
Search engine:      Google + Yahoo! Japan (Yahoo! ~25% share, unique to Japan)
Languages:          ja-JP (Japanese — formal vs casual register matters)
Regulations:        APPI (Act on Protection of Personal Information), AAct on Specified Commercial Transactions, Pharmaceutical Affairs Act for cosmetics/health
Ad disclosure:      Influencer disclosure increasingly enforced (PR ad tag)
Persona framework:  Demographic + life-stage (single, OL, married mother, retired) + neighborhood tier
Key holidays:       Golden Week (early May), Obon (mid-Aug), Christmas (commercial), New Year (Jan 1-3 — major shopping), Cherry Blossom (Mar-Apr)
KPI norms:          ROAS 4-6x DTC (high CPM but high LTV), CAC JPY 3000-15000, LTV:CAC 4:1, payback 12-18 months
Pricing psychology: 980 JPY charm pricing common (akin to $9.80), tax-inclusive display mandatory, gift-wrapping expected
Influencer system:  Tarento (TV personalities) > YouTuber/streamers (Hikakin, Hajime Shacho tier) > LINE creators > Instagram lifestyle
```

### South Korea variant (sketch)

```
Currency:           KRW (1 USD ~ 1300 KRW as of 2026)
GDP per capita:     ~$33K
Primary platforms:  KakaoTalk (~95% adoption), Naver (search + cafe + blog), Instagram, YouTube
Secondary:          TikTok, Twitch, Coupang (e-commerce)
E-commerce:         Coupang (Amazon-like dominance), Naver Smartstore, Gmarket, 11st
Messaging:          KakaoTalk (primary customer service AND marketing — KakaoBiz API)
Search engine:      Naver (~60%) > Google (~35%) — split market, Naver-first content critical
Languages:          ko-KR (Korean — honorifics matter, business vs casual register)
Regulations:        PIPA (Personal Information Protection Act — strict, GDPR-equivalent), KCSC enforcement, ad disclosure required
Persona framework:  Demographic + age cohort (MZ generation = millennial+gen Z combined, very specific marketing target)
Key holidays:       Lunar New Year, Chuseok (autumn harvest), Christmas (commercial), Children's Day, Pepero Day (Nov 11 — equivalent to Singles Day commercially)
KPI norms:          ROAS 4-7x DTC, CAC KRW 30K-150K, LTV:CAC 4:1, payback 6-12 months
Pricing psychology: 9,900 KRW charm pricing, free shipping at 30,000-50,000 KRW threshold
Influencer system:  K-pop idols (top tier) > YouTubers > Instagram tastemakers > Naver bloggers
Cultural note:      K-content (drama, K-pop) shapes global aesthetic preferences — Korea is a trend exporter, not just consumer
```

### Australia variant (sketch)

```
Currency:           AUD (1 USD ~ 1.50 AUD as of 2026)
GDP per capita:     ~$60K
Primary platforms:  Meta (Facebook + Instagram), Google, TikTok, LinkedIn (B2B), YouTube
Secondary:          X (formerly Twitter), Pinterest, Snapchat (Gen Z)
E-commerce:         Amazon AU (growing), eBay AU, Catch, The Iconic (fashion), Kogan
Messaging:          WhatsApp + Messenger + iMessage mix; SMS for transactional
Search engine:      Google ~95%
Languages:          en-AU (English — local idiom matters: "arvo", "ute", "fair dinkum")
Regulations:        Privacy Act 1988 (under amendment 2024-2026), ACCC consumer law, Therapeutic Goods Act for health products
Ad disclosure:      AANA (Australian Association of National Advertisers) Code, influencer #ad disclosure expected
Persona framework:  Demographic + state (NSW, VIC, QLD differ in tone) + urban vs regional
Key holidays:       Christmas (Dec 25 — summer holiday), Australia Day (Jan 26), Easter, Mother's/Father's Day, ANZAC Day (Apr 25), EOFY sale (Jun 30)
KPI norms:          ROAS 3-5x DTC, CAC AUD 30-120, LTV:CAC 3:1, payback 9-15 months
Pricing psychology: GST-inclusive pricing mandatory, $9.99 charm pricing, free shipping over AUD 50-100
Cultural note:      Australia bridges US directness with EU evidence-orientation; humor lands well, hard-sell does not
```

---

## 7. v2.7.0+ planning — beyond APAC

If APAC demand validates, v2.7.0+ may add:

- **India** — UPI payments, WhatsApp Business dominant, Hindi + English bilingual, JioCinema / Hotstar advertising, 800M internet users, distinct festive seasons (Diwali, Eid, Holi)
- **MENA (Middle East and North Africa)** — Arabic primary, Ramadan timing affects all marketing, WhatsApp + Snapchat dominant, KSA + UAE highest spend power
- **Africa** — mobile money (M-Pesa in Kenya, MTN MoMo across West Africa), WhatsApp dominant, hyperlocal language fragmentation (Swahili, Yoruba, Hausa, Amharic), youth-heavy demographics

These are even further from validated demand than APAC. They appear here only as a north-star sketch.

---

## 8. Why we publish this roadmap (instead of staying silent)

We publish this roadmap for three reasons:

1. **Set expectations** — users searching for "Japanese marketing skill" or "Korean dropshipping" land here and understand the timeline rather than assuming the project is abandoned in their region.
2. **Aggregate demand** — making the criteria explicit (5+ issues, 1000 stars, native reviewers) lets the community organize signal that we will actually act on.
3. **Stay honest about scope** — saying "we plan to add Japan eventually" with no timeline is dishonest. Saying "we plan to add Japan when demand passes thresholds X/Y/Z by date W" is testable.

If APAC matters to you, the most useful thing you can do is open a GitHub issue describing your specific country, use case, and willingness to validate output. Bulk-supportive thumbs-up reactions on those issues count for tracking.

---

## Resources

- Region decision guide (current 4 regions): `docs/global-region-guide.md`
- v2.5.0 release notes (current scope): `docs/release-notes/v2.5.0.md`
- Vietnam cluster (parallel project): `docs/getting-started.md`
- Issue tracker (where to flag APAC interest): [github.com/minhnv0807/fullstack-mkt-skills/issues](https://github.com/minhnv0807/fullstack-mkt-skills/issues)
