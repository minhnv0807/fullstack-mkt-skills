---
name: 07-bao-cao-marketing
description: Bao cao marketing theo nguyen tac "doc 5 phut, biet lam gi tiep" — nhan dinh truoc, so lieu minh hoa, de xuat co thoi han va nguoi phu trach
metadata:
  version: 2.0.0
  category: operations
triggers:
  - "bao cao marketing"
  - "tong ket thang"
  - "tong ket tuan"
  - "ket qua thang nay"
  - "monthly report"
  - "bao cao hieu suat"
output: file .md gom executive summary, du lieu tuan/thang, chan doan tu dong, de xuat hanh dong, ke hoach thang toi
related:
  - 03-danh-gia-hieu-suat
  - 10-tinh-kpi-nguoc
  - 00-ke-hoach-mkt
  - 13-phan-tich-du-lieu
---

# Bao Cao Marketing

## Thu thap thong tin

Hoi toi da 4 cau truoc khi lam bao cao:

1. **Ky bao cao?** Tuan (tuan may, tu ngay nao den ngay nao) hay thang (thang may/nam)?
2. **Du lieu co san?** Cung cap so lieu: chi phi ads, so tin nhan, so lead, so booking, so khach, doanh thu. Neu khong co du — ghi ro thieu gi de hoi lai.
3. **Muc tieu da dat ra?** KPI muc tieu cua ky nay la gi? (doanh thu, so lead, CPMess, ROAS). Neu khong co — dung benchmark nganh.
4. **Kenh nao dang chay?** Meta Ads, TikTok Ads, Google Ads, Organic (TikTok, Facebook, Zalo), Email. Liet ke tat ca.

---

## Nguyen tac cot loi

### "Doc 5 phut, biet lam gi tiep"

Moi bao cao phai tra loi 4 cau hoi nay theo thu tu:

1. **Ket qua the nao?** — Dat hay khong dat muc tieu? (1 cau)
2. **Cai gi dang hoat dong tot?** — Giu nguyen, nhan rong (2–3 diem)
3. **Cai gi chua tot?** — Can sua, nguyen nhan goc (2–3 diem)
4. **Lam gi tiep?** — De xuat cu the, co thoi han va nguoi phu trach

### Thu tu trinh bay

```
Nhan dinh TRUOC → So lieu MINH HOA → De xuat HANH DONG
```

Khong bao gio liet ke so lieu roi de nguoi doc tu ket luan. Luon nhan dinh truoc, so lieu la bang chung.

### 3 khung so sanh

Moi chi so phai so sanh voi it nhat 1 trong 3 khung:

| Khung so sanh | Y nghia | Vi du |
|---------------|---------|-------|
| vs Muc tieu | Dat hay chua dat KPI da cam ket | CPMess muc tieu 30K — thuc te 28K (dat) |
| vs Ky truoc | Tang hay giam so voi thang/tuan truoc | CPMess thang truoc 35K → thang nay 28K (giam 20%) |
| vs Benchmark nganh | Tot hay kem so voi trung binh thi truong | CPMess TB nganh Beauty 25–40K — ta 28K (tot) |

---

## Cau truc ket qua

### Header

```markdown
# Bao Cao Marketing — [Thang X/YYYY] hoac [Tuan X: DD/MM–DD/MM]
Nguoi lap: [Ten]
Ngay lap: [YYYY-MM-DD]
Trang thai: [Dat muc tieu / Chua dat muc tieu / Vuot muc tieu]
```

---

### 1. Executive Summary (doc doan nay la du)

```markdown
## 1. Executive Summary

**Ket luan:** [1 cau — dat/chua dat muc tieu, ly do chinh]

**So lieu chinh:**
| Chi so | Muc tieu | Thuc te | vs Muc tieu | vs Ky truoc |
|--------|---------|---------|-------------|-------------|
| Doanh thu | [X] | [X] | [+/-X%] | [+/-X%] |
| Tong chi phi MKT | [X] | [X] | [+/-X%] | [+/-X%] |
| ROAS | [X] | [X] | [+/-X%] | [+/-X%] |
| So khach moi | [X] | [X] | [+/-X%] | [+/-X%] |
| CPMess TB | [X] | [X] | [+/-X%] | [+/-X%] |

**3 diem noi bat:**
1. [Dieu tot nhat ky nay — co so lieu]
2. [Van de lon nhat — co so lieu]
3. [Co hoi/rui ro can chu y]
```

---

### 2. Chi tiet theo kenh

#### 2.1 Meta Ads

```markdown
### Meta Ads

**Nhan dinh:** [1–2 cau — kenh nay dang tot/chua tot, ly do]

| Chi so | Tuan 1 | Tuan 2 | Tuan 3 | Tuan 4 | Tong thang | vs Muc tieu | vs Thang truoc | vs Benchmark |
|--------|--------|--------|--------|--------|-----------|-------------|---------------|-------------|
| Chi phi | | | | | | | | |
| Impression | | | | | | | | |
| Click | | | | | | | | |
| CTR | | | | | | | | |
| Tin nhan | | | | | | | | |
| CPMess | | | | | | | | |
| Lead | | | | | | | | |
| CPL | | | | | | | | |

**Top 3 ads hieu suat cao:**
| # | Ten ad / Creative | Chi phi | Tin nhan | CPMess | CTR | Ghi chu |
|---|------------------|--------|---------|--------|-----|--------|
| 1 | | | | | | |
| 2 | | | | | | |
| 3 | | | | | | |

**Top 3 ads hieu suat kem (can tat/sua):**
| # | Ten ad / Creative | Chi phi | Tin nhan | CPMess | CTR | Van de |
|---|------------------|--------|---------|--------|-----|--------|
| 1 | | | | | | |
| 2 | | | | | | |
| 3 | | | | | | |
```

#### 2.2 TikTok Ads

_(Cung cau truc nhu Meta Ads — thay CPMess bang CPV neu chay traffic, them Video Completion Rate)_

#### 2.3 Google Ads

_(Cung cau truc — thay Tin nhan bang Conversion, them Quality Score)_

#### 2.4 Organic (Noi dung tu nhien)

```markdown
### Organic

**Nhan dinh:** [1–2 cau]

| Chi so | Tuan 1 | Tuan 2 | Tuan 3 | Tuan 4 | Tong thang | vs Thang truoc |
|--------|--------|--------|--------|--------|-----------|---------------|
| So bai dang | | | | | | |
| Reach tong | | | | | | |
| Engagement tong | | | | | | |
| ER trung binh | | | | | | |
| Follower moi | | | | | | |
| Top content (reach) | | | | | | |

**Top 3 bai post/video hieu suat cao:**
| # | Noi dung | Nen tang | Reach | ER | Save | Share | Ghi chu |
|---|---------|---------|-------|-----|------|-------|--------|
| 1 | | | | | | | |
| 2 | | | | | | | |
| 3 | | | | | | | |
```

#### 2.5 Email / Zalo OA

```markdown
### Email / Zalo OA

| Chi so | Thuc te | vs Benchmark |
|--------|---------|-------------|
| So chien dich gui | | |
| Open rate | | [TB nganh: 15–25%] |
| Click rate | | [TB nganh: 1–3%] |
| Unsubscribe rate | | [<1% la tot] |
| Doanh thu tu email | | |
```

---

### 3. Pheu chuyen doi

```markdown
## 3. Pheu Chuyen Doi

| Buoc | So luong | Ti le chuyen doi | vs Ky truoc | vs Benchmark | Danh gia |
|------|---------|-----------------|-------------|-------------|---------|
| Impression | [X] | — | [+/-X%] | — | |
| Click | [X] | [X%] | [+/-X%] | [TB: 1–2%] | [Tot/Kem/TB] |
| Tin nhan / Lead | [X] | [X%] | [+/-X%] | [TB: 15–25%] | |
| Lead qualified | [X] | [X%] | [+/-X%] | [TB: 50–60%] | |
| Booking | [X] | [X%] | [+/-X%] | [TB: 50–60%] | |
| Khach hang | [X] | [X%] | [+/-X%] | [TB: 30–40%] | |
| Doanh thu | [X] | — | [+/-X%] | — | |

**Nut that co chai:** [Chi ra buoc nao co ti le chuyen doi thap nhat — do la van de can xu ly]
```

---

### 4. Chan doan tu dong

```markdown
## 4. Chan Doan: Cai gi tot — Cai gi chua tot — Tai sao

### Dang hoat dong tot (GIU + NHAN RONG)
| # | Phat hien | So lieu | Ly do | Hanh dong |
|---|----------|--------|-------|----------|
| 1 | [VD: Creative video UGC dang cho CPMess thap] | [CPMess 22K vs TB 30K] | [Format tu nhien, hook manh] | Nhan rong: tang budget 30%, quay them 5 video UGC |
| 2 | | | | |
| 3 | | | | |

### Chua tot (CAN SUA GAP)
| # | Van de | So lieu | Nguyen nhan goc (Root cause) | Muc do | Hanh dong |
|---|--------|--------|---------------------------|--------|----------|
| 1 | [VD: Ti le Booking→Show thap] | [28% vs muc tieu 40%] | [Khong nhac nho truoc 24h, khong co deposit] | Cao | Thiet lap nhac nho tu dong + thu deposit 100K |
| 2 | | | | | |
| 3 | | | | | |

### Chua ro (CAN THEO DOI THEM)
| # | Quan sat | So lieu | Gia thuyet | Cach kiem chung | Thoi gian |
|---|---------|--------|-----------|----------------|----------|
| 1 | [VD: CTR giam dan qua 4 tuan] | [2.1% → 1.4%] | [Ad fatigue] | Doi creative moi, theo doi 1 tuan | 7 ngay |
```

---

### 5. De xuat hanh dong

```markdown
## 5. De Xuat Hanh Dong

| # | Hanh dong | Muc tieu | Deadline | Nguoi phu trach | Trang thai |
|---|----------|---------|----------|----------------|-----------|
| 1 | [VD: Quay 5 video UGC moi cho Meta Ads] | Giam CPMess xuong <25K | [DD/MM] | [Ten] | Chua bat dau |
| 2 | [VD: Thiet lap nhac nho tu dong truoc 24h] | Tang Booking→Show len 40% | [DD/MM] | [Ten] | Chua bat dau |
| 3 | [VD: Test TikTok Ads voi budget 5M/tuan] | Mo kenh moi, CPMess <35K | [DD/MM] | [Ten] | Chua bat dau |
| 4 | | | | | |
| 5 | | | | | |

**Uu tien:** Danh so thu tu theo muc do anh huong — lam 1 + 2 truoc, 3 + 4 + 5 tuan sau.
```

---

### 6. Ke hoach thang toi

```markdown
## 6. Ke Hoach Thang [X+1]

### Muc tieu

| Chi so | Thang nay (thuc te) | Thang toi (muc tieu) | Muc tang | Co so |
|--------|--------------------|---------------------|---------|-------|
| Doanh thu | [X] | [X] | [+X%] | [Giai thich tai sao dat duoc muc nay] |
| Chi phi MKT | [X] | [X] | [+/-X%] | |
| ROAS | [X] | [X] | [+X] | |
| So khach moi | [X] | [X] | [+X%] | |
| CPMess | [X] | [X] | [-X%] | |

### Ke hoach theo tuan

| Tuan | Trong tam | Ngan sach | KPI chinh |
|------|----------|----------|----------|
| Tuan 1 | [VD: Launch creative moi + test A/B] | [X] | [CPMess <30K] |
| Tuan 2 | [VD: Nhan rong ads tot + cat ads kem] | [X] | [ROAS >3x] |
| Tuan 3 | [VD: Push BOFU + retarget] | [X] | [Ti le chot >40%] |
| Tuan 4 | [VD: Tong ket + chuan bi thang sau] | [X] | [Dat muc tieu doanh thu] |

### Ngan sach phan bo

| Hang muc | So tien | Ti le | Ghi chu |
|----------|--------|-------|--------|
| Meta Ads | [X] | [X%] | |
| TikTok Ads | [X] | [X%] | |
| Google Ads | [X] | [X%] | |
| Content production | [X] | [X%] | UGC, quay video, thiet ke |
| Tool & software | [X] | [X%] | |
| **Tong** | **[X]** | **100%** | |
```

---

### 7. Dac ta bieu do (cho team design)

Neu bao cao can trinh bay cho stakeholder (sep, khach hang), tao bieu do:

| # | Bieu do | Loai | Truc X | Truc Y | Ghi chu |
|---|---------|------|--------|--------|--------|
| 1 | Doanh thu vs Chi phi theo tuan | Line chart (2 duong) | Tuan 1–4 | VND | 2 mau: xanh (doanh thu), do (chi phi) |
| 2 | Pheu chuyen doi | Funnel chart | Buoc pheu | So luong | Tu Impression → Khach hang |
| 3 | CPMess theo tuan | Bar chart | Tuan 1–4 | VND | Them duong muc tieu (dashed line) |
| 4 | Phan bo ngan sach | Pie chart | — | % | Theo kenh (Meta, TikTok, Google, Content) |
| 5 | So sanh thang nay vs thang truoc | Grouped bar chart | Chi so | Gia tri | 2 mau: xanh (thang nay), xam (thang truoc) |

**Tool khuyen dung:** Google Sheets/Looker Studio (mien phi), Canva (trinh bay dep).

---

## Template bao cao tuan (rut gon)

Bao cao tuan ngan gon hon bao cao thang — chi giu phan 1, 4, 5:

```markdown
# Bao Cao Tuan [X]: [DD/MM–DD/MM/YYYY]

## Ket qua nhanh
| Chi so | Muc tieu tuan | Thuc te | vs Tuan truoc | Danh gia |
|--------|-------------|---------|---------------|---------|
| Chi phi | | | | |
| Tin nhan | | | | |
| CPMess | | | | |
| Lead | | | | |
| Booking | | | | |
| Khach | | | | |
| Doanh thu | | | | |

## Tot / Chua tot
- TOT: [1–2 diem]
- CHUA TOT: [1–2 diem]

## Hanh dong tuan toi
| # | Viec | Nguoi | Deadline |
|---|------|-------|---------|
| 1 | | | |
| 2 | | | |
| 3 | | | |
```

---

## Lien ket skill lien quan

- **03-danh-gia-hieu-suat** — Dung de phan tich sau tung kenh truoc khi tong hop vao bao cao
- **10-tinh-kpi-nguoc** — Tinh lai muc tieu thang toi dua tren ket qua thang nay
- **00-ke-hoach-mkt** — Ke hoach thang toi la ban cap nhat cua ke hoach tong
- **13-phan-tich-du-lieu** — Khi can di sau vao du lieu de tim root cause

---

## Checklist chat luong

Kiem tra truoc khi giao bao cao:

- [ ] Co executive summary — doc 1 phut la hieu tinh hinh
- [ ] Nhan dinh TRUOC, so lieu MINH HOA — khong liet ke so lieu roi
- [ ] Moi chi so co it nhat 1 khung so sanh (vs muc tieu / vs ky truoc / vs benchmark)
- [ ] Co du lieu tuan-by-tuan (khong chi co tong thang)
- [ ] Co top 3 ads tot + top 3 ads kem (voi so lieu cu the)
- [ ] Co pheu chuyen doi — chi ro nut that co chai
- [ ] Chan doan co nguyen nhan goc (root cause), khong chi mo ta hien tuong
- [ ] De xuat hanh dong co deadline va nguoi phu trach — khong chung chung
- [ ] Co ke hoach thang toi voi muc tieu va ngan sach
- [ ] Khong co so lieu khong nguon (moi so lieu phai tu dashboard hoac bao cao cu the)
- [ ] Bieu do (neu co) co dac ta ro rang de team design tao
- [ ] Do dai toan bao cao: doc het trong 5 phut — cat bo phan du thua
