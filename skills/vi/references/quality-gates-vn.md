# Quality Gates VN — Quy Tac Khong Bao Gio Vi Pham

> **Reference file** — Load khi dung `03-danh-gia-hieu-suat`, `21-audit-ads-performance`, `10-tinh-kpi-nguoc`.
> Adapted tu claude-ads/references cho thi truong Viet Nam 2025-2026.
>
> **Dinh nghia:** Quality Gates la HARD RULES — vi pham bat ky dieu nao = danh dau CRITICAL, fix truoc toan bo.

---

## Gate 1 — 3x Kill Rule (Quy tac Dung ngay)

**Quy tac:** Bat ky ad set nao co CPA > 3x muc tieu CPA = **PAUSE NGAY**

```
Neu: CPA thuc te > 3 × CPA muc tieu
→ Pause ad set
→ Phan tich root cause (creative? audience? bid?)
→ Test lai voi creative/audience moi
→ Chi bat lai khi co hypothesis ro rang
```

**Vi du VN:**
- CPA muc tieu (CPMess): 25K
- CPA nguong pause: > 75K
- Spend hien tai truoc khi pause: 200K (8 mess × 25K = tieu chuan; neu spend 200K ma chi 3 mess = 66K/mess → PAUSE)

> Tai sao 3x? Vi du tu data VN: neu chay 2x thi qua that tho, nhieu ad set kha co the phuc hoi. Neu >3x, goc nhin kinh doanh roi: chi 66K de doi 1 tin nhan + ti le chuyen doi 50% = 132K/khach. Voi AOV spa 500K, LTV 2 trieu, nguong nay con chap nhan duoc. Nhung neu chay tiep tren 3x, lua dot chi phi qua nhanh.

---

## Gate 2 — Budget Sufficiency (Du Ngan Sach Cho Learning)

**Quy tac:** Moi ad set can it nhat **5x CPA muc tieu/ngay** de Meta hoc du lieu.

```
Ngan sach toi thieu moi ad set/ngay = 5 × CPA muc tieu

Vi du:
  CPMess muc tieu: 30K
  Ngan sach toi thieu: 5 × 30K = 150K/ngay/ad set
```

**Hau qua khi sai:**
- Ad set ngan sach qua thap → Meta khong du du lieu → Learning Phase keo dai → Performance khong on dinh
- Dung qua nhieu ad set nho (50K/ad set) thay vi it ad set du (200K/ad set) = **sai lam pho bien nhat cua SME VN**

**Khuyen nghi theo quy mo:**
| Ngan sach ads/thang | So ad set nen chay |
|--------------------|--------------------|
| Duoi 10 trieu | 1-2 ad set |
| 10-30 trieu | 2-4 ad set |
| 30-80 trieu | 4-8 ad set |
| 80-200 trieu | 8-15 ad set |
| Tren 200 trieu | 15+ ad set (co team quan ly) |

---

## Gate 3 — Learning Phase Protection (Bao Ve Giai Doan Hoc)

**Quy tac:** KHONG chinh sua bat ky ad set nao dang o trang thai "Learning" neu khong can thiet.

```
Learning Phase triggers:
- Ad set moi (0-7 ngay dau, chua du 50 ket qua/tuan)
- Sau khi chinh sua (thay creative, audience, bid, budget tang > 20%)

Trong Learning Phase → KHONG:
  × Thay creative
  × Thay audience  
  × Tang/giam budget > 20%/lan
  × Thay bid strategy
  × Them/bot text trong primary text

Trong Learning Phase → CO THE:
  ✓ Them creative moi (khong xoa cai cu)
  ✓ Them asset vao RSA (Google)
  ✓ Theo doi, ghi chu, chung no hoc
```

**Bao lau Learning Phase?**
- Meta: 7 ngay hoac 50 ket qua toi uu hoa (tuy dieu kien nao den truoc)
- TikTok: 7-14 ngay hoac 50 conversion
- Google: 2-4 tuan sau thay doi lon

---

## Gate 4 — Pixel/Tracking Integrity (Du Lieu Chuan Xac)

**Quy tac:** KHONG toi uu hoa quang cao khi tracking co van de.

```
Kiem tra truoc khi chay:
□ Meta Pixel → dang fire Event Matches Quality > 6.0?
□ Conversion API (CAPI) → da setup? EMQ > 7.0?
□ Google Analytics 4 → da link voi Google Ads?
□ UTM parameter → tat ca URL quang cao co utm_source/medium/campaign?

Neu bat ky dieu tren = KHONG → Fix tracking truoc, khong chay ads
```

**Dau hieu tracking co van de:**
- Bao cao Meta va bao cao Shopee/web chech nhau > 20%
- Conversion count = 0 trong 3 ngay dau (trong khi co don thuc)
- Event "Purchase" fire nhieu hon so don thuc (duplicate)
- Session tu quang cao trong GA4 qua thap so voi Ads dashboard

---

## Gate 5 — Andromeda Creative Diversity (Da Dang Thuc Su)

**Quy tac:** Tai khoan Meta phai co it nhat **10 creative THUC SU KHAC BIET** — khong phai bien the cung noi dung.

```
Vi pham Andromeda:
× 20 video cung hook, chi thay mau background
× 15 anh product cung goc chup, chi thay text overlay
× 10 video cung noi dung, chi cat ngan/dai

Dat chuan:
✓ It nhat 3 hook KHAC NHAU (pain, to mo, aspiration)
✓ It nhat 2 format KHAC NHAU (video doc + anh vuong)
✓ It nhat 2 nhan vat KHAC NHAU (founder, KOC, khach hang)
✓ It nhat 2 boi canh KHAC NHAU (studio, ngoai canh)
```

**Meta Creative Similarity Score:**
- < 40%: An toan
- 40-60%: Canh bao — kiem lai
- > 60%: Andromeda cluster → giam delivery tu dong

---

## Gate 6 — Compliance Check (Tuan Thu Chinh Sach)

**Quy tac:** Tat ca quang cao trong nganh dac biet PHAI duoc kiem tra truoc khi chay.

```
Nganh dac biet tai VN → Meta/Google han che:
□ Y te / Phong kham / Tham my y te
□ Thuc pham chuc nang / Supplement
□ Tai chinh / Cho vay
□ Bat dong san
□ Ruou / Bia
□ Cay bac / Xo so

Quy trinh khi co nganh dac biet:
1. Kiem tra Policy cua tung nen tang
2. Chuan bi giay to (giay phep kinh doanh, may khoa)
3. Test ad set voi budget nho (200K) truoc khi scale
4. Khong cam ket ket qua truoc khi ad duoc approve
```

---

## Gate 7 — TikTok Sound-On Rule

**Quy tac:** KHONG chay video quang cao tren TikTok khong co am thanh/nhac.

```
TikTok = sound-on platform (90%+ nguoi dung bat am thanh)

Bat buoc:
✓ Nhac nen phu hop voi noi dung
✓ Giong noi (voiceover) hoac am thanh tu nhien
✓ Text overlay PHAI co am thanh tuong ung
✓ Captions cho video noi nhieu

Khong duoc:
× Video im lang hoan toan
× Chi dung text overlay, khong co am thanh
```

---

## Gate 8 — Scale Speed Limit (Toc Do Tang Ngan Sach)

**Quy tac:** KHONG tang ngan sach quang cao nhanh hon **20%/lan/72h**.

```
Sai lam pho bien:
  Thu 2: Ngan sach 100K/ngay, chay tot (ROAS 5x)
  Thu 4: Tang len 500K/ngay (+400%) → Performance sup ngay

Cach dung:
  Thu 2: 100K/ngay
  Thu 4: 120K/ngay (+20%)
  Thu 6: 144K/ngay (+20%)
  T2 tuan sau: 173K/ngay (+20%)
  ...
```

**Ly do:** Meta reset hoc lieu khi budget thay doi > 20% → quay lai Learning Phase → Performance giam tam thoi.

---

## Gate 9 — Minimum Data Before Conclusion

**Quy tac:** KHONG ket luan hieu qua/kem khi chua du du lieu.

```
Du lieu toi thieu de ket luan:
  - Facebook/Instagram ad: 1,000 impression VÀ 50 click
  - TikTok ad: 500 view VÀ 30 click
  - Google Search ad: 100 click VÀ 7 ngay
  - A/B test: Du lieu thong ke (MDE, p < 0.05)

Thoi gian toi thieu truoc khi ket luan:
  - Meta: 3-5 ngay
  - TikTok: 3-5 ngay
  - Google: 7-14 ngay (data delay)
```

---

## Gate 10 — LTV > CAC Viability Check

**Quy tac:** Chi SCALE khi LTV:CAC >= 3:1.

```
LTV (Lifetime Value) = AOV × So lan mua trong 12 thang × Ti le giu khach
CAC (Customer Acquisition Cost) = Tong chi phi MKT / So khach moi

Nguong:
  LTV:CAC < 1:1   → Dang mat tien, khong the scale
  LTV:CAC 1-2:1   → Hoa von — chua profitable, kiem tra churn
  LTV:CAC 2-3:1   → OK — co the scale vua phai
  LTV:CAC > 3:1   → Tot — scale manh
  LTV:CAC > 5:1   → Xuat sac — scale toan luc
```

**Vi du VN Spa:**
- AOV: 500K
- So lan mua/nam: 6 (moi thang 1 lieu trinh nho)
- Ti le giu 12 thang: 40%
- LTV = 500K × 6 × 40% = 1,200K (1.2 trieu)
- CAC muc tieu: < 400K (LTV:CAC = 3:1)

---

## Tong hop — Checklist Quick Gates

Truoc bat ky khuy en nghi scale hoac toi uu nao, kiem tra:

- [ ] **Gate 1** — Ad set nao co CPA > 3x? → Pause truoc
- [ ] **Gate 2** — Moi ad set co it nhat 5x CPA muc tieu/ngay?
- [ ] **Gate 3** — Co ad set nao dang Learning? → Khong cham vao
- [ ] **Gate 4** — Pixel/CAPI firing chinh xac, khong duplicate?
- [ ] **Gate 5** — Co it nhat 10 creative thuc su khac biet tren Meta?
- [ ] **Gate 6** — Nganh co rui ro compliance? → Da kiem tra chua?
- [ ] **Gate 7** — TikTok video co am thanh? (neu dung TikTok)
- [ ] **Gate 8** — Tang ngan sach khong qua 20%/lan?
- [ ] **Gate 9** — Du du lieu de ket luan? (it nhat 1,000 impression)
- [ ] **Gate 10** — LTV:CAC >= 3:1 truoc khi scale?
