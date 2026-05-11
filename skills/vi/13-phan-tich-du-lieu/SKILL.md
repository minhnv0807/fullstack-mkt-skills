---
name: 13-phan-tich-du-lieu
description: Doc data marketing tho va bien thanh insight hanh dong — phan tich theo kenh, chien dich, creative, doi tuong, thoi gian
metadata:
  version: 2.0.0
  category: performance
triggers:
  - "phan tich du lieu"
  - "phan tich so lieu"
  - "doc data"
  - "data analysis"
  - "phan tich Meta Ads"
  - "phan tich TikTok Ads"
  - "xem bao cao GA4"
output: File .md chua bao cao insight co cau truc — descriptive, diagnostic, predictive, prescriptive — voi bang bieu va de xuat cu the
related:
  - 03-danh-gia-hieu-suat
  - 07-bao-cao-marketing
  - 10-tinh-kpi-nguoc
  - 12-brief-landing-page
---

# Phan Tich Du Lieu Marketing

> Insight truoc so lieu. Nhan dinh truoc, so lieu de minh hoa — khong liet ke so lieu roi.

---

## Thu thap thong tin

Hoi user toi da 4 cau:

1. **Du lieu tu nguon nao?** Meta Ads, TikTok Ads, GA4, Google Sheets, hay ket hop nhieu nguon?
2. **Khung thoi gian?** Tuan nay, thang nay, so sanh 2 giai doan (VD: thang 3 vs thang 4)?
3. **Muc tieu kinh doanh hien tai?** Tang lead, giam CPL, tang ROAS, hay co van de cu the can xu ly?
4. **Dan data vao day** — paste bang so lieu, hoac mo ta cac chi so chinh (spend, impression, click, lead, revenue).

---

## Nguyen tac phan tich

### Thu tu doc data

```
1. DESCRIPTIVE   — Da xay ra gi? (so lieu, xu huong)
2. DIAGNOSTIC    — Tai sao? (nguyen nhan goc)
3. PREDICTIVE    — Se xay ra gi tiep? (du bao)
4. PRESCRIPTIVE  — Can lam gi? (hanh dong cu the)
```

### Quy tac trinh bay

| Quy tac | Giai thich |
|---------|-----------|
| Insight dau, so lieu sau | "CPL tang 40% do creative exhaustion" — khong phai "CPL tu 50K len 70K" |
| So sanh, khong doc tuyet doi | Luon so sanh voi: tuan truoc (WoW), thang truoc (MoM), hoac benchmark nganh |
| Flag bat thuong | Bat ky chi so nao thay doi > 20% so voi ky truoc → danh dau de dieu tra |
| De xuat co thoi han | Moi de xuat phai co: lam gi, khi nao, ai lam, do bang gi |

---

## Framework phan tich theo nguon du lieu

### Meta Ads

| Cap do | Chi so chinh | Chi so bo tro |
|--------|-------------|--------------|
| Account | Spend, ROAS, CPA | Frequency, Reach |
| Campaign | CPMess, CPL, Conv rate | Budget utilization |
| Ad Set | CPC, CTR, CPM | Audience size, overlap |
| Ad (Creative) | Hook rate (3s view), Hold rate, CTR | Engagement rate, save rate |

**Cach doc Meta Ads:**

```
Spend cao + Impression thap → CPM cao → doi tuong qua hep hoac dang canh tranh cao
Impression cao + Click thap → CTR thap → creative khong hap dan
Click cao + Lead thap → Landing page co van de hoac form qua dai
Lead cao + Booking thap → Chat luong lead kem hoac quy trinh cham soc yeu
```

### TikTok Ads

| Cap do | Chi so chinh | Chi so bo tro |
|--------|-------------|--------------|
| Account | Spend, CPA, ROAS | Total impression |
| Campaign | CPMess, Cost per result | Campaign type performance |
| Ad Group | CPC, CTR, Conv rate | Audience size, age/gender split |
| Ad (Video) | 2s view rate, 6s view rate, completion rate | Like, comment, share |

**Cach doc TikTok Ads:**

```
2s view rate thap → Hook yeu — 3 giay dau khong du manh
6s view rate thap → Noi dung mat hap dan sau hook
Completion rate thap + CTR thap → Video khong dua den hanh dong
CPV cao → Audience sai hoac video khong phu hop format TikTok
```

### Google Analytics 4

| Nhom chi so | Chi so | Y nghia |
|-------------|--------|---------|
| Acquisition | Users, Sessions, Source/Medium | Nguon traffic |
| Engagement | Engagement rate, Time on page, Pages/session | Chat luong traffic |
| Conversion | Conv rate, Events (form submit, click CTA) | Hieu qua chuyen doi |
| Retention | Returning users, User retention | Kha nang giu chan |

**Cach doc GA4:**

```
Traffic tang + Engagement giam → Traffic rac, can loc nguon
Traffic tang + Conv giam → Landing page co van de hoac traffic sai intent
Bounce rate cao (>70%) o 1 trang → Content khong khop voi quang cao hoac load cham
```

### Google Sheets (Data thu cong)

Khi user dan data tu Google Sheets:

1. Xac dinh cac cot chinh: ngay, kenh, chi phi, so luong (impression/click/lead/don), doanh thu
2. Tinh cac chi so phat sinh: CPL, CPA, ROAS, conversion rate
3. Sap xep theo thoi gian de phat hien xu huong
4. Nhom theo kenh/chien dich de so sanh

---

## Phat hien xu huong

### Week over Week (WoW)

| Chi so | Tuan truoc | Tuan nay | Thay doi | Trang thai |
|--------|-----------|---------|----------|-----------|
| [Chi so] | [Gia tri] | [Gia tri] | [+/- %] | [Binh thuong / Canh bao / Nguy hiem] |

**Nguong canh bao:**
- Thay doi 10–20% → Theo doi, chua can hanh dong
- Thay doi 20–40% → Dieu tra nguyen nhan, chuan bi phuong an
- Thay doi > 40% → Hanh dong ngay

### Month over Month (MoM)

| Chi so | Thang truoc | Thang nay | Thay doi | vs Benchmark nganh |
|--------|------------|---------|----------|-------------------|
| [Chi so] | [Gia tri] | [Gia tri] | [+/- %] | [Tren/Duoi TB nganh] |

### Yeu to mua vu (Seasonality) — Vietnam

| Thoi diem | Tac dong | Dieu chinh |
|-----------|---------|-----------|
| Tet Nguyen Dan (T1–T2) | CPM +30–50%, traffic giam | Tang ngan sach 30%, chay truoc Tet 2 tuan |
| 8/3, 20/10 | CPM +15–25% (beauty, qua tang) | Chay chien dich truoc 1 tuan |
| Back to school (T8–T9) | CPM +10–15% (giao duc) | Len ke hoach tu T7 |
| Black Friday (T11) | CPM +20–30% | Chay remarketing la chinh |
| He (T6–T7) | CPM giam 10–15% (nhieu nganh) | Co hoi test creative moi, scale kenh moi |

---

## Phat hien bat thuong (Anomaly Detection)

Khi 1 chi so bat thuong, dieu tra theo cay nguyen nhan:

### CPL tang dot bien

```
CPL tang
├── CTR giam? → Creative exhaustion → Thay creative moi
├── CTR binh thuong + Conv rate giam? → Landing page co van de
│   ├── Load cham? → Kiem tra PageSpeed
│   ├── Form loi? → Test form tren mobile
│   └── Traffic sai intent? → Kiem tra audience targeting
└── CPM tang? → Canh tranh cao hoac mua vu
    ├── Mua Tet/sale? → Tang ngan sach hoac tam dung
    └── Doi thu tang spend? → Doi audience hoac kenh
```

### ROAS giam dot bien

```
ROAS giam
├── Revenue giam + Spend giu nguyen? → Van de chuyen doi
│   ├── Lead chat luong kem? → Kiem tra audience
│   ├── Sales team cham? → Kiem tra response time
│   └── Gia ban thay doi? → Kiem tra pricing
├── Revenue giu + Spend tang? → Over-spending
│   ├── Scale qua nhanh? → Giam lai, tang 20%/ngay max
│   └── Kenh moi chua toi uu? → Dung scale, toi uu truoc
└── Ca hai giam? → Van de toan dien
    ├── Doi thu co khuyen mai lon? → Phan tich doi thu
    └── Mua thap diem? → Kiem tra seasonality
```

### Engagement giam dot bien

```
Engagement giam
├── Reach giam? → Thuat toan de-prioritize
│   ├── Content nhieu quang cao? → Tang ti le giao duc/giai tri
│   └── Tan suat dang qua nhieu? → Giam xuong
├── Reach binh thuong + ER giam? → Content khong hap dan
│   ├── Format cu? → Thu format moi (carousel, POV, duet)
│   └── Noi dung lap lai? → Doi goc do theo content-angles.md
└── Reach tang + ER giam? → Traffic sai doi tuong
```

---

## Phan tich nhom (Cohort Analysis)

### Template cohort theo thang

| Cohort (thang tham gia) | Thang 1 | Thang 2 | Thang 3 | Thang 6 | Thang 12 |
|--------------------------|---------|---------|---------|---------|----------|
| T1/2025 (100 khach) | 100% | [X%] con hoat dong | [X%] | [X%] | [X%] |
| T2/2025 (120 khach) | 100% | [X%] | [X%] | [X%] | — |
| T3/2025 (95 khach) | 100% | [X%] | [X%] | — | — |

**Cach doc:**
- Ti le giam deu qua cac thang → Churn tu nhien, can chuong trinh retention
- Ti le giam manh o thang 2 → Trai nghiem dau tien kem, can cai thien onboarding
- Ti le on dinh tu thang 3 → Da dat "retention floor", tap trung vao nhom nay

### Cohort theo nguon traffic

| Nguon | So khach | CAC | LTV 90 ngay | LTV:CAC |
|-------|---------|-----|------------|---------|
| Meta Ads | [X] | [X] | [X] | [X:1] |
| TikTok Ads | [X] | [X] | [X] | [X:1] |
| Organic | [X] | [X] | [X] | [X:1] |
| Referral | [X] | [X] | [X] | [X:1] |

---

## Attribution Model

### So sanh 3 mo hinh

| Mo hinh | Cach tinh | Dung khi |
|---------|----------|----------|
| Last Click | 100% credit cho diem cham cuoi | Mac dinh, don gian, pheu ngan |
| First Click | 100% credit cho diem cham dau | Danh gia kenh TOFU, xay awareness |
| Linear | Chia deu cho moi diem cham | Pheu dai, nhieu kenh, can cai nhin cong bang |

**Template so sanh attribution:**

| Kenh | Last Click | First Click | Linear | Nhan xet |
|------|-----------|-------------|--------|----------|
| Meta Ads | [X don] | [X don] | [X don] | [Vai tro chinh: TOFU/BOFU?] |
| TikTok Ads | [X don] | [X don] | [X don] | [Vai tro chinh?] |
| Google Search | [X don] | [X don] | [X don] | [Vai tro chinh?] |
| Organic | [X don] | [X don] | [X don] | [Vai tro chinh?] |

**Khuyen nghi:**
- Pheu ngan (1–3 ngay): dung Last Click
- Pheu trung binh (7–14 ngay): dung Linear
- Pheu dai (30+ ngay): dung First Click cho TOFU, Last Click cho BOFU

---

## Template ket qua

```markdown
# Bao Cao Phan Tich Du Lieu — [Ten thuong hieu/Chien dich]
Khung thoi gian: [Tu ngay] — [Den ngay]
Nguon du lieu: [Meta Ads / TikTok Ads / GA4 / Google Sheets / ...]
Ngay phan tich: [YYYY-MM-DD]

---

## 1. Tom tat (Executive Summary)

**3 insight quan trong nhat:**
1. [Insight 1 — viet dang nhan dinh, khong liet ke so]
2. [Insight 2]
3. [Insight 3]

**Trang thai tong:** [Xanh = on dinh | Vang = can theo doi | Do = can hanh dong gap]

---

## 2. Descriptive — Da xay ra gi?

### Tong quan chi so

| Chi so | Ky nay | Ky truoc | Thay doi | Benchmark nganh | Trang thai |
|--------|--------|---------|----------|----------------|-----------|
| Spend | [X] | [X] | [+/- %] | — | [icon] |
| Impression | [X] | [X] | [+/- %] | — | [icon] |
| Click | [X] | [X] | [+/- %] | — | [icon] |
| CTR | [X%] | [X%] | [+/- %] | [X%] | [icon] |
| Lead | [X] | [X] | [+/- %] | — | [icon] |
| CPL | [X] | [X] | [+/- %] | [X] | [icon] |
| ROAS | [Xx] | [Xx] | [+/- %] | [Xx] | [icon] |

### Hieu suat theo kenh

| Kenh | Spend | Lead | CPL | ROAS | % Ngan sach | Nhan xet |
|------|-------|------|-----|------|------------|----------|
| Meta Ads | [X] | [X] | [X] | [Xx] | [X%] | [1 cau] |
| TikTok Ads | [X] | [X] | [X] | [Xx] | [X%] | [1 cau] |
| Google Ads | [X] | [X] | [X] | [Xx] | [X%] | [1 cau] |

### Top 5 chien dich

| Chien dich | Spend | Lead | CPL | ROAS | Nhan xet |
|-----------|-------|------|-----|------|----------|
| 1. [Ten] | [X] | [X] | [X] | [Xx] | [1 cau] |
| 2. [Ten] | [X] | [X] | [X] | [Xx] | [1 cau] |
| 3. [Ten] | [X] | [X] | [X] | [Xx] | [1 cau] |
| 4. [Ten] | [X] | [X] | [X] | [Xx] | [1 cau] |
| 5. [Ten] | [X] | [X] | [X] | [Xx] | [1 cau] |

### Top 3 creative

| Creative | Format | Hook rate | CTR | CPL | Thoi gian chay | Nhan xet |
|----------|--------|----------|-----|-----|----------------|----------|
| 1. [Ten/Mo ta] | [Video/Image/Carousel] | [X%] | [X%] | [X] | [X ngay] | [1 cau] |
| 2. [Ten/Mo ta] | [Format] | [X%] | [X%] | [X] | [X ngay] | [1 cau] |
| 3. [Ten/Mo ta] | [Format] | [X%] | [X%] | [X] | [X ngay] | [1 cau] |

---

## 3. Diagnostic — Tai sao?

### Dieu tot — tai sao thanh cong?
- [Nguyen nhan 1 + bang chung so lieu]
- [Nguyen nhan 2 + bang chung so lieu]

### Dieu chua tot — tai sao chua dat?
- [Nguyen nhan 1 + bang chung so lieu + giai phap]
- [Nguyen nhan 2 + bang chung so lieu + giai phap]

### Bat thuong can chu y
- [Chi so bat thuong 1 — mo ta + nguyen nhan kha nang + de xuat dieu tra]
- [Chi so bat thuong 2]

---

## 4. Predictive — Du bao

### Du bao tuan/thang toi (3 kich ban)

| Chi so | Xau | Co so | Tot |
|--------|-----|-------|-----|
| Spend | [X] | [X] | [X] |
| Lead | [X] | [X] | [X] |
| CPL | [X] | [X] | [X] |
| ROAS | [Xx] | [Xx] | [Xx] |
| Revenue | [X] | [X] | [X] |

### Yeu to anh huong du bao
- [Yeu to 1: mua vu, doi thu, thay doi thuat toan, ...]
- [Yeu to 2]

---

## 5. Prescriptive — Can lam gi?

### Hanh dong ngay (trong 48h)
| # | Hanh dong | Ai lam | Deadline | Do bang |
|---|----------|--------|----------|---------|
| 1 | [Mo ta cu the] | [Vai tro] | [Ngay] | [Chi so] |
| 2 | [Mo ta cu the] | [Vai tro] | [Ngay] | [Chi so] |

### Hanh dong tuan nay
| # | Hanh dong | Ai lam | Deadline | Do bang |
|---|----------|--------|----------|---------|
| 1 | [Mo ta cu the] | [Vai tro] | [Ngay] | [Chi so] |
| 2 | [Mo ta cu the] | [Vai tro] | [Ngay] | [Chi so] |

### Hanh dong thang nay
| # | Hanh dong | Ai lam | Deadline | Do bang |
|---|----------|--------|----------|---------|
| 1 | [Mo ta cu the] | [Vai tro] | [Ngay] | [Chi so] |
| 2 | [Mo ta cu the] | [Vai tro] | [Ngay] | [Chi so] |
```

---

## Chan doan tu dong

Khi phan tich, tu dong kiem tra cac tinh huong sau:

| Tinh huong | Kiem tra | Hanh dong |
|-----------|---------|----------|
| CPL tang > 30% WoW | Creative co chay qua 14 ngay khong? Frequency > 3? | Thay creative moi, refresh audience |
| CTR giam < 0.8% | Hook 3 giay co manh khong? Hinh anh co noi bat khong? | A/B test hook moi, doi hinh dau |
| ROAS < 2x lien tuc 7 ngay | Audience co dung khong? Landing page conv rate bao nhieu? | Thu hep audience, kiem tra landing page |
| Conv rate landing page < 3% | Load time bao lau? Form may truong? CTA co ro khong? | Goi skill 12-brief-landing-page |
| Frequency > 4 | Audience da bao hoa | Mo rong audience hoac doi kenh |
| Spend < 70% ngan sach | Audience qua hep hoac bid qua thap | Mo rong audience, tang bid |
| 1 kenh chiem > 60% spend | Phu thuoc 1 kenh — rui ro cao | Phan bo lai, test kenh moi |

---

## Lien ket skill

- **`03-danh-gia-hieu-suat`** — danh gia tong the hieu suat marketing (rong hon data analysis)
- **`07-bao-cao-marketing`** — bien ket qua phan tich thanh bao cao thang/quy trinh bay stakeholder
- **`10-tinh-kpi-nguoc`** — tinh lai KPI va ngan sach dua tren du lieu thuc te
- **`12-brief-landing-page`** — khi phat hien landing page co van de chuyen doi
- **`05-copy-quang-cao`** — khi phat hien creative can lam moi
- **`15-social-listening`** — bo sung du lieu dinh tinh (cam xuc, xu huong) ben canh du lieu dinh luong

---

## Checklist chat luong

### Truoc khi giao bao cao

- [ ] Moi insight co so lieu minh hoa cu the
- [ ] Moi so lieu co so sanh (WoW, MoM, hoac vs benchmark)
- [ ] Chi so bat thuong (thay doi > 20%) da duoc flag va giai thich
- [ ] De xuat hanh dong co: ai lam, khi nao, do bang gi
- [ ] Du bao co 3 kich ban (xau, co so, tot)
- [ ] Khong liet ke so lieu ma khong co nhan dinh di kem
- [ ] Nguon du lieu va khung thoi gian ghi ro rang
- [ ] So lieu da doi chieu cheo — spend tren platform khop voi spend thuc te
