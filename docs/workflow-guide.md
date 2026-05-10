# Workflow Guide — Chon Dung Quy Trinh

> **Muc dich:** Giup ban chon DUNG workflow thay vi chay tung skill roi rac.
> Workflow = chuoi skill tu dong chay lien tuc, output skill truoc la input skill sau.
> **15 Workflows (7 VN + 8 Global)** — v2.5.0 added 8 global workflows.

> **Agents auto-detect mode (v2.5.0):** Tat ca 5 agents tu dong nhan dien cluster qua `.agents/` directory.
> - `product-marketing-context.md` → VN mode
> - `product-marketing-context-global.md` → Global mode
> - Ca 2 → agent HOI user chon
> - Khong co → agent goi y tao foundation file phu hop

---

## Chon workflow nao?

```
Ban dang o tinh huong nao?
│
├─ Thi truong Viet Nam?
│   ├─ Agency vua nhan khach hang moi
│   │   └─ ✅ client-onboard (5-7 ngay)
│   │
│   ├─ Chuan bi launch san pham / chien dich moi
│   │   └─ ✅ campaign-launch (14-21 ngay)
│   │
│   ├─ Cuoi thang, can bao cao + ke hoach thang moi
│   │   └─ ✅ monthly-cycle (3-5 ngay)
│   │
│   ├─ Hang tuan can san xuat content
│   │   └─ ✅ content-production (lap lai moi tuan)
│   │
│   ├─ Ads dang chay kem, can fix gap
│   │   └─ ❌ Khong can workflow — chay skill 03 hoac 21 truc tiep
│   │
│   ├─ Muon launch personal brand (founder/coach/creator)
│   │   └─ ✅ personal-brand-launch (30 ngay)
│   │
│   ├─ Can san xuat 30 video AI Avatar / 5 ngay
│   │   └─ ✅ ai-avatar-batch (5 ngay × 5 gio)
│   │
│   └─ Cuoi thang, review + adjust personal brand
│       └─ ✅ personal-brand-monthly (3 ngay)
│
└─ Thi truong quoc te (US/EU/SEA/LATAM)?
    ├─ Agency nhan KH quoc te
    │   └─ ✅ client-onboard-global (5-7 ngay)
    │
    ├─ Launch chien dich quoc te
    │   └─ ✅ campaign-launch-global (14-21 ngay)
    │
    ├─ Build personal brand quoc te
    │   └─ ✅ personal-brand-launch-global (30 ngay)
    │
    ├─ Launch dropshipping store
    │   └─ ✅ dropshipping-launch-global (30 ngay) — FLAGSHIP
    │
    └─ Monthly cycle quoc te
        └─ ✅ monthly-cycle-global (3-5 ngay)
```

---

## 4 Workflows Chi Tiet

### 1. Client Onboard (Agency nhan khach moi)

```
Thoi gian: 5–7 ngay lam viec
Dung khi:  Agency / freelancer nhan project marketing moi
Output:    7+ file .md — tu brief den ke hoach day du
```

**Luong chay:**
```
Ngay 1          Ngay 2          Ngay 2-3        Ngay 3-4        Ngay 4-5        Ngay 5-6        Ngay 6-7
┌──────────┐   ┌──────────┐   ┌──────────┐   ┌──────────┐   ┌──────────┐   ┌──────────┐   ┌──────────┐
│ 20       │   │ 09       │   │ 08       │   │ 10       │   │ 00       │   │ 02       │   │ 01       │
│ Brief    │──▶│ Insight  │──▶│ Nghien   │──▶│ Tinh KPI │──▶│ Ke hoach │──▶│ Brief    │──▶│ Lich noi │
│ Client   │   │ khach    │   │ cuu doi  │   │ nguoc    │   │ MKT      │   │ chien    │   │ dung     │
│ Intake   │   │ hang     │   │ thu      │   │          │   │          │   │ dich     │   │          │
└──────────┘   └──────────┘   └──────────┘   └──────────┘   └──────────┘   └──────────┘   └──────────┘
```

**Cach chay:**
```
> Toi la agency, vua nhan khach hang [ten]. Chay client-onboard workflow.

Hoac tung buoc:
> Chay skill 20-brief-client-intake cho nganh [spa/fnb/bds/...]
> [Sau khi co brief] Chay skill 09-insight-khach-hang
> [Tiep] Chay skill 08-nghien-cuu-doi-thu
> ...
```

**Tieu chi chuyen buoc:**
| Buoc | Skill | Chuyen khi |
|------|-------|-----------|
| 20 → 09 | Brief da day du 11 phan | Khach hang da tra loi tat ca |
| 09 → 08 | Co it nhat 1 insight that su | Khong chi la observation |
| 08 → 10 | Da xac dinh khoang trong thi truong | Co positioning map |
| 10 → 00 | Co 3 kich ban KPI | Budget hoan chinh |
| 00 → 02 | Ke hoach da duyet | Leadership OK |
| 02 → 01 | Brief co deadline ro | Team hieu can lam gi |

---

### 2. Campaign Launch (Chay chien dich A-Z)

```
Thoi gian: 14–21 ngay
Dung khi:  Launch san pham / chien dich moi
Output:    10+ file .md san sang trien khai
```

**Luong chay:**
```
Ngay 1-2        Ngay 2-3        Ngay 3-5        Ngay 5-7        Ngay 7-12       Ngay 10-14      Ngay 12-18
┌──────────┐   ┌──────────┐   ┌──────────┐   ┌──────────┐   ┌──────────┐   ┌──────────┐   ┌──────────┐
│ 08       │   │ 09       │   │ 00       │   │ 02       │   │ 01+04+05 │   │ 06       │   │ 11+12    │
│ Doi thu  │──▶│ Insight  │──▶│ Ke hoach │──▶│ Brief CD │──▶│ Content  │──▶│ UGC/EGC  │──▶│ Kenh+LP  │
└──────────┘   └──────────┘   └──────────┘   └──────────┘   └──────────┘   └──────────┘   └──────────┘
```

> Chi tiet: xem `workflows/campaign-launch.md`

**Cach chay:**
```
> Chuan bi launch [san pham]. Chay campaign-launch workflow, ngan sach [so]/thang.
```

**Sau khi launch:**
| Thoi diem | Hanh dong | Skill |
|-----------|----------|-------|
| Ngay 1-3 | Khong chinh gi — de hoc | — |
| Ngay 3-5 | Danh gia nhanh | 03 |
| Tuan 2 | Bao cao tuan, toi uu | 07 |
| Tuan 4 | Bao cao thang + KPI thang sau | 07 + 10 |

---

### 3. Monthly Cycle (Chu ky thang)

```
Thoi gian: 3–5 ngay (cuoi thang cu + dau thang moi)
Dung khi:  Moi thang — lap lai
Output:    Bao cao thang + KPI moi + Lich content moi
```

**Luong chay:**
```
Ngay 28          Ngay 29          Ngay 30          Ngay 1-2         Ngay 2-3
┌──────────┐   ┌──────────┐   ┌──────────┐   ┌──────────┐   ┌──────────┐
│ 13       │   │ 03       │   │ 07       │   │ 10       │   │ 01       │
│ Phan tich│──▶│ Danh gia │──▶│ Bao cao  │──▶│ KPI moi  │──▶│ Lich ND  │
│ data     │   │ hieu suat│   │ thang    │   │          │   │ thang moi│
└──────────┘   └──────────┘   └──────────┘   └──────────┘   └──────────┘
```

> Chi tiet: xem `workflows/monthly-cycle.md`

**Cach chay:**
```
> Cuoi thang roi. Chay monthly-cycle workflow.
> Day la data thang nay: [paste hoac de AI pull qua MCP]
```

**Data can chuan bi truoc (Ngay 28):**
- Meta Ads: Spend, CPMess, CPL, ROAS, Top creative
- TikTok Ads: Spend, CPV, CPC, VCR
- GA4: Traffic theo kenh, conversion events
- CRM: Lead, booking, customer, doanh thu

---

### 4. Content Production (San xuat noi dung tuan)

```
Thoi gian: Lap lai hang tuan
Dung khi:  Can san xuat content deu dan
Output:    Script + Video + Copy san sang dang
```

**Luong chay:**
```
Thu 2            Thu 3            Thu 4-5          Thu 6            Thu 7-CN
┌──────────┐   ┌──────────┐   ┌──────────┐   ┌──────────┐   ┌──────────┐
│ Review   │   │ 04       │   │ Quay +   │   │ 05       │   │ Len lich │
│ lich ND  │──▶│ Script   │──▶│ Dung     │──▶│ Copy ads │──▶│ dang +   │
│ (tu 01)  │   │ video    │   │ video    │   │ (neu co) │   │ setup    │
└──────────┘   └──────────┘   └──────────┘   └──────────┘   └──────────┘
  AI + Owner     AI              Team            AI             Team
```

> Chi tiet: xem `workflows/content-production.md`

**Cach chay:**
```
> Tuan nay can quay 3 video [chu de]. Viet script A/B cho tung video.
> [Sau khi quay xong] Viet copy quang cao cho video [ten].
```

---

## Ket hop workflow

Cac workflow KHONG loai tru nhau — chung ket hop:

```
Thang 1 (Launch):
  Tuan 1-3: campaign-launch workflow
  Tuan 4:   content-production (hang tuan)
  Ngay 28:  monthly-cycle

Thang 2+ (Duy tri):
  Moi tuan: content-production
  Ngay 28:  monthly-cycle
  Khi can:  03 hoac 21 (khi ads co van de)
```

---

## Personal Brand Workflows (NEW v2.4.0)

3 workflow moi cho founder/coach/creator xay personal brand voi AI Avatar.

### 5. Personal Brand Launch (30 ngay)

```
Thoi gian: 30 ngay (4 tuan)
Dung khi:  Founder/Coach/Creator launch personal brand tu con so 0
Output:    Profile day du, 10+ bai dang, 500+ followers, 1 offer published
```

**Luong chay:**
```
Tuan 1 (Foundation)    Tuan 2 (Content)       Tuan 3 (Amplify)       Tuan 4 (Monetize)
22 → 23 → 24 → 26  →  04(personal) → 25  →  Engage + 26 + 04  →  27 → 05(personal) → 28
```

Chi tiet: `workflows/personal-brand-launch.md`

### 6. AI Avatar Batch (5 ngay × 25 gio)

```
Thoi gian: 5 ngay (lam viec full-time)
Dung khi:  Can dump 30 video AI Avatar / thang
Output:    30 videos AI Avatar voi disclosure compliance
Cost:      <$2/video
```

**Luong chay:**
```
Day 1: 26 → 04   Day 2: ElevenLabs   Day 3-4: HeyGen render   Day 5: QA + schedule
Script batch     Voice batch          Avatar render             Distribution
```

Chi tiet: `workflows/ai-avatar-batch.md`

### 7. Personal Brand Monthly (Phase 3 — coming soon)

Review + adjust personal brand strategy hang thang. Se ra mat o Phase 3 (skill 27-28 + workflow).

---

## Phan biet Mode A vs Mode B (skill 04, 05)

Skills 04, 05 tu dong chuyen Mode khi doc context file:
- **Mode A** (mac dinh): chi co `.agents/product-marketing-context.md` → output content/copy ban hang
- **Mode B** (Personal Brand): chi co `.agents/personal-brand-context.md` → output content/copy build authority
- Co ca 2: skill se HOI 1 cau truoc khi viet

---

## Sai lam pho bien

| Sai lam | Dung |
|---------|------|
| Chay skill 05 (copy) ma chua co skill 02 (brief) | Brief truoc → Copy sau |
| Chay skill 00 (plan) ma chua co skill 08+09 | Research truoc → Plan sau |
| Bao cao (07) khong co data analysis (13) | Thu thap data truoc → Bao cao sau |
| Moi thang chi chay 01 (lich ND) | Chay ca monthly-cycle: 13 → 03 → 07 → 10 → 01 |
| Tao campaign tren Ads Manager khong co brief | Brief (02) truoc → Setup ads sau |

---

## Global Workflows (v2.5.0)

8 workflow moi cho thi truong quoc te (US/EU/SEA/LATAM). File goc trong `workflows-global/`.

### 8. Client Onboard Global (Agency quoc te)

```
Thoi gian: 5-7 ngay
Dung khi:  Agency nhan khach hang quoc te (B2B/B2C)
Output:    Brief + Plan trong tieng Anh, USD/EUR pricing
Skills:    20 → 09 → 08 → 10 → 00 → 02 → 01 (all global)
```
Chi tiet: `workflows-global/client-onboard-global.md`

### 9. Campaign Launch Global (Launch quoc te)

```
Thoi gian: 14-21 ngay
Dung khi:  Launch SP/dich vu tren thi truong US/EU/SEA/LATAM
Output:    10+ file .md tieng Anh, region-specific
Skills:    08 → 09 → 00 → 02 → 01+04+05 → 06 → 11+12 (all global)
```
Chi tiet: `workflows-global/campaign-launch-global.md`

### 10. Monthly Cycle Global (Bao cao thang quoc te)

```
Thoi gian: 3-5 ngay
Dung khi:  Monthly review cho campaign quoc te
Output:    Report + KPI + content calendar tieng Anh
Skills:    13 → 03 → 07 → 10 → 01 (all global)
```
Chi tiet: `workflows-global/monthly-cycle-global.md`

### 11. Content Production Global

```
Thoi gian: Hang tuan
Dung khi:  San xuat content tieng Anh hang tuan
Output:    Script + Copy tieng Anh san sang dang
Skills:    01 → 04 → 05 (global, Mode A/B auto-detect)
```
Chi tiet: `workflows-global/content-production-global.md`

### 12. Personal Brand Launch Global (30 ngay)

```
Thoi gian: 30 ngay
Dung khi:  Founder/Coach/Creator launch PB quoc te tu 0
Output:    Profile + 10+ posts + 500-1500 followers
Skills:    22 → 23 → 26 → 24 → 27 (all global)
```
Chi tiet: `workflows-global/personal-brand-launch-global.md`

### 13. AI Avatar Batch Global (30 videos / 5 ngay)

```
Thoi gian: 5 ngay × 5 gio
Dung khi:  Dump 30 AI Avatar videos tieng Anh
Output:    30 videos + FTC/EU AI Act disclosure compliance
Skills:    22 → 24 (×30) → 26 → 28 (all global)
```
Chi tiet: `workflows-global/ai-avatar-batch-global.md`

### 14. Personal Brand Monthly Global

```
Thoi gian: 3-5 ngay
Dung khi:  Monthly review + adjust PB quoc te
Output:    Report + adjustments + next-month plan
Skills:    27 → 28 → 14 → 18 (all global)
```
Chi tiet: `workflows-global/personal-brand-monthly-global.md`

### 15. Dropshipping Launch Global (FLAGSHIP)

```
Thoi gian: 30 ngay (4 tuan)
Dung khi:  Launch dropshipping store on Shopify
Output:    Live store + winning product + scaling ad creative
Skill:     29-dropshipping-mastery-global (12 phases)
```
**Phases:** Research → Sourcing → Shopify setup → Product page → Ad creative → Launch → Optimize → Scale → Retention → Reorder strategy → Brand build → Exit prep

Chi tiet: `workflows-global/dropshipping-launch-global.md`

---

## VN vs Global — Khi nao chon?

| Tieu chi | VN Workflows | Global Workflows |
|----------|-------------|------------------|
| Thi truong | Vietnam | US / EU / SEA / LATAM |
| Foundation file | `.agents/product-marketing-context.md` | `.agents/product-marketing-context-global.md` |
| Tien te | VND | USD / EUR / region |
| Compliance | Nghi dinh 147/2024 | GDPR / CCPA / FTC / CAN-SPAM |
| Tien co the chay | Caller mode tu dong (xem header) | Caller mode tu dong (xem header) |
