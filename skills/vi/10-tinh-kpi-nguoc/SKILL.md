---
name: 10-tinh-kpi-nguoc
description: Tinh KPI nguoc tu doanh thu ve ngan sach va tinh xuoi tu ngan sach ra doanh thu — 3 kich ban, sensitivity analysis, break-even, phan bo ngan sach theo giai doan va kenh
metadata:
  version: 2.0.0
  category: performance
triggers:
  - "tinh KPI"
  - "can bao nhieu ngan sach"
  - "tinh nguoc tu doanh thu"
  - "ngan sach de dat X don"
  - "budget calculator"
  - "KPI calculator"
output: File .md gom bang tinh 3 kich ban, phan tich do nhay, break-even, phan bo ngan sach theo giai doan + kenh, va timeline ROI
related:
  - 00-ke-hoach-mkt
  - 07-bao-cao-marketing
  - 03-danh-gia-hieu-suat
  - 08-nghien-cuu-doi-thu
---

# Tinh KPI Nguoc

## Thu thap thong tin

Hoi user toi da 4 cau sau truoc khi bat dau:

1. **Muc tieu la gi?** (Doanh thu X trieu/thang? Hay ngan sach co san X trieu va muon biet duoc bao nhieu don?)
2. **San pham / dich vu va gia ban?** (Gia trung binh 1 don hang — AOV)
3. **Nganh hang va kenh hien tai?** (Nganh gi? Dang chay kenh nao? Co du lieu CPMess/CPL hien tai khong?)
4. **Thoi gian chien dich?** (1 thang? 3 thang? 6 thang? Co pha theo giai doan khong?)

---

## 2 huong tinh

### Huong 1 — Tinh nguoc (Reverse): Tu doanh thu → Ngan sach

Dung khi: "Toi muon dat 200 trieu/thang — can bao nhieu tien ads?"

```
Doanh thu muc tieu
  / AOV (gia tri don trung binh)
  = SO DON CAN
  / Ti le Booking→Customer
  = SO BOOKING CAN
  / Ti le Lead→Booking
  = SO LEAD CAN
  / Ti le Mess→Lead
  = SO TIN NHAN CAN
  x CPMess
  = NGAN SACH ADS CAN
```

### Huong 2 — Tinh xuoi (Forward): Tu ngan sach → Doanh thu

Dung khi: "Toi co 50 trieu — chay duoc bao nhieu don?"

```
Ngan sach
  / CPMess
  = SO TIN NHAN DU KIEN
  x Ti le Mess→Lead
  = SO LEAD DU KIEN
  x Ti le Lead→Booking
  = SO BOOKING DU KIEN
  x Ti le Booking→Customer
  = SO DON DU KIEN
  x AOV
  = DOANH THU DU KIEN
```

---

## Benchmark Vietnam 2025–2026

### Ti le chuyen doi theo nganh

| Buoc | Trung binh chung | Beauty & Spa | F&B | Education | E-commerce | BDS |
|------|-----------------|-------------|-----|-----------|-----------|-----|
| Mess→Lead | 50–60% | 55–65% | 45–55% | 40–50% | N/A | 35–45% |
| Lead→Booking | 50–60% | 55–65% | 40–55% | N/A | N/A | 10–20% |
| Booking→Customer | 30–40% | 40–55% | N/A | 5–15% | 1–3% | 5–15% |
| Customer→Re-purchase (90d) | 15–25% | 20–35% | 25–40% | N/A | 10–20% | N/A |

### CPMess / CPL theo kenh

| Kenh | CPMess Kem | CPMess TB | CPMess Tot | CPMess Xuat sac |
|------|-----------|----------|-----------|----------------|
| Meta (Facebook + IG) | >40K | 25–40K | 18–25K | <18K |
| TikTok | >45K | 28–45K | 20–28K | <20K |
| Google (CPL) | >200K | 85–150K | 50–85K | <50K |
| Zalo (CPMess broadcast) | N/A | ~500d/mess | ~300d/mess | <200d/mess |

### Luu y mua vu

| Thoi diem | Anh huong CPM |
|-----------|-------------|
| Tet Nguyen Dan (T1–T2) | +30–50% |
| Black Friday / 11.11 / 12.12 | +20–30% |
| He (T6–T8) | +10–15% |
| Thang binh thuong | Baseline |

---

## Bang tinh 3 kich ban

### Cau truc 3 kich ban

| Chi so | Pessimistic (Xau) | Base (Co so) | Optimistic (Tot) |
|--------|-------------------|-------------|------------------|
| CPMess | TB nganh + 30% | TB nganh | TB nganh - 20% |
| Mess→Lead | TB nganh - 15% | TB nganh | TB nganh + 15% |
| Lead→Booking | TB nganh - 10% | TB nganh | TB nganh + 10% |
| Booking→Customer | TB nganh - 10% | TB nganh | TB nganh + 10% |

### Template bang tinh (vi du: Spa, AOV 500K, muc tieu 200 trieu/thang)

| Buoc | Pessimistic | Base | Optimistic |
|------|-------------|------|-----------|
| Doanh thu muc tieu | 200,000,000 | 200,000,000 | 200,000,000 |
| AOV | 500,000 | 500,000 | 500,000 |
| **So don can** | **400** | **400** | **400** |
| Booking→Customer | 36% | 45% | 55% |
| **So booking can** | **1,111** | **889** | **727** |
| Lead→Booking | 47% | 60% | 69% |
| **So lead can** | **2,364** | **1,481** | **1,054** |
| Mess→Lead | 47% | 60% | 69% |
| **So tin nhan can** | **5,030** | **2,469** | **1,527** |
| CPMess | 39,000 | 30,000 | 24,000 |
| **Ngan sach ads** | **196,170,000** | **74,070,000** | **36,648,000** |
| **ROAS du kien** | **1.02x** | **2.70x** | **5.46x** |

### Doc ket qua

- Pessimistic: Can ~196 trieu ads cho 200 trieu doanh thu — ROAS <1, lo
- Base: Can ~74 trieu ads — ROAS 2.7x, chap nhan duoc
- Optimistic: Can ~37 trieu ads — ROAS 5.5x, rat tot

**Dung so Base de lap ke hoach. Dung so Pessimistic de du phong. Dung so Optimistic de dat muc tieu toi uu.**

---

## Sensitivity Analysis (Phan tich do nhay)

Bien nao anh huong nhieu nhat? Tang/giam 10% moi bien va xem ngan sach thay doi bao nhieu:

### Template

| Bien | Gia tri Base | Thay doi +10% | Ngan sach moi | Thay doi ngan sach |
|------|-------------|--------------|--------------|-------------------|
| CPMess | 30K | 33K | +10% | **Truc tiep 1:1** |
| Mess→Lead | 60% | 66% | -9% | **Anh huong lon** |
| Lead→Booking | 60% | 66% | -9% | **Anh huong lon** |
| Booking→Customer | 45% | 49.5% | -9% | **Anh huong lon** |
| AOV | 500K | 550K | -9% (it don hon) | Gian tiep |

### Nhan dinh

**Quy tac 80/20:** Thuong 2 bien anh huong nhieu nhat la:
1. **CPMess** — phu thuoc creative + targeting → toi uu bang A/B test ads
2. **Mess→Lead** — phu thuoc chat luong tu van → toi uu bang script chot + toc do reply

**Bien de cai thien nhat:** [Xep hang tu de den kho]
| Bien | Muc do cai thien | Cach cai thien |
|------|------------------|---------------|
| CPMess | De — test creative | A/B test 3–5 creative/tuan, doi hook, doi format |
| Mess→Lead | De — cai script | Training team, script chuan, reply <5 phut |
| Lead→Booking | Trung binh — cai quy trinh | Follow-up 3 lan, noi dung nurture, uu dai |
| Booking→Customer | Kho — cai trai nghiem | Chat luong dich vu, first impression, upsell |

---

## Break-even (Diem hoa von)

### Cong thuc

```
Break-even don = Chi phi co dinh / (AOV - Chi phi bien doi moi don)
Break-even ngay = Break-even don / So don trung binh moi ngay
```

### Template break-even

| Hang muc | Gia tri |
|---------|---------|
| **Chi phi co dinh/thang** | |
| — Ngan sach ads | [X] |
| — Content production | [X] |
| — Nhan su MKT | [X] |
| — Tool (CRM, email, design) | [X] |
| — UGC/KOL | [X] |
| **Tong chi phi co dinh** | **[X]** |
| **AOV** | [X] |
| **Chi phi bien doi/don** | [X] (van chuyen, hoa hong, COGS) |
| **Loi nhuan/don** | AOV - Chi phi bien doi = [X] |
| **Break-even don** | Tong CF co dinh / Loi nhuan moi don = **[X don]** |
| **Break-even ngay** | Break-even don / 30 = **[X ngay]** |

### Danh gia

| Ket qua | Y nghia | Hanh dong |
|---------|---------|----------|
| Break-even < 50% so don du kien | An toan — du bien do loi nhuan | Co the scale ngan sach |
| Break-even = 50–80% so don du kien | Chat — it du bien do | Toi uu chi phi truoc khi scale |
| Break-even > 80% so don du kien | Rui ro cao — de lo | Giam chi phi hoac tang AOV |

---

## Phan bo ngan sach theo giai doan

### 4 giai doan chien dich

| Giai doan | % Ngan sach | Thoi gian | Muc dich | KPI chinh |
|-----------|-----------|-----------|----------|----------|
| **Teasing** | 15% | Tuan 1 | Gay to mo, xay awareness | Reach, Video View, Save |
| **Bung nhe** | 20% | Tuan 2 | Test creative, thu lead dau tien | CPMess, Lead, A/B test |
| **Bung manh** | 40% | Tuan 3–4 | Scale creative thang, chot don | ROAS, So don, Revenue |
| **Duy tri** | 25% | Tuan 5+ | Retarget, nurture, re-purchase | CPA, LTV, Retention |

### Template phan bo

Vi du: Ngan sach 80 trieu/thang

| Giai doan | % | So tien | Tuan | Ngan sach/ngay |
|-----------|---|--------|------|---------------|
| Teasing | 15% | 12,000,000 | Tuan 1 (7 ngay) | 1,714,000/ngay |
| Bung nhe | 20% | 16,000,000 | Tuan 2 (7 ngay) | 2,286,000/ngay |
| Bung manh | 40% | 32,000,000 | Tuan 3–4 (14 ngay) | 2,286,000/ngay |
| Duy tri | 25% | 20,000,000 | Tuan 5+ (con lai) | Tuy so ngay |

---

## Phan bo ngan sach theo kenh

### Khuyen nghi theo nganh

| Kenh | Beauty/Spa | F&B | Education | E-commerce | BDS |
|------|-----------|-----|-----------|-----------|-----|
| Meta (Facebook + IG) | 50–60% | 40–50% | 45–55% | 35–45% | 50–60% |
| TikTok | 25–35% | 30–40% | 20–30% | 35–45% | 10–20% |
| Google | 10–15% | 5–10% | 20–30% | 15–20% | 25–35% |
| Zalo OA | 5–10% | 5–10% | 5–10% | 0–5% | 5–10% |

### Nguyen tac phan bo

1. **Kenh da chung minh hieu qua → 60–70% ngan sach.** Khong dan deu.
2. **Kenh moi / test → 15–20% ngan sach.** Du de co du lieu, khong qua nhieu de mat tien.
3. **Retarget → 10–15% ngan sach.** Nham lai nguoi da tuong tac — thuong ROAS cao nhat.
4. **Chuyen kenh khi ROAS < 2x sau 2 tuan.** Khong cho doi qua lau.

### Template phan bo thang

| Kenh | % Ngan sach | So tien | KPI muc tieu | KPI do luong |
|------|-----------|--------|-------------|-------------|
| Meta — Reach/Awareness | [X]% | | Reach, Video View | CPM, CPV |
| Meta — Conversion | [X]% | | Mess, Lead | CPMess, CPL |
| Meta — Retarget | [X]% | | Don hang | ROAS, CPA |
| TikTok — Reach | [X]% | | View, Follower | CPV, Cost/Follower |
| TikTok — Conversion | [X]% | | Mess, Lead | CPMess |
| Google — Search | [X]% | | Click, Lead | CPC, CPL, Conv rate |
| Zalo OA | [X]% | | Read, Click | Cost/mess, Read rate |
| **Tong** | **100%** | | | |

---

## ROI Projection Timeline

### Khi nao thay ket qua?

| Giai doan | Thoi gian | Ky vong | Chi so theo doi |
|-----------|-----------|---------|----------------|
| Testing | Tuan 1–2 | Chua co don, dang test creative + audience | CPM, CTR, CPMess |
| First results | Tuan 3–4 | Don dau tien, ROAS con thap | So mess, so lead, don dau |
| Optimization | Thang 2 | ROAS cai thien, bat dau on dinh | ROAS, CPA |
| Scale | Thang 3+ | ROAS on dinh, tang ngan sach co kiem soat | ROAS duy tri, Revenue tang |
| Mature | Thang 6+ | he thong tu chay, co data du de forecast | LTV, Retention, Organic % |

### Quy tac ngon tay cai

| Quy tac | Giai thich |
|---------|-----------|
| 2 tuan dau = mat tien | Day la chi phi hoc — dung hoang, dung tat ads |
| ROAS Base dat o thang 2 | Thang 1 la thang test — khong danh gia ROAS thang 1 |
| Tang ngan sach toi da 20%/tuan | Tang nhanh hon = performance giam, CPM tang |
| ROAS giam 30% khi scale | Binh thuong — audience rong hon = ti le chuyen doi thap hon |
| Retarget ROAS cao gap 2–3x Prospecting | Dung de nham, retarget luon la kenh ROAS tot nhat |

---

## Cross-reference

- Can ke hoach tong the chua? → Dung `00-ke-hoach-mkt` truoc, roi quay lai tinh KPI
- Can bao cao hieu suat hien tai de dieu chinh? → Dung `03-danh-gia-hieu-suat` hoac `07-bao-cao-marketing`
- Can biet doi thu chi bao nhieu? → Dung `08-nghien-cuu-doi-thu`
- Can hieu khach hang de tinh ti le chuyen doi chinh xac hon? → Dung `09-insight-khach-hang`
- Can phan tich du lieu sau khi chay? → Dung `13-phan-tich-du-lieu`

---

## Checklist chat luong

Truoc khi giao bao cao, kiem tra:

- [ ] Da xac dinh dung huong tinh (nguoc tu doanh thu hay xuoi tu ngan sach)
- [ ] Benchmark dung nganh, dung kenh — khong dung so chung
- [ ] Co du 3 kich ban: Pessimistic, Base, Optimistic
- [ ] Sensitivity analysis chi ra bien nao anh huong nhieu nhat + cach cai thien
- [ ] Break-even duoc tinh va danh gia muc do rui ro
- [ ] Phan bo ngan sach theo giai doan co timeline cu the (tuan/thang)
- [ ] Phan bo kenh co ty le phu hop voi nganh va muc tieu
- [ ] ROI timeline thuc te — khong hua ROAS cao tu tuan 1
- [ ] Tong ngan sach khop giua cac bang (giai doan + kenh + tong = khop nhau)
- [ ] Co ghi chu mua vu neu chien dich roi vao dip dac biet (Tet, 11.11, etc.)
