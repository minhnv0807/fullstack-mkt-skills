---
name: 14-email-marketing
description: Thiet lap va van hanh email marketing — welcome series, nurture, promotion, re-engage — toi uu cho thi truong Viet Nam
metadata:
  version: 2.0.0
  category: operations
triggers:
  - "email marketing"
  - "chuoi email"
  - "email tu dong"
  - "welcome email"
  - "email nurture"
  - "email sequence"
  - "Brevo"
  - "thiet lap email"
output: File .md chua chien luoc email marketing day du — sequence template, automation flow, subject line, segmentation, A/B test, va KPI tracking
related:
  - 01-lich-noi-dung
  - 05-copy-quang-cao
  - 09-insight-khach-hang
  - 12-brief-landing-page
  - 15-social-listening
---

# Email Marketing

> Email la kenh so huu — khong phu thuoc thuat toan, khong mat tien tiep can lai nguoi da dang ky.

---

## Thu thap thong tin

Hoi user toi da 4 cau:

1. **San pham/dich vu gi?** Mo ta ngan + doi tuong khach hang.
2. **Muc tieu email?** Thu lead moi, nurture lead cu, ban hang, hay re-engage khach cu?
3. **Da co list email chua?** Bao nhieu subscriber? Da phan loai nhom chua?
4. **Dang dung tool nao?** Brevo, Mailchimp, Kit, hay chua co? Da setup domain chua?

---

## Nguyen tac cot loi

| Nguyen tac | Giai thich |
|------------|-----------|
| Gia tri truoc ban hang | 80% email cung cap gia tri, 20% email ban hang |
| Phan khuc truoc gui | Khong bao gio gui cung 1 email cho toan bo list |
| 1 email = 1 muc dich | Moi email chi co 1 CTA chinh |
| Mobile-first | 70%+ doc email tren dien thoai — thiet ke cho man hinh nho truoc |
| Test lien tuc | A/B test subject line va thoi gian gui moi tuan |
| Ton trong nguoi nhan | Co link unsubscribe ro rang, khong spam |

---

## Cau truc 1 email

| Thanh phan | Gioi han | Vai tro |
|------------|---------|--------|
| Subject line | 50 ky tu (30 ky tu hien thi tren mobile) | Quyet dinh open rate |
| Preview text | 90 ky tu | Bo sung cho subject line, tang open rate |
| Header | Logo + ten thuong hieu | Nhan dien nhanh |
| Body | 150–300 tu (nurture), 100–200 tu (promotion) | Noi dung chinh |
| CTA | 1 CTA chinh, toi da 1 CTA phu | Chuyen doi |
| Footer | Unsubscribe + dia chi + lien he | Tuan thu phap luat |

---

## Cong thuc Subject Line

### 5 cong thuc hieu qua

| Cong thuc | Vi du | Khi dung |
|-----------|------|---------|
| **Curiosity** (To mo) | "Dieu 90% nguoi lam sai khi [chủ de]" | TOFU, nurture |
| **Benefit** (Loi ich) | "[Ket qua] trong [thoi gian] — day la cach" | MOFU, nurture |
| **Urgency** (Khan cap) | "Con 24h — [uu dai] het han ngay mai" | BOFU, promotion |
| **Personalization** (Ca nhan) | "[Ten], minh co thu nay cho ban" | Re-engage, VIP |
| **Number** (So lieu) | "5 buoc de [dat ket qua] — buoc 3 quan trong nhat" | Giao duc, nurture |

### Quy tac subject line

- Viet ngan, khong qua 50 ky tu
- Khong dung ALL CAPS
- Tranh spam trigger: "Mien phi", "100%", qua nhieu dau cham than
- Test 2 subject line moi lan gui (A/B test)
- Preview text phai bo sung, khong lap lai subject line

---

## Phan khuc doi tuong (Segmentation)

### Theo hanh vi

| Nhom | Tieu chi | Email phu hop |
|------|---------|--------------|
| Active | Mo email trong 30 ngay gan nhat | Tat ca loai email |
| Warm | Mo email 31–60 ngay truoc | Nurture + offer nhe |
| Cold | Khong mo email 60+ ngay | Re-engage sequence |
| Engaged | Click link trong 14 ngay | Offer cu the, BOFU |
| New | Dang ky trong 7 ngay | Welcome sequence |

### Theo lich su mua hang

| Nhom | Tieu chi | Email phu hop |
|------|---------|--------------|
| Chua mua | Dang ky nhung chua mua | Nurture → Trial offer |
| Da mua 1 lan | Mua 1 lan, chua quay lai | Re-purchase offer + cross-sell |
| Khach trung thanh | Mua 3+ lan | VIP offer, loyalty, referral |
| Khach cu (Churned) | Mua truoc, khong hoat dong 90+ ngay | Win-back offer |

### Theo muc do quan tam

| Nhom | Tieu chi | Email phu hop |
|------|---------|--------------|
| Quan tam [A] | Click vao noi dung ve [chu de A] | Noi dung sau ve [A] |
| Quan tam [B] | Click vao noi dung ve [chu de B] | Noi dung sau ve [B] |
| Chua xac dinh | Chua click du de phan loai | Survey email hoac noi dung da dang |

---

## Sequence Template

### Welcome Series (3 email — gui khi dang ky moi)

| # | Thoi diem | Subject line | Noi dung chinh | CTA |
|---|----------|-------------|----------------|-----|
| 1 | Ngay lap tuc | "Chao mung [Ten] — day la mon qua cho ban" | Gioi thieu thuong hieu + giao gia tri ngay (ebook, checklist, voucher) | Download/Su dung ngay |
| 2 | +2 ngay | "[Ten], 3 dieu ban nen biet ve [thuong hieu]" | Cau chuyen thuong hieu + gia tri khac biet + social proof | Doc them tren blog/website |
| 3 | +4 ngay | "Cach [thuong hieu] giup [X nguoi] dat duoc [ket qua]" | Case study/Testimonial + CTA den buoc tiep theo | Dat lich / Xem san pham |

### Nurture Sequence (5 email — gui sau Welcome)

| # | Thoi diem | Chu de | Loai noi dung |
|---|----------|--------|--------------|
| 1 | +7 ngay | Giai quyet pain point #1 | Giao duc — chia se kien thuc |
| 2 | +10 ngay | Giai quyet pain point #2 | Giao duc — huong dan cu the |
| 3 | +14 ngay | Social proof manh | Case study + so lieu ket qua |
| 4 | +17 ngay | Soft offer | Gioi thieu san pham/dich vu nhu giai phap |
| 5 | +21 ngay | Hard offer + khan cap | Uu dai co thoi han + CTA manh |

### Re-engage Sequence (3 email — gui cho nhom Cold)

| # | Thoi diem | Subject line | Noi dung chinh | CTA |
|---|----------|-------------|----------------|-----|
| 1 | Ngay 1 | "Lau roi khong gap [Ten] — minh nho ban" | Nhac lai gia tri + hoi co con quan tam khong | Click de tiep tuc nhan email |
| 2 | +3 ngay | "[Ten], day la thu minh danh rieng cho ban" | Offer doc quyen cho nguoi quay lai | Su dung offer |
| 3 | +7 ngay | "Email cuoi cung — ban co muon tiep tuc?" | Thong bao se ngung gui neu khong phan hoi | Click de o lai / Tu dong xoa |

### Promotional (1 email don le hoac chuoi 2–3 email)

| # | Thoi diem | Vai tro |
|---|----------|--------|
| 1 | 3 ngay truoc | Thong bao — "Sap co uu dai dac biet" |
| 2 | Ngay khai truong | Offer chinh — gia, loi ich, deadline, CTA |
| 3 | 24h truoc het han | Nhac nho — "Con 24h" + khan cap |

### Transactional (tu dong theo hanh dong)

| Trigger | Email | Noi dung |
|---------|-------|---------|
| Dat hang thanh cong | Xac nhan don hang | Chi tiet don + buoc tiep theo |
| Thanh toan thanh cong | Hoa don / Bien lai | So tien, ma don, lien he ho tro |
| Dat lich thanh cong | Xac nhan lich hen | Thoi gian, dia diem, chuan bi gi |
| Hoan thanh dich vu | Cam on + khao sat | Hoi trai nghiem + de nghi review |

---

## Automation Flow

### Flow co ban

```
Trigger: [Hanh dong cua user]
  │
  ├── Gui email 1 (ngay lap tuc)
  │
  ├── Doi 2 ngay
  │
  ├── Dieu kien: Da mo email 1?
  │   ├── Co → Gui email 2A (noi dung tiep theo)
  │   └── Khong → Gui email 2B (subject line khac, noi dung giong)
  │
  ├── Doi 3 ngay
  │
  ├── Dieu kien: Da click link trong email 2?
  │   ├── Co → Chuyen sang nhom "Engaged" → Gui offer
  │   └── Khong → Gui email 3 (gia tri cao, thu hut lai)
  │
  └── Ket thuc sequence → Chuyen sang email dinh ky
```

### Flow Welcome → Nurture → Convert

```
Dang ky moi
  │
  ├── Welcome Email 1 (ngay) — Chao mung + qua
  ├── Welcome Email 2 (+2 ngay) — Cau chuyen
  ├── Welcome Email 3 (+4 ngay) — Social proof
  │
  ├── Dieu kien: Da click bat ky link nao?
  │   ├── Co → Nhom "Warm" → Bat dau Nurture Sequence
  │   └── Khong → Nhom "Cold" → Re-engage Sequence
  │
  ├── Nurture 1–5 (+7 den +21 ngay)
  │
  ├── Dieu kien: Da mua hang?
  │   ├── Co → Chuyen sang Post-purchase flow
  │   └── Khong → Offer cuoi + khan cap → Chuyen sang email dinh ky
  │
  └── Email dinh ky (1/tuan) — 80% gia tri, 20% offer
```

---

## A/B Test Plan

### Thu tu test (uu tien cao truoc)

| Uu tien | Yeu to | Bien the A | Bien the B | Chi so do | Mau toi thieu |
|---------|--------|-----------|-----------|-----------|--------------|
| 1 | Subject line | Curiosity | Benefit | Open rate | 500 email/bien the |
| 2 | Thoi gian gui | 8:30 AM | 8:00 PM | Open rate | 500 email/bien the |
| 3 | CTA | Button mau cam | Button mau xanh | Click rate | 500 email/bien the |
| 4 | Do dai email | Ngan (150 tu) | Dai (300 tu) | Click rate | 500 email/bien the |
| 5 | Ten nguoi gui | Ten thuong hieu | Ten ca nhan | Open rate | 500 email/bien the |

### Quy tac A/B test email

- Chi test 1 yeu to moi lan
- Chia deu random: 50/50 hoac 20/20/60 (test nho truoc, gui phan thang cho winner)
- Doi toi thieu 24h truoc khi ket luan
- Toi thieu 500 email moi bien the de co y nghia thong ke
- Luu ket qua test vao spreadsheet de tich luy kien thuc

---

## Thoi gian gui toi uu — Viet Nam

| Khung gio | Hieu qua | Ly do | Loai email phu hop |
|-----------|---------|-------|-------------------|
| 8:00–9:00 AM | Cao | Dau ngay lam viec, kiem tra email | Nurture, giao duc, B2B |
| 12:00–1:00 PM | Trung binh–Cao | Nghi trua, luot dien thoai | Promotion, uu dai |
| 8:00–9:00 PM | Cao | Toi, thu gian, doc email ca nhan | Promotion, re-engage, B2C |
| 6:00–7:00 AM | Trung binh | Nguoi day som, truoc khi di lam | Newsletter, digest |

**Luu y:**
- Ngay gui tot nhat: Thu 3, Thu 4, Thu 5 (tranh Thu 2 ban va cuoi tuan)
- Tranh gui: ngay le, Tet, 30–31 hang thang (nhieu email khac canh tranh)
- B2B: gui trong gio hanh chinh (8AM–5PM)
- B2C: gui ngoai gio hanh chinh (12PM trua, 8PM toi)

---

## Deliverability — Dam bao email vao Inbox

### Checklist ky thuat bat buoc

| Hang muc | Yeu cau | Cach kiem tra |
|----------|---------|-------------|
| SPF | Them record SPF vao DNS | MXToolbox.com |
| DKIM | Ky so email bang DKIM key | MXToolbox.com |
| DMARC | Them record DMARC vao DNS | MXToolbox.com |
| Domain rieng | Gui email tu domain cua thuong hieu, khong dung @gmail.com | Cai dat trong Brevo |
| Warm-up | Tang dan so luong gui: 50 → 100 → 200 → 500/ngay | Theo doi bounce rate |
| List hygiene | Xoa email bounce, khong mo 6 thang | Chay moi quy |

### Lich warm-up domain moi

| Tuan | So email/ngay | Doi tuong gui | Muc dich |
|------|-------------|--------------|---------|
| Tuan 1 | 50–100 | Noi bo + khach hang than | Test ky thuat, xay reputation |
| Tuan 2 | 100–300 | Subscriber moi nhat (engaged) | Tang reputation |
| Tuan 3 | 300–500 | Mo rong them nhom Active | On dinh |
| Tuan 4+ | 500–1000+ | Toan bo list (tru Cold) | Van hanh binh thuong |

### Quy tac tranh spam

- Khong mua list email — chi gui cho nguoi da dong y (opt-in)
- Khong dung ALL CAPS trong subject line
- Tranh tu spam: "Mien phi 100%", "Nhan ngay", qua nhieu dau "!!!"
- Ti le text/image: toi thieu 60% text, toi da 40% image
- Co link unsubscribe o cuoi moi email
- Gi cung test truoc khi gui hang loat

---

## Tool khuyen dung — Viet Nam

| Tool | Free tier | Gia | Diem manh | Khi dung |
|------|----------|-----|----------|---------|
| **Brevo** (khuyen dung) | 300 email/ngay, unlimited contacts | Tu $9/thang | Automation manh, UI tieng Viet, server chau A | Mac dinh cho thi truong VN |
| Mailchimp | 500 contacts, 1000 email/thang | Tu $13/thang | Template dep, tich hop nhieu | Khi can nhieu template |
| Kit (ConvertKit) | 1000 subscribers | Tu $15/thang | Tot cho creator, landing page built-in | Personal brand, educator |

### Setup Brevo co ban

1. Tao tai khoan tai brevo.com
2. Them domain gui email (SPF + DKIM + DMARC)
3. Import contacts + phan nhom
4. Tao Welcome automation
5. Thiet ke email template (brand colors, logo)
6. Test gui 50 email noi bo
7. Bat dau warm-up theo lich o tren

---

## Tuan thu phap luat

### PDPA Viet Nam (Nghi dinh 13/2023/ND-CP)

| Yeu cau | Cach thuc hien |
|---------|---------------|
| Dong y (Consent) | Form dang ky co checkbox dong y nhan email (khong tick san) |
| Quyen rut dong y | Link unsubscribe trong moi email, xu ly trong 24h |
| Bao mat du lieu | Ma hoa danh sach email, khong chia se voi ben thu 3 |
| Muc dich ro rang | Ghi ro "Dang ky nhan email ve [noi dung gi]" |
| Quyen xoa du lieu | Cung cap cach de user yeu cau xoa toan bo du lieu |

### Checklist compliance

- [ ] Form dang ky co o tick dong y (khong tu dong tick)
- [ ] Moi email co link Unsubscribe o footer
- [ ] Co dia chi lien he/doanh nghiep trong footer
- [ ] Khong gui email cho nguoi chua dong y
- [ ] Xu ly unsubscribe trong vong 24h
- [ ] Luu tru bang chung dong y (consent log)

---

## KPI va Benchmark

### Chi so theo doi hang tuan

| KPI | Cong thuc | Benchmark VN | Kem | Tot | Xuat sac |
|-----|----------|-------------|-----|-----|----------|
| Open rate | So mo / So gui | 15–25% | <15% | 25–35% | >35% |
| Click rate (CTR) | So click / So gui | 1–3% | <1% | 3–5% | >5% |
| Click-to-open rate (CTOR) | So click / So mo | 10–15% | <10% | 15–25% | >25% |
| Unsubscribe rate | So huy / So gui | 0.3–1% | >1% | 0.1–0.3% | <0.1% |
| Bounce rate | So bounce / So gui | 1–3% | >3% | 0.5–1% | <0.5% |
| Spam complaint | So complaint / So gui | 0.05–0.1% | >0.1% | <0.05% | <0.01% |

### Chi so theo doi hang thang

| KPI | Cong thuc | Muc tieu |
|-----|----------|---------|
| List growth rate | (Sub moi - Unsub) / Tong sub | >5%/thang |
| Revenue per email | Doanh thu tu email / So email gui | Tang MoM |
| Conv rate | So mua hang / So click | >2% |
| Email ROI | (Revenue - Cost) / Cost | >30x |

---

## Template ket qua

```markdown
# Chien Luoc Email Marketing — [Ten thuong hieu]
Ngay tao: [YYYY-MM-DD]
Tool: [Brevo / Mailchimp / Kit]
So subscriber hien tai: [X]

---

## 1. Muc tieu

| Muc tieu | Chi so | Target | Thoi han |
|----------|--------|--------|---------|
| [Muc tieu 1] | [KPI] | [Con so] | [Thang/Quy] |
| [Muc tieu 2] | [KPI] | [Con so] | [Thang/Quy] |

## 2. Phan khuc doi tuong

| Nhom | Tieu chi | So luong | Email phu hop |
|------|---------|---------|--------------|
| [Nhom 1] | [Tieu chi] | [X] | [Loai email] |
| [Nhom 2] | [Tieu chi] | [X] | [Loai email] |
| [Nhom 3] | [Tieu chi] | [X] | [Loai email] |

## 3. Welcome Sequence

### Email 1 — Chao mung
- **Subject:** [50 ky tu]
- **Preview:** [90 ky tu]
- **Noi dung:** [Tom tat 2–3 cau]
- **CTA:** [Hanh dong]
- **Gui:** Ngay khi dang ky

### Email 2 — Cau chuyen
- **Subject:** [50 ky tu]
- **Preview:** [90 ky tu]
- **Noi dung:** [Tom tat 2–3 cau]
- **CTA:** [Hanh dong]
- **Gui:** +2 ngay

### Email 3 — Social proof
- **Subject:** [50 ky tu]
- **Preview:** [90 ky tu]
- **Noi dung:** [Tom tat 2–3 cau]
- **CTA:** [Hanh dong]
- **Gui:** +4 ngay

## 4. Nurture Sequence

| # | Ngay | Chu de | Subject line | CTA |
|---|------|--------|-------------|-----|
| 1 | +7 | [Chu de] | [Subject] | [CTA] |
| 2 | +10 | [Chu de] | [Subject] | [CTA] |
| 3 | +14 | [Chu de] | [Subject] | [CTA] |
| 4 | +17 | [Chu de] | [Subject] | [CTA] |
| 5 | +21 | [Chu de] | [Subject] | [CTA] |

## 5. Lich gui email dinh ky

| Ngay | Gio | Loai email | Doi tuong | Chu de |
|------|-----|-----------|----------|-------|
| Thu 3 | 8:30 AM | Nurture/Giao duc | Active | [Chu de tuan] |
| Thu 5 | 8:00 PM | Promotion (neu co) | Engaged | [Offer] |

## 6. Automation Flow

[Mo ta flow bang text hoac so do]

## 7. A/B Test Plan thang nay

| Tuan | Yeu to test | Bien the A | Bien the B | Chi so do |
|------|------------|-----------|-----------|-----------|
| 1 | [Yeu to] | [A] | [B] | [Chi so] |
| 2 | [Yeu to] | [A] | [B] | [Chi so] |

## 8. Checklist thiet lap

- [ ] Domain email da verify (SPF + DKIM + DMARC)
- [ ] Template email da thiet ke (brand colors, logo, footer)
- [ ] Welcome sequence da cai dat va test
- [ ] Phan khuc doi tuong da tao
- [ ] Unsubscribe link hoat dong
- [ ] Test gui noi bo thanh cong
- [ ] Warm-up plan da bat dau
```

---

## Lien ket skill

- **`09-insight-khach-hang`** — hieu pain point de viet email nurture dung noi dau
- **`05-copy-quang-cao`** — dung chung cong thuc copywriting cho subject line va body
- **`01-lich-noi-dung`** — dong bo email voi lich content tong the
- **`12-brief-landing-page`** — landing page la dich den cua CTA trong email
- **`13-phan-tich-du-lieu`** — phan tich hieu suat email marketing hang tuan/thang
- **`15-social-listening`** — bat xu huong de tao noi dung email kip thoi

---

## Checklist chat luong

### Truoc khi gui moi email

- [ ] Subject line < 50 ky tu, preview text < 90 ky tu
- [ ] Chi co 1 CTA chinh
- [ ] Link hoat dong (click test tung link)
- [ ] Hien thi tot tren mobile (test tren dien thoai that)
- [ ] Co link unsubscribe
- [ ] Khong co loi chinh ta hoac loi ten (merge tag test)
- [ ] Test spam score (Brevo co san)

### Truoc khi bat automation

- [ ] Flow logic dung (ve so do ra giay)
- [ ] Dieu kien re nhanh hoat dong (test ca 2 nhanh)
- [ ] Thoi gian delay hop ly
- [ ] Exit condition ro rang (khi nao nguoi dung ra khoi flow)
- [ ] Khong trung lap voi email dinh ky khac

### Hang thang

- [ ] Review open rate va click rate — so voi thang truoc
- [ ] Xoa email bounce khoi list
- [ ] Cap nhat phan khuc dua tren hanh vi moi
- [ ] Lam moi subject line dua tren ket qua A/B test
- [ ] Kiem tra list growth rate
