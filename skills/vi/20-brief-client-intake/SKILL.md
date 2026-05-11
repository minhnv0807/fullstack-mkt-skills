---
name: 20-brief-client-intake
description: Tao brief khach hang dien cho agency (client intake form) — form thu thap thong tin dau vao chi tiet de agency lap ke hoach marketing chinh xac. Co 20 variants chuyen biet theo nganh — moi variant la full brief toi uu hoa cho dac thu nganh do.
metadata:
  version: 1.0.0
  category: operations
triggers:
  - "brief khach hang"
  - "brief khach dien"
  - "form khach hang"
  - "client intake"
  - "client brief"
  - "intake form"
  - "form thu thap thong tin khach"
  - "brief input"
  - "questionnaire khach hang"
output: File .md chua brief 11 phan (A-K) toi uu hoa theo nganh. Khach hang dien xong gui lai cho agency lam input cho cac skill chien luoc (00, 02, 08, 09, 10).
related:
  - 00-ke-hoach-mkt
  - 02-brief-chien-dich
  - 08-nghien-cuu-doi-thu
  - 09-insight-khach-hang
  - 10-tinh-kpi-nguoc
---

# Brief Client Intake — Form khach hang dien cho agency

> **Vai tro skill:** Nay la "INPUT GATE" cua moi project marketing.
> Khac voi 02-brief-chien-dich (agency soan cho team), 06-brief-ugc-egc (agency soan cho creator), 12-brief-landing-page (agency soan cho dev) — skill 20 nay la **form khach hang dien CHO agency** de cung cap thong tin dau vao.

---

## Khi nao dung skill nay?

| Tinh huong | Dung skill 20? |
|-----------|---------------|
| Khach hang moi lien he, can thu thap thong tin truoc khi quote | YES |
| Bat dau project mar moi, can du lieu input chi tiet | YES |
| Re-brief khi khach mo rong scope hoac thay doi muc tieu | YES |
| Onboarding khach retainer dai han | YES |
| Da co du thong tin tu meeting → di thang sang 00-ke-hoach-mkt | NO |

---

## Thu thap thong tin truoc khi tao brief

Hoi user (agency/marketing lead) toi da 4 cau:

1. **Khach hang nganh gi?** (Spa, F&B, Healthcare, Education, Fashion, SaaS, Real Estate, ...)
2. **Quy mo khach hang?** (Local 1 chi nhanh / Chuoi / SME / Enterprise)
3. **Loai project?** (Khai truong / Re-launch / Scale / Retainer dai han / 1-shot campaign)
4. **Hinh thuc gui brief?** (Email file .md / In giay hop offline / Google Form / Notion)

---

## Co che detect nganh → load variant

Skill nay co **20 variants** trong folder `variants/`. Moi variant la **FULL BRIEF** (11 phan A-K) duoc toi uu hoa cho dac thu nganh do — KHONG phai chi override vai cau.

### Mapping ten file → nganh

| # | File variant | Nganh ap dung |
|---|-------------|---------------|
| **NHOM 1 — LOCAL SERVICE** | | |
| 01 | `01-spa-beauty.md` | Spa, Beauty Salon, Nail, Tham my khong xam lan |
| 02 | `02-fnb-restaurant.md` | Nha hang, Quan cafe, Bakery, Quan an |
| 03 | `03-healthcare-clinic.md` | Phong kham, Nha khoa, Phong kham nhi, Phong kham da khoa |
| 04 | `04-fitness-gym-yoga.md` | Gym, Yoga, Pilates, Boxing, Studio fitness |
| 05 | `05-education-center.md` | Trung tam tieng Anh, Trung tam ky nang, Day nghe, Mam non |
| 06 | `06-wedding-photography.md` | Studio cuoi, Ao cuoi, Chup anh kid/family, To chuc tiec |
| 07 | `07-pet-service.md` | Spa thu cung, Pet shop, Pet hotel, Pet clinic |
| **NHOM 2 — PRODUCT/ECOMMERCE** | | |
| 08 | `08-fashion.md` | Thoi trang nam/nu, Tui xach, Giay dep, Phu kien |
| 09 | `09-cosmetics-skincare.md` | My pham, Skincare, Makeup, Tinh chat |
| 10 | `10-fnb-product.md` | Banh, Do uong dong goi, Dac san, Healthy food |
| 11 | `11-mom-baby.md` | Bim sua, Quan ao tre em, Do choi, Sua bot |
| 12 | `12-home-living.md` | Noi that, Gia dung, Decor, Bep |
| 13 | `13-health-supplement.md` | TPCN, Collagen, Vitamin, Detox, Yen sao |
| **NHOM 3 — B2B/SERVICE ONLINE** | | |
| 14 | `14-saas-software.md` | SaaS, App, Tool online, Platform B2B |
| 15 | `15-agency-consulting.md` | Mar agency, Design agency, Tu van DN, Ke toan |
| 16 | `16-online-course.md` | Khoa hoc online, Coaching, Mentor, Training |
| **NHOM 4 — HIGH-TICKET / LONG SALES CYCLE** | | |
| 17 | `17-real-estate.md` | Du an BDS, Moi gioi BDS, Cho thue van phong |
| 18 | `18-auto-vehicle.md` | O to, Xe may, Phu tung xe, Showroom |
| 19 | `19-travel-resort.md` | Resort, Khach san, Tour, Homestay, Tour du lich |
| 20 | `20-aesthetic-clinic.md` | Tham my vien, Phong kham TM cao cap, Botox/Filler |

### Logic detect

```
1. User noi nganh ro rang (VD: "khach Spa") → Load variant tuong ung
2. User noi mo ho (VD: "khach lam ve dep") → Hoi xac nhan: "Spa truyen thong, Tham my vien cao cap, hay My pham?"
3. User noi nganh chua co variant → Dung template chung trong SKILL.md nay + custom theo y user
4. Khach co nhieu nganh kinh doanh → Tao multiple briefs, moi nganh 1 file
```

---

## Cau truc chung 11 phan (A-K) — ap dung cho moi variant

Day la khung suon. Moi variant trong `variants/` se:
- Giu nguyen 11 phan A-K
- Override **noi dung tung phan** cho dac thu nganh
- Them cau hoi/section dac biet ne 1 nganh can (VD: phap ly cho Healthcare, financing cho Auto)

### A. THONG TIN DOANH NGHIEP
Brand basic, founder story, philosophy, cam ket

### B. SAN PHAM & DICH VU
Phan khuc, danh muc, gia, USP, combo/bundle

### C. KHACH HANG MUC TIEU
Demographics, psychographics, behavior, persona

### D. CANH TRANH & VI THE
Doi thu truc tiep, gian tiep, thu cap, dinh vi mong muon

### E. MUC TIEU CHIEN DICH
Ngay launch, KPI cu the, KPI dai han

### F. NGAN SACH & TIMELINE
Tong ngan sach, phan bo, timeline tong

### G. NGUON LUC HIEN CO
Team in-house, co so vat chat, EGC readiness

### H. TAI SAN SO HIEN CO
Cac kenh dang co, website, database khach

### I. YEU CAU SANG TAO
Tone, brand inspiration, do/don't, rang buoc phap ly

### J. DELIVERABLES MONG MUON
Strategy, creative, vanh hanh, bao cao

### K. THONG TIN BO SUNG
Tai lieu dinh kem, cau hoi, thong tin them

---

## Cach skill chay

### Buoc 1 — Detect nganh
Tu input cua user, xac dinh nganh va load variant tuong ung.

### Buoc 2 — Tao file output
- Ten file: `brief-client-intake-[ten-khach-hoac-nganh]-[YYYYMMDD].md`
- Vi du: `brief-client-intake-spa-luna-20260428.md`
- Luu vao thu muc lam viec hien tai

### Buoc 3 — Render full brief
Render toan bo noi dung variant + customize them theo thong tin user da cung cap.

### Buoc 4 — Huong dan gui khach
Cuoi file co Next Steps:
- Hinh thuc gui (Email/Zalo/Google Form/in giay)
- Han nop (mac dinh 5-7 ngay)
- Lich review brief sau khi nhan
- Lich len plan v1

### Buoc 5 — Auto-trigger downstream
Sau khi khach dien xong va gui lai, tu dong de xuat:
```
20-brief-client-intake (HOAN THANH input)
  |
  |-- [Tiep theo 1] 09-insight-khach-hang  → Khai thac sau persona tu Phan C
  |-- [Tiep theo 2] 08-nghien-cuu-doi-thu  → Phan tich doi thu tu Phan D
  |-- [Tiep theo 3] 10-tinh-kpi-nguoc       → Tinh KPI nguoc tu muc tieu Phan E
  |-- [Tiep theo 4] 00-ke-hoach-mkt        → Tong hop thanh ke hoach mar
  |-- [Tiep theo 5] 02-brief-chien-dich    → Brief chien dich cu the
```

---

## Nguyen tac thiet ke brief (universal)

### 1. Friendly cho khach khong chuyen mar
- Khong dung jargon (TOFU, ROAS, CPA) tru khi giai thich
- Co goi y vi du moi cau hoi
- Co option "Chua quyet — can tu van" — khach khong biet ko phai bo trong

### 2. Cau hoi co cau truc, khong viet tu luan
- Uu tien checkbox/radio button → de ky
- Bang ke 2-3 cot → de dien tren mobile
- Truong text dai chi cho persona/story

### 3. Tu de → kho
- Phan A (info don gian) → phan K (info phuc tap)
- Khach build momentum, khong bi nan tu dau

### 4. Tinh khoang gian dien (UX)
- Toi da 30-45 phut khach dien xong
- Co progress indicator (Phan A/11 → K/11)
- Co tom luoc su dung thong tin nay nhu the nao

### 5. Co commitment cuoi
- Khach ky cam ket cung cap thong tin trung thuc
- Agency cam ket bao mat, dung muc dich
- Timeline ro rang (24h xac nhan, 5-7 ngay co plan v1)

---

## Checklist chat luong (truoc khi gui khach)

### Noi dung
- [ ] Du 11 phan A-K
- [ ] Moi cau hoi co goi y vi du cu the cho nganh
- [ ] Tat ca lua chon dung thuat ngu khach hieu (khong jargon)
- [ ] Co option "Chua quyet — can tu van" o cau dieu kien
- [ ] Ngon ngu match tone agency va khach (sang trong / friendly / chuyen nghiep)

### Cau truc
- [ ] Header co thong tin agency, ngay phat, han nop
- [ ] Tat ca bang co header ro rang
- [ ] Checkbox/radio dung dinh dang Markdown chuan
- [ ] Co Next Steps cuoi file
- [ ] Co commitment va xac nhan cuoi

### Theo nganh
- [ ] Phan B (San pham/Dich vu) co cau hoi dac thu nganh
- [ ] Phan C (Persona) co vi du persona dac thu
- [ ] Phan D (Doi thu) co cau hoi ve mo hinh canh tranh dac thu
- [ ] Phan I (Sang tao) co rang buoc phap ly nganh (neu co)
- [ ] Phan J (Deliverables) co option deliverable dac thu

---

## Lien ket skill

- **`00-ke-hoach-mkt`** — Sau khi nhan brief input, lap ke hoach mar tong the
- **`02-brief-chien-dich`** — Sau khi co plan, viet brief chien dich cu the
- **`08-nghien-cuu-doi-thu`** — Mo rong phan D (Doi thu) thanh research chi tiet
- **`09-insight-khach-hang`** — Mo rong phan C (Persona) thanh insight sau
- **`10-tinh-kpi-nguoc`** — Mo rong phan E (KPI) thanh tinh nguoc chi tiet

---

## References

- `variants/` — 20 file variant chi tiet theo tung nganh
- Project root `brief-khach-hang-spa-le-chan-20260428.md` — Vi du output thuc te (Spa)
