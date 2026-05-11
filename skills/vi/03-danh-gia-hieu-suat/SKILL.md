---
name: 03-danh-gia-hieu-suat
description: Danh gia hieu suat marketing — audit performance ads va organic, chan doan root cause, de xuat toi uu voi action plan 48h va checklist hang tuan.
metadata:
  version: 2.2.0
  category: performance
triggers:
  - "danh gia chien dich"
  - "audit performance"
  - "review quang cao"
  - "phan tich ket qua"
  - "CPMess cao qua"
  - "ROAS thap"
  - "toi uu ads"
output: File .md gom diagnostic, root cause analysis, benchmark comparison, 48h action plan, va weekly optimization checklist
related:
  - 07-bao-cao-marketing
  - 10-tinh-kpi-nguoc
  - 00-ke-hoach-mkt
  - 05-copy-quang-cao
  - 04-script-video
  - 21-audit-ads-performance
  - references/quality-gates-vn
---

# Danh Gia Hieu Suat

---

## Thu thap thong tin

Hoi user toi da 4 cau truoc khi bat dau:

1. **Kenh nao can audit?** Meta Ads / TikTok Ads / Google Ads / Organic TikTok / Facebook / Email / Tat ca?
2. **So lieu hien tai?** Cung cap data: Spend, Impressions, Click, CTR, CPMess/CPL, So mess/lead, ROAS, thoi gian chay.
3. **Van de dang gap?** CPMess tang / ROAS giam / Lead chat luong kem / Khong co don / Creative khong hieu qua?
4. **Muc tieu la gi?** KPI muc tieu ban dau la bao nhieu? (CPMess, ROAS, so lead/don/thang)

### Auto-pull data qua MCP (neu co ket noi)

> Neu user da setup MCP server, pull data tu dong thay vi yeu cau paste.
> Xem huong dan: `skills/references/mcp-ads-integration.md`
> **Meta Official MCP:** `https://mcp.facebook.com/ads` — setup 5 phut qua `claude.ai/settings/integrations`

| Nen tang | MCP khuyen dung | Data pull |
|----------|----------------|----------|
| Meta Ads | **Meta Official MCP** (`mcp.facebook.com/ads`) | 29 tools — xem chi tiet ben duoi |
| Meta Ads (alt) | Pipeboard (`mcp.pipeboard.co/meta-ads-mcp`) | 29 tools — targeting research manh hon |
| Google Ads | Google Official MCP | GAQL query — cost, clicks, conversions, impression share |
| TikTok Ads | TikTok Ads MCP | Campaign/ad group performance reports |
| Nhieu nen tang | Adspirer ads-mcp | 222 metrics, cross-platform unified |

**Meta Official MCP — Tools dung cho Danh gia hieu suat:**

```
DIAGNOSTIC (chan doan):
  ads_insights_anomaly_signal             ← Tim KPI bat thuong vs baseline → feed vao 5 Whys
  ads_insights_performance_trend          ← Xu huong 7/14/30 ngay → phat hien suy giam

BENCHMARK (so sanh):
  ads_insights_industry_benchmark         ← CPM, CTR, CPC cua ban vs trung binh nganh
  ads_insights_auction_ranking_benchmarks ← Quality ranking, engagement rate ranking vs doi thu
  ads_insights_advertiser_context         ← Boi canh nganh va khu vuc

OPTIMIZATION:
  ads_get_opportunity_score               ← Meta goi y co hoi toi uu → action plan
  ads_get_dataset_quality                 ← Chat luong tracking (pixel + CAPI)
```

**Quy trinh danh gia nhanh voi MCP:**
```
1. ads_insights_performance_trend → Co dang giam khong?
2. ads_insights_anomaly_signal → KPI nao bat thuong?
3. ads_insights_industry_benchmark → So voi nganh the nao?
4. ads_get_opportunity_score → Meta goi y gi?
→ Dien vao Benchmark Table + chay Diagnostic Tree
```

---

## Phan 0 — Ads Health Score (0-100)

> **Audit day du:** Dung `21-audit-ads-performance` khi can chay full 84 checkpoints cho Meta/TikTok/Google/Zalo.
> Phan nay la quick-check — danh gia nhanh truoc khi di sau vao diagnostic.

### Cong thuc tinh Health Score

```
Health Score = Σ(Check_pass × W_severity × W_category) / Σ(Check_total × W_severity × W_category) × 100
```

**He so muc do (W_severity):**

| Muc do | He so | Vi du checkpoints |
|--------|-------|------------------|
| Critical | 5× | Pixel khong fire, CAPI chua setup, CPA > 3× target |
| High | 3× | Creative similarity > 60%, budget duoi 5× CPA/ngay |
| Medium | 1.5× | Chua co retarget audience, headline qua 40 char |
| Low | 0.5× | Ten chien dich khong theo naming convention |

### Bang diem va hanh dong

| Diem | Grade | Nhan xet | Hanh dong |
|------|-------|---------|-----------|
| 90–100 | **A** ✅ | Xuat sac | Giu nguyen, tap trung scale |
| 75–89 | **B** 🟢 | Tot | Fix Medium issues, tang budget nhe |
| 60–74 | **C** 🟡 | Trung binh | Fix High issues truoc khi scale |
| 40–59 | **D** 🔴 | Kem | Fix Critical + High truoc toan bo |
| < 40 | **F** ⛔ | Nguy hiem | Pause, audit toan dien, rebuild |

### 10 Quality Gates — Bat buoc kiem tra truoc moi de xuat

> **Reference:** `skills/references/quality-gates-vn.md` — 10 hard rules KHONG bao gio vi pham.

| Gate | Quy tac | Nguong vi pham | Hanh dong bat buoc |
|------|---------|---------------|-------------------|
| **G1** 3× Kill Rule | CPA > 3× CPA muc tieu | > 3× | Pause ad set NGAY |
| **G2** Budget Sufficiency | Ngan sach < 5× CPA/ad set/ngay | < 5× | Gop ad set, tang budget |
| **G3** Learning Phase | Ad set dang "Learning" | Dang hoc | KHONG chinh sua bat ky thu gi |
| **G4** Pixel Integrity | EMQ < 6.0, duplicate event | < 6.0 | Fix tracking TRUOC khi chay |
| **G5** Creative Diversity | Similarity Score > 60% | > 60% | Lam creative moi thuc su khac biet |
| **G6** Compliance | Nganh dac biet chua kiem tra | Chua check | Review policy truoc launch |
| **G7** TikTok Sound | Video TikTok khong co am thanh | Khong audio | Them nhac/voiceover |
| **G8** Scale Speed | Tang ngan sach > 20%/72h | > 20% | Giam toc do tang, toi da 20%/lan |
| **G9** Min Data | < 1,000 impression (Meta) | < 1K impr | Doi du data moi ket luan |
| **G10** LTV:CAC | LTV:CAC < 3:1 | < 3:1 | Khong nen scale, kiem tra churn |

> ⚠️ **Vi pham bat ky gate nao = CRITICAL** — phai fix truoc toan bo de xuat toi uu.

---

## Phan 1 — Diagnostic Decision Tree

### Cay chan doan: Tu trieu chung den nguyen nhan

```
[CPMess CAO]
  |-- CTR thap (<1%)?
  |     |-- Hook yeu → Viet lai 3s dau
  |     |-- Targeting sai → Thu hep/mo rong audience
  |     |-- Creative cu (>7 ngay) → Lam creative moi
  |
  |-- CTR binh thuong (1–3%) nhung CPMess van cao?
  |     |-- CPM tang (mua cao diem) → Giam budget, doi gio chay
  |     |-- Audience qua nho → Mo rong audience, test LAL moi
  |     |-- Bid cao → Chuyen sang lowest cost
  |
  |-- CTR cao (>3%) nhung CPMess van cao?
        |-- Landing page/inbox khong chuyen doi → Fix landing page
        |-- CTA khong ro → Viet lai CTA cu the hon
```

```
[ROAS THAP (<2x)]
  |-- CPMess tot nhung it don?
  |     |-- Funnel bi leak → Kiem tra tung buoc: Mess→Lead→Booking→Customer
  |     |-- Sales cham → Cai thien response time, script chot
  |     |-- San pham/gia khong phu hop → Review offer
  |
  |-- CPMess cao + it don?
  |     |-- Quay lai cay [CPMess CAO] tren
  |
  |-- Nhieu don nhung AOV thap?
        |-- Cross-sell/Upsell yeu → Them combo, goi lon hon
        |-- Khach mua hang re → Dieu chinh targeting, loai deal hunter
```

```
[LEAD CHAT LUONG KEM]
  |-- Nhieu mess nhung it lead qualified?
  |     |-- Targeting qua broad → Thu hep, dung LAL tu khach tot
  |     |-- Content hut sai nguoi → Dieu chinh hook + CTA
  |     |-- Gia tri chua ro → Tang giao duc truoc khi CTA
  |
  |-- Lead qualified nhung khong booking?
  |     |-- Follow-up cham (>2h) → Response trong 15 phut
  |     |-- Script chot yeu → Viet lai script, training sales
  |     |-- Gia qua cao → Bundle, tra gop, trial
  |
  |-- Booking nhung khong show?
        |-- Khong co nhac hen → Tu dong nhac truoc 24h + 2h
        |-- Khach chua du trust → Tang nurture truoc booking
        |-- Qua nhieu lua chon → Don gian hoa booking flow
```

```
[CREATIVE KHONG HIEU QUA]
  |-- Video view thap?
  |     |-- Hook 3s khong du manh → Test 5 hook khac nhau
  |     |-- Thumbnail khong hap dan → A/B test thumbnail
  |     |-- Audio/nhac sai mood → Doi nhac trending
  |
  |-- View tot nhung engagement thap?
  |     |-- Noi dung khong cho gia tri → Tang tips, how-to
  |     |-- Khong co CTA trong video → Them CTA bang loi + text
  |
  |-- Engagement tot nhung khong chuyen doi?
        |-- CTA khong ro → "Nhan tin ngay" cu the hon
        |-- Qua nhieu CTA → 1 video = 1 CTA duy nhat
        |-- Chua du trust → Bo sung testimonial/review
```

---

## Phan 2 — Vietnam Benchmark Table 2025–2026

> Nguon: `references/benchmarks-vietnam.md` — cap nhat Q1/2025.

### Paid Ads

| Chi so | Kem | Trung binh | Tot | Xuat sac | Data cua ban |
|--------|-----|------------|-----|----------|-------------|
| **Meta — CPMess** | >40K | 25–40K | 18–25K | <18K | [so] |
| **Meta — CPC** | >8K | 4–8K | 2–4K | <2K | [so] |
| **Meta — CPM** | >120K | 60–120K | 30–60K | <30K | [so] |
| **Meta — CTR** | <0.8% | 0.8–1.5% | 1.5–3% | >3% | [so]% |
| **Meta — CPL** | >150K | 85–150K | 50–85K | <50K | [so] |
| **TikTok — CPMess** | >45K | 28–45K | 20–28K | <20K | [so] |
| **TikTok — CPV (6s)** | >200d | 100–200d | 50–100d | <50d | [so] |
| **TikTok — CTR** | <0.5% | 0.5–1.2% | 1.2–2.5% | >2.5% | [so]% |
| **TikTok — VCR** | <15% | 15–30% | 30–50% | >50% | [so]% |
| **Google — CPC** | >15K | 7–15K | 3–7K | <3K | [so] |
| **Google — CTR** | <1.5% | 1.5–3% | 3–6% | >6% | [so]% |
| **Google — Conv rate** | <2% | 2–5% | 5–10% | >10% | [so]% |

### Funnel Conversion

| Buoc | Trung binh | Tot | Data cua ban | Gap |
|------|-----------|-----|-------------|-----|
| Impression → Click | 1–2% | 3%+ | [so]% | |
| Click → Mess/Lead | 15–25% | 30%+ | [so]% | |
| Mess → Lead qualified | 50–60% | 70%+ | [so]% | |
| Lead → Booking | 50–60% | 70%+ | [so]% | |
| Booking → Customer | 30–40% | 50%+ | [so]% | |
| Customer → Re-purchase (90 ngay) | 15–25% | 35%+ | [so]% | |

### Organic Content

| Chi so | Kem | Trung binh | Tot | Data cua ban |
|--------|-----|------------|-----|-------------|
| **TikTok — View/video** (1K followers) | <500 | 500–2K | 2K–10K | [so] |
| **TikTok — Engagement rate** | <2% | 2–5% | 5–10% | [so]% |
| **TikTok — Save rate** | <0.5% | 0.5–2% | 2–5% | [so]% |
| **FB — Reach/post** (10K like) | <300 | 300–800 | 800–2K | [so] |
| **FB — Engagement rate** | <1% | 1–3% | 3–6% | [so]% |
| **Zalo OA — Read rate** | <30% | 40–60% | 60–80% | [so]% |
| **Email — Open rate** | <12% | 15–25% | 25–35% | [so]% |
| **Email — Click rate** | <1% | 1–3% | 3–5% | [so]% |

### Benchmark theo nganh

| Nganh | CPMess | Lead->Booking | Booking->Customer | AOV | Re-purchase |
|-------|--------|---------------|-------------------|-----|-------------|
| Beauty & Spa | 20–35K | 55–65% | 60–75% | 300K–1.5M | 20–35% (60 ngay) |
| F&B | 15–25K | -- | 40–55% (Lead→Order) | 80K–250K | 25–40% (30 ngay) |
| Education | 80–200K (CPL) | -- | 5–15% (Lead→Enroll) | 2M–10M | -- |
| E-commerce (Thoi trang) | 3–8K (CPC) | -- | 1–3% (Conv rate) | 250K–800K | -- |
| BDS | 150–500K (CPL) | 10–20% (Lead→Meeting) | 5–15% (Meeting→Deal) | 500M–5B | -- |

---

## Phan 3 — Root Cause Analysis (5 Whys)

### Framework phan tich

Khi gap van de, hoi "Tai sao?" 5 lan de tim nguyen nhan goc:

**Vi du: CPMess tang tu 25K len 45K**

| Lan | Tai sao? | Tra loi |
|-----|---------|---------|
| 1 | Tai sao CPMess tang? | Vi CTR giam tu 2.5% xuong 1.1% |
| 2 | Tai sao CTR giam? | Vi creative da chay 12 ngay, audience da thay qua nhieu lan |
| 3 | Tai sao creative chay qua lau? | Vi team khong co lich lam creative moi |
| 4 | Tai sao khong co lich? | Vi khong co quy trinh review creative dinh ky |
| 5 | Tai sao khong co quy trinh? | Vi chua setup SOP creative rotation |

**Nguyen nhan goc:** Thieu SOP creative rotation
**Giai phap:** Lap lich lam 3–5 creative moi/tuan, review performance moi 3–5 ngay

### Template 5 Whys

| Lan | Tai sao? | Tra loi |
|-----|---------|---------|
| 1 | [van de] | [nguyen nhan truc tiep] |
| 2 | Tai sao [nguyen nhan 1]? | [nguyen nhan sau hon] |
| 3 | Tai sao [nguyen nhan 2]? | [nguyen nhan sau hon] |
| 4 | Tai sao [nguyen nhan 3]? | [nguyen nhan sau hon] |
| 5 | Tai sao [nguyen nhan 4]? | [nguyen nhan goc] |

**Nguyen nhan goc:** [tom tat]
**Giai phap:** [hanh dong cu the]

---

## Phan 4 — Creative Fatigue Detection

### Tieu chi nhan biet creative met

| Dau hieu | Nguong canh bao | Nguong nguy hiem | Hanh dong |
|----------|-----------------|------------------|-----------|
| Frequency | >2.5 | >4 | Doi creative, expand audience |
| CTR giam | Giam 20% vs 3 ngay dau | Giam 40% | Thay creative moi |
| CPA tang | Tang 25% vs 3 ngay dau | Tang 50% | Pause creative, test moi |
| Thoi gian chay | >7 ngay | >14 ngay | Bat buoc thay moi |
| Engagement giam | Comment/share giam 30% | Giam 50% | Doi goc do noi dung |
| Negative feedback | >3% | >5% | Tat ngay, review creative |

### Lich rotation creative khuyen nghi

| Loai creative | Thoi gian hieu qua | Khi nao lam moi |
|---------------|-------------------| --------------|
| Video ads (cold audience) | 5–10 ngay | Khi frequency > 2.5 hoac CTR giam 20% |
| Image ads | 7–14 ngay | Khi CTR giam 30% |
| Carousel | 10–21 ngay | Khi engagement giam 25% |
| UGC video | 10–14 ngay | Khi CPA tang 30% |

---

## Phan 5 — Audience Saturation Indicators

| Chi so | Binh thuong | Bao dong | Hanh dong |
|--------|-------------|---------|-----------|
| Audience overlap (giua cac ad sets) | <20% | >30% | Gop ad sets hoac loai tru |
| Frequency | <2.5 | >4 | Expand audience, doi creative |
| Reach vs Audience size | <50% | >70% | Audience qua nho, mo rong |
| Cost per incremental result | On dinh | Tang 30%+ | Dang bao hoa, can audience moi |
| New user % (trong click) | >60% | <40% | Dang re-show cho nguoi cu |

### Hanh dong khi audience bao hoa

1. Mo rong Lookalike tu 1% len 3–5%
2. Test interest moi chua dung
3. Chay broad targeting voi creative tot
4. Chuyen ngan sach sang kenh khac
5. Tang organic content de mo rong funnel

---

## Phan 6 — Trend Analysis

### Week-over-Week (WoW)

| Chi so | Tuan truoc | Tuan nay | Thay doi | Xu huong |
|--------|-----------|---------|---------|---------|
| Spend | [so] | [so] | [+/-]% | Tang / Giam / On dinh |
| CPMess | [so] | [so] | [+/-]% | |
| So mess | [so] | [so] | [+/-]% | |
| CTR | [so]% | [so]% | [+/-]% | |
| ROAS | [so]x | [so]x | [+/-]% | |
| So don | [so] | [so] | [+/-]% | |
| AOV | [so] | [so] | [+/-]% | |

### Month-over-Month (MoM)

| Chi so | Thang truoc | Thang nay | Thay doi | Xu huong 3 thang |
|--------|------------|---------|---------|-----------------|
| Tong spend | [so] | [so] | [+/-]% | [mo ta] |
| Tong mess/lead | [so] | [so] | [+/-]% | |
| CPMess trung binh | [so] | [so] | [+/-]% | |
| ROAS | [so]x | [so]x | [+/-]% | |
| Doanh thu tu ads | [so] | [so] | [+/-]% | |
| LTV:CAC | [so]:1 | [so]:1 | [+/-] | |

### Quy tac doc xu huong

- **3 tuan lien tuc tang/giam** → xu huong that, can hanh dong
- **1 tuan dot bien** → kiem tra yeu to ben ngoai (mua le, doi thu, algorithm)
- **On dinh 4+ tuan** → can breakthrough, thu creative/audience moi

---

## Phan 7 — 48h Action Plan

> Ap dung khi phat hien van de can xu ly gap.

### Template action plan

| STT | Thoi gian | Hanh dong | Muc do | Ket qua ky vong | Nguoi TH |
|-----|----------|-----------|--------|-----------------|----------|
| 1 | Trong 2h | Pause creative/ad set co CPA > 2x target | **CRITICAL** | Ngung chay mau ngan sach | [ten] |
| 2 | Trong 4h | Phan tich data chi tiet: creative nao, audience nao, gio nao | **CRITICAL** | Xac dinh nguyen nhan | [ten] |
| 3 | Trong 8h | Duplicate winning ad set, test creative moi | **HIGH** | Co creative thay the | [ten] |
| 4 | Trong 12h | Dieu chinh audience: loai tru overlap, test LAL moi | **HIGH** | Giam frequency | [ten] |
| 5 | Trong 24h | A/B test 3 hook moi cho creative | **HIGH** | Tim hook tot hon | [ten] |
| 6 | Trong 24h | Kiem tra landing page/inbox flow | **MEDIUM** | Fix leak trong funnel | [ten] |
| 7 | Trong 36h | Review ket qua thay doi, so sanh | **MEDIUM** | Co data de quyet dinh tiep | [ten] |
| 8 | Trong 48h | Bao cao va de xuat ke hoach tuan tiep | **MEDIUM** | Ke hoach cu the | [ten] |

---

## Phan 8 — Weekly Optimization Checklist

### Thu 2 — Review tuan truoc

- [ ] So sanh KPI tuan nay vs tuan truoc (WoW)
- [ ] Xac dinh top 3 creative tot nhat (CTR, CPMess, ROAS)
- [ ] Xac dinh bottom 3 creative can tat hoac sua
- [ ] Check frequency moi ad set — co vuot 2.5 khong?
- [ ] Check audience overlap — co vuot 20% khong?

### Thu 3 — Creative & Content

- [ ] Lam 3–5 creative moi dua tren winning elements
- [ ] Test hook moi cho video ads
- [ ] Kiem tra UGC pipeline — co content moi khong?
- [ ] Review content organic — bai nao co ER cao?

### Thu 4 — Ads Optimization

- [ ] Toi uu bid/budget cho ad set tot
- [ ] Pause ad set co CPA > 2x target
- [ ] Test audience moi (LAL, interest, broad)
- [ ] Kiem tra landing page load speed + conv rate

### Thu 5 — Funnel & Sales

- [ ] Kiem tra Mess→Lead conversion rate
- [ ] Kiem tra Lead→Booking conversion rate
- [ ] Review response time inbox (target <15 phut)
- [ ] Review script chot — can update khong?

### Thu 6 — Report & Plan

- [ ] Tong hop data tuan (bang WoW)
- [ ] Xac dinh 3 hanh dong uu tien tuan sau
- [ ] Cap nhat lich noi dung tuan sau
- [ ] Bao cao cho stakeholder

---

## Phan 9 — Tom tat danh gia

### Bang tong ket

| Hang muc | Trang thai | Chi tiet | Hanh dong |
|----------|-----------|---------|-----------|
| **Paid Ads** | [Xanh/Vang/Do] | [tom tat] | [hanh dong] |
| **Organic Content** | [Xanh/Vang/Do] | [tom tat] | [hanh dong] |
| **Funnel Conversion** | [Xanh/Vang/Do] | [tom tat] | [hanh dong] |
| **Creative Health** | [Xanh/Vang/Do] | [tom tat] | [hanh dong] |
| **Audience Health** | [Xanh/Vang/Do] | [tom tat] | [hanh dong] |
| **ROAS/ROI** | [Xanh/Vang/Do] | [tom tat] | [hanh dong] |

**Trang thai:**
- **Xanh:** On track, dat hoac vuot KPI
- **Vang:** Can theo doi, lech 10–25% vs target
- **Do:** Can xu ly gap, lech >25% vs target hoac xu huong xau 2+ tuan

### Top 3 uu tien

| STT | Uu tien | Ly do | Deadline | Ket qua ky vong |
|-----|---------|-------|----------|-----------------|
| 1 | [hanh dong] | [ly do] | [ngay] | [ket qua] |
| 2 | [hanh dong] | [ly do] | [ngay] | [ket qua] |
| 3 | [hanh dong] | [ly do] | [ngay] | [ket qua] |

---

## Cross-reference

| Khi can | Goi skill |
|---------|-----------|
| Audit day du voi Health Score 0-100 (84 checkpoints) | `21-audit-ads-performance` |
| Bao cao marketing hang thang day du | `07-bao-cao-marketing` |
| Tinh lai ngan sach va KPI tu doanh thu | `10-tinh-kpi-nguoc` |
| Viet lai copy quang cao theo 6 frameworks | `05-copy-quang-cao` |
| Viet lai script video | `04-script-video` |
| Len ke hoach lai toan bo | `00-ke-hoach-mkt` |
| Review doi thu (neu nghi doi thu chay deal) | `08-nghien-cuu-doi-thu` |
| Tra cuu 10 Quality Gates va 6 copy frameworks | `references/quality-gates-vn`, `references/copy-frameworks-vn` |

---

## Checklist chat luong

Truoc khi giao danh gia, kiem tra:

- [ ] 10 Quality Gates da kiem tra — bat ky vi pham = CRITICAL, fix truoc toan bo de xuat
- [ ] Health Score da uoc tinh (neu co du data) — neu < 60 thi focus fix truoc khi toi uu
- [ ] Data cua user da dien day du vao bang benchmark
- [ ] Diagnostic decision tree da chay — xac dinh dung nhanh nguyen nhan
- [ ] 5 Whys da thuc hien — tim duoc nguyen nhan goc, khong dung o trieu chung
- [ ] So sanh voi benchmark Vietnam 2025–2026 — co cot "Data cua ban" va "Gap"
- [ ] Creative fatigue da kiem tra — frequency, CTR, thoi gian chay
- [ ] Audience saturation da kiem tra — overlap, reach vs size
- [ ] Trend analysis co WoW va MoM — khong chi nhin 1 ngay
- [ ] 48h action plan cu the — co thoi gian, nguoi chiu TN, ket qua ky vong
- [ ] Tong ket co trang thai mau (Xanh/Vang/Do) de nhau
- [ ] Top 3 uu tien ro rang voi deadline
- [ ] Tat ca so lieu co the verify — khong co so lieu "uoc tinh" khong co co so
- [ ] De xuat kha thi voi nguon luc hien tai cua user
