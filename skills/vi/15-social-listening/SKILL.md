---
name: 15-social-listening
description: Giam sat thuong hieu, doi thu, xu huong nganh tren mang xa hoi — phat hien som khung hoang va co hoi content
metadata:
  version: 2.1.0
  category: operations
triggers:
  - "social listening"
  - "theo doi thuong hieu"
  - "giam sat mang xa hoi"
  - "brand monitoring"
  - "phan tich cam xuc"
  - "crisis management"
  - "quan ly khung hoang"
output: File .md chua ke hoach social listening — kenh giam sat, bao cao tuan/thang, quy trinh phan hoi khung hoang, va chi so brand health
related:
  - 08-nghien-cuu-doi-thu
  - 09-insight-khach-hang
  - 13-phan-tich-du-lieu
  - 07-bao-cao-marketing
---

# Social Listening & Monitoring

> Lang nghe truoc khi noi. Hieu khach hang dang noi gi, cam xuc ra sao, va thi truong di huong nao — truoc khi doi thu biet.

---

## Thu thap thong tin

Hoi user toi da 4 cau:

1. **Thuong hieu/san pham gi?** Ten brand, ten san pham chinh, ten founder (neu co personal brand).
2. **Doi thu chinh?** Liet ke 2–3 doi thu truc tiep can theo doi.
3. **Van de hien tai?** Dang bi review xau, can biet xu huong, hay muon giam sat doi thu?
4. **Kenh nao quan trong nhat?** Facebook, TikTok, Zalo, Google Reviews, hay tat ca?

---

## Framework: Listen → Analyze → Report → Act

```
LISTEN    — Thu thap mention, comment, review, bai viet lien quan
    |
ANALYZE   — Phan loai cam xuc, xac dinh xu huong, phat hien bat thuong
    |
REPORT    — Tong hop thanh bao cao tuan/thang voi insight ro rang
    |
ACT       — Phan hoi, dieu chinh chien luoc, xu ly khung hoang
```

---

## Kenh giam sat

### Danh sach kenh — Viet Nam

| Kenh | Loai noi dung | Cach giam sat | Tan suat |
|------|-------------|--------------|---------|
| Facebook Groups | Thao luan, hoi dap, review | Tim kiem theo tu khoa trong group nganh | Hang ngay |
| Facebook Pages | Comment, review, mention | Thong bao trang + search tu khoa | Hang ngay |
| TikTok | Comment, duet, stitch, hashtag | Search hashtag + comment tren video brand | Hang ngay |
| Zalo Communities | Thao luan nhom | Theo doi cac nhom nganh da tham gia | 2–3 lan/tuan |
| Google Reviews | Danh gia doanh nghiep | Google My Business dashboard | Hang ngay |
| Google Search | Bai viet, tin tuc | Google Alerts voi tu khoa brand | Tu dong |
| Forum Voz | Thao luan chuyen sau | Search theo tu khoa tren voz.vn | 2 lan/tuan |
| Reddit VN | Thao luan, review | Search subreddit lien quan nganh | 1 lan/tuan |
| Shopee/TikTok Shop | Review san pham | Tab review tren listing | 2–3 lan/tuan |
| YouTube | Comment, review video | Search ten brand + san pham | 1 lan/tuan |
| Bao chi online | Tin tuc, bai PR | Google News Alerts | Tu dong |

### Tu khoa giam sat

| Nhom tu khoa | Vi du |
|-------------|------|
| Ten thuong hieu | "[Brand]", "[Brand] review", "[Brand] lua dao", "[Brand] co tot khong" |
| Ten san pham | "[San pham]", "[San pham] gia", "[San pham] danh gia" |
| Ten founder | "[Founder name]", "[Founder] la ai" |
| Doi thu | "[Doi thu 1]", "[Doi thu 2]", "[Doi thu] vs [Brand]" |
| Nganh | "[Tu khoa nganh]", "[Van de pho bien trong nganh]" |
| Phan doi | "khong tot", "that vong", "lua dao", "kem chat luong", "khong nhu quang cao" |
| Khen | "xuat sac", "recommend", "hay qua", "nen dung", "dang tien" |

---

## Phan tich cam xuc (Sentiment Analysis)

### Thang do cam xuc

| Muc | Diem | Mo ta | Vi du |
|-----|------|-------|------|
| Rat tieu cuc | 1 | Phan no, to cao, keu goi tay chay | "Lua dao trang tron, da bao cong an" |
| Tieu cuc | 2 | That vong, phan nan, so sanh bat loi | "Dung roi kem hon doi thu nhieu" |
| Trung tinh | 3 | Hoi thong tin, so sanh, trung lap | "Ai dung [Brand] chua? Cho minh y kien" |
| Tich cuc | 4 | Hai long, gioi thieu, khen | "Dung 3 thang roi, rat hai long" |
| Rat tich cuc | 5 | Nhiet tinh gioi thieu, brand advocate | "Best service ever, gioi thieu het ban be roi" |

### Phan loai theo chu de

| Chu de | Giam sat gi | Y nghia |
|--------|-----------|---------|
| San pham / Chat luong | Review, so sanh, phan hoi | Cai thien san pham |
| Dich vu / Trai nghiem | Comment ve nhan vien, quy trinh | Cai thien operations |
| Gia ca | So sanh gia, phan nan gia | Dieu chinh pricing/communication |
| Truyen thong / Quang cao | Phan hoi ve content, ads | Cai thien creative |
| Doi thu | So sanh, chuyen doi tu doi thu | Co hoi hoac moi de doa |

---

## Phat hien khung hoang (Crisis Detection)

### Tin hieu canh bao som

| Cap do | Tin hieu | Nguong | Hanh dong |
|--------|---------|--------|----------|
| **Xanh** — Binh thuong | Mention tinh thuong, cam xuc tich cuc/trung tinh | <5 mention tieu cuc/ngay | Theo doi binh thuong |
| **Vang** — Theo doi | Tang mention tieu cuc, 1–2 bai viet phan nan co tuong tac cao | 5–15 mention tieu cuc/ngay HOAC 1 bai >100 tuong tac | Tang tan suat theo doi, chuan bi phan hoi |
| **Cam** — Canh bao | Mention tieu cuc lan nhanh, bao chi bat dau dua tin | 15–50 mention tieu cuc/ngay HOAC bao chi dua | Kich hoat quy trinh phan hoi, thong bao ban lanh dao |
| **Do** — Khung hoang | Viral tieu cuc, hashtag phan doi, anh huong doanh thu | >50 mention tieu cuc/ngay HOAC trending topic | Kich hoat quy trinh khung hoang toan dien |

### Quy trinh phan hoi khung hoang

#### Buoc 1 — Nhan dien (trong 1 gio)

| Hang muc | Can lam |
|----------|--------|
| Xac dinh nguon goc | Bai viet/comment nao bat dau? Ai dang? |
| Do lan truyen | Bao nhieu share/comment? Toc do tang? |
| Tinh chinh xac | Noi dung co dung khong? Co bang chung khong? |
| Anh huong | Anh huong den ai? Khach hang, doi tac, nhan vien? |

#### Buoc 2 — Phan hoi (trong 2–4 gio)

| Tinh huong | Cach phan hoi |
|-----------|-------------|
| Phan nan co ly | Xin loi + thua nhan + giai phap cu the + thoi gian xu ly |
| Thong tin sai | Dang chinh thuc + bang chung + giu giong binh tinh |
| Troll / Vu khong | Khong tranh cai cong khai + luu bang chung + bao cao platform |
| Khung hoang lon | Thong cao bao chi + video founder len tieng + update lien tuc |

#### Buoc 3 — Giai quyet (1–7 ngay)

| Hang muc | Can lam |
|----------|--------|
| Xu ly truc tiep | Lien he rieng voi nguoi phan nan, giai quyet ca nhan |
| Cap nhat cong khai | Thong bao tien do xu ly tren kenh chinh |
| Rut kinh nghiem | Hop noi bo, xac dinh nguyen nhan goc, phong tranh tai phat |
| Theo doi hau khung hoang | Giam sat cam xuc 2 tuan sau, do tac dong den brand health |

#### Buoc 4 — Phuc hoi (2–4 tuan)

| Hang muc | Can lam |
|----------|--------|
| Noi dung phuc hoi | Day manh social proof, testimonial tich cuc, case study |
| PR tich cuc | Bai viet ve cai thien, cam ket chat luong |
| Engagement | Tang tuong tac voi community, tra loi comment nhanh hon |
| Do hieu qua | So sanh sentiment truoc — trong — sau khung hoang |

---

## Niche Research — 20 chu de nong trong 7 ngay

> Ap dung tu `social-media-skills/niche-research` — adapt cho VN channels.

### Muc dich

Moi tuan, surface 20 chu de/xu huong dang nong nhat trong nganh de:
- Tao content kip thoi (khong bi chay sau doi thu)
- Phat hien co hoi content truoc nguoi khac
- Biet khach hang dang quan tam/tranh luan gi

### Quy trinh research (30–45 phut/tuan)

| Buoc | Nguon | Cach lam | Thoi gian |
|------|-------|---------|-----------|
| 1 | **Facebook Groups nganh** | Tim kiem tu khoa nganh, loc 7 ngay, doc bai co nhieu tuong tac | 10 phut |
| 2 | **TikTok Discover** | Search hashtag nganh, loc video 7 ngay, xem video >10K views | 10 phut |
| 3 | **Google News VN** | Search "[nganh] + tin tuc", loc 7 ngay | 5 phut |
| 4 | **Zalo Communities** | Doc bai noi bat trong nhom nganh | 5 phut |
| 5 | **Forum (Voz, Reddit VN)** | Search tu khoa, doc thread moi co nhieu comment | 5 phut |
| 6 | **KOL/Influencer feed** | Xem 5–10 KOL nganh dang lam gi tuan nay | 5 phut |

### Output format

```markdown
# Niche Research — Tuan [X] ([DD/MM] – [DD/MM/YYYY])

| # | Chu de / Xu huong | Nguon | Muc do nong | Dang tranh luan gi | Co hoi content | Goc de xuat |
|---|-------------------|-------|-------------|---------------------|----------------|-------------|
| 1 | [Chu de] | FB Group / TikTok / News | Cao/TB/Thap | [Tom tat] | [Mo ta] | [Y tuong bai] |
| 2 | ... | ... | ... | ... | ... | ... |
| ... | ... | ... | ... | ... | ... | ... |
| 20 | ... | ... | ... | ... | ... | ... |
```

### Quy tac

- **Chi lay 7 ngay gan nhat** — cu hon thi loai
- **Xac minh ngay dang** truoc khi dua vao bang
- Khong bao gio **tu nghi ra** link hoac so lieu — chi dung thong tin thuc te
- Neu khong du 20 chu de → ghi ro so luong thuc te, **khong chen**
- Uu tien chu de co **tranh luan** hoac **tuong tac cao** — khong chi lay tin tuc

> **Tip:** Ket hop voi Content Matrix (skill 01) — lay chu de nong → dien vao matrix → co content kip thoi.

---

## Phat hien xu huong (Trend Identification)

### Loai xu huong can theo doi

| Loai | Mo ta | Hanh dong |
|------|-------|----------|
| Rising topic | Chu de moi tang dan thao luan trong nganh | Tao content som, chiem vi tri dau |
| Viral format | Dinh dang content dang lan truyen (sound, POV, trend) | Adapt nhanh cho brand, dang trong 24–48h |
| Mua vu | Xu huong theo mua: Tet, 8/3, back-to-school | Len ke hoach truoc 2–4 tuan |
| Doi thu | Chien dich moi, san pham moi, thay doi gia cua doi thu | Phan tich + phan hoi chien luoc |
| Cam xuc nganh | Thay doi cam xuc chung ve nganh (VD: mat niem tin, tang ky vong) | Dieu chinh tone of voice va thong diep |

### Cach phat hien

| Phuong phap | Cong cu | Tan suat |
|-------------|--------|---------|
| Search hashtag trending | TikTok Discover, Facebook trending | Hang ngay |
| Doc comment nhieu tuong tac | Comment tren bai viet nganh, KOL | Hang ngay |
| Theo doi Google Trends | Google Trends — loc khu vuc Viet Nam | 2 lan/tuan |
| Doc bao cao nganh | Bao cao tu AIM, Novaon, Q&Me | Hang thang |
| Theo doi KOL/Influencer nganh | Content cua 5–10 KOL nganh | 3 lan/tuan |

---

## Giam sat doi thu (Competitive Monitoring)

### Template theo doi doi thu

| Chi so | [Doi thu 1] | [Doi thu 2] | [Brand minh] |
|--------|-----------|-----------|-------------|
| So follower (TikTok) | [X] | [X] | [X] |
| So follower (FB) | [X] | [X] | [X] |
| Tan suat dang bai/tuan | [X] | [X] | [X] |
| Loai content chinh | [Mo ta] | [Mo ta] | [Mo ta] |
| Engagement rate TB | [X%] | [X%] | [X%] |
| Tone of voice | [Mo ta] | [Mo ta] | [Mo ta] |
| USP truyen thong | [Mo ta] | [Mo ta] | [Mo ta] |
| Chien dich gan nhat | [Mo ta] | [Mo ta] | [Mo ta] |

### Giam sat gi o doi thu

| Hang muc | Can theo doi | Tai sao |
|----------|-------------|---------|
| Content moi | Bai dang, video, story | Hoc format hieu qua, tranh trung lap |
| Ads Library | Quang cao dang chay (Meta Ads Library) | Hieu chien luoc, creative, offer |
| Landing page | Trang ban hang, form, pricing | Benchmark conversion approach |
| Review khach hang | Danh gia tren Google, Shopee, FB | Phat hien diem yeu de khai thac |
| Tuyen dung | Vi tri dang tuyen | Du bao huong phat trien |
| PR / Bao chi | Bai bao, phong van | Biet chien luoc truyen thong |

---

## Chi so Brand Health

### 4 chi so chinh

| Chi so | Cong thuc | Benchmark | Tan suat do |
|--------|----------|----------|------------|
| **Share of Voice (SOV)** | Mention brand / Tong mention nganh x 100% | >15% la manh | Hang thang |
| **Net Sentiment** | (Mention tich cuc - Mention tieu cuc) / Tong mention x 100% | >60% la tot | Hang tuan |
| **Response Rate** | So mention duoc phan hoi / Tong mention can phan hoi x 100% | >80% la tot | Hang tuan |
| **Response Time** | Thoi gian trung binh tu mention den phan hoi | <2h la tot, <30 phut la xuat sac | Hang tuan |

### Benchmark chi tiet

| Chi so | Kem | Trung binh | Tot | Xuat sac |
|--------|-----|------------|-----|----------|
| SOV | <5% | 5–15% | 15–25% | >25% |
| Net Sentiment | <40% | 40–60% | 60–80% | >80% |
| Response Rate | <50% | 50–70% | 70–90% | >90% |
| Response Time | >24h | 4–24h | 1–4h | <1h |

---

## Cong cu giam sat

### Mien phi

| Cong cu | Kenh | Cach dung |
|---------|------|---------|
| **Google Alerts** | Web, bao chi, blog | Tao alert cho ten brand + doi thu, nhan email hang ngay |
| **Meta Business Suite** | Facebook, Instagram | Xem comment, mention, message — co san |
| **TikTok Studio** | TikTok | Comment management, analytics |
| **Google Trends** | Tim kiem Google | So sanh tu khoa brand vs doi thu theo thoi gian |
| **Meta Ads Library** | Facebook, Instagram | Xem quang cao doi thu dang chay |
| **Social Searcher** | Web, social | Tim kiem mention mien phi (gioi han) |

### Tra phi (khi can scale)

| Cong cu | Gia | Diem manh |
|---------|-----|----------|
| Brand24 | Tu $79/thang | Giam sat da kenh, sentiment analysis tu dong |
| YouNet Media (BuzzMetrics) | Lien he | Chuyen cho thi truong Viet Nam |
| Sprout Social | Tu $199/thang | Quan ly + listening + report |

### Quy trinh thu cong (cho team nho)

**Hang ngay (15–20 phut):**
1. Kiem tra thong bao Facebook Page + Instagram (comment, mention, review)
2. Kiem tra comment tren TikTok (3 video gan nhat)
3. Search ten brand tren Facebook (Filter: Bai viet 24h)
4. Kiem tra Google My Business reviews

**Hang tuan (30–45 phut):**
1. Search tu khoa brand tren TikTok, Facebook Groups
2. Kiem tra Meta Ads Library cua doi thu
3. Doc Google Alerts tong hop
4. Cap nhat bang theo doi doi thu
5. Viet bao cao tuan

---

## Bao cao tuan

### Template

```markdown
# Bao Cao Social Listening — Tuan [X] ([Ngay] — [Ngay])

## Tom tat

| Chi so | Tuan nay | Tuan truoc | Thay doi |
|--------|---------|----------|----------|
| Tong mention | [X] | [X] | [+/- %] |
| Mention tich cuc | [X] | [X] | [+/- %] |
| Mention tieu cuc | [X] | [X] | [+/- %] |
| Net Sentiment | [X%] | [X%] | [+/- %] |
| Response Rate | [X%] | [X%] | [+/- %] |
| Response Time TB | [Xh] | [Xh] | [+/- h] |

## Top mention tich cuc

1. [Nguon + noi dung tom tat + reach/tuong tac]
2. [Nguon + noi dung tom tat + reach/tuong tac]
3. [Nguon + noi dung tom tat + reach/tuong tac]

## Top mention tieu cuc

1. [Nguon + noi dung tom tat + da xu ly chua + ket qua]
2. [Nguon + noi dung tom tat + da xu ly chua + ket qua]

## Doi thu noi bat

- [Doi thu 1]: [Hoat dong dang chu y trong tuan]
- [Doi thu 2]: [Hoat dong dang chu y trong tuan]

## Xu huong trong tuan

- [Xu huong 1]: [Mo ta + co hoi cho brand]
- [Xu huong 2]: [Mo ta + co hoi cho brand]

## Canh bao

- [Muc do: Xanh/Vang/Cam/Do] — [Mo ta tinh huong]

## De xuat hanh dong

| # | Hanh dong | Uu tien | Ai lam | Deadline |
|---|----------|---------|--------|----------|
| 1 | [Mo ta] | [Cao/TB/Thap] | [Vai tro] | [Ngay] |
| 2 | [Mo ta] | [Cao/TB/Thap] | [Vai tro] | [Ngay] |
```

---

## Bao cao thang

### Template

```markdown
# Bao Cao Social Listening — Thang [X]/[YYYY]

## Tom tat executive

**3 insight quan trong nhat:**
1. [Insight 1]
2. [Insight 2]
3. [Insight 3]

## Brand Health Dashboard

| Chi so | Thang nay | Thang truoc | Thay doi | Muc tieu |
|--------|---------|-----------|----------|---------|
| Share of Voice | [X%] | [X%] | [+/- %] | [X%] |
| Net Sentiment | [X%] | [X%] | [+/- %] | >60% |
| Response Rate | [X%] | [X%] | [+/- %] | >80% |
| Response Time TB | [Xh] | [Xh] | [+/- h] | <2h |
| Tong mention | [X] | [X] | [+/- %] | — |

## Phan tich cam xuc theo chu de

| Chu de | Tich cuc | Trung tinh | Tieu cuc | Xu huong |
|--------|---------|-----------|---------|---------|
| San pham | [X%] | [X%] | [X%] | [Tang/Giam/On dinh] |
| Dich vu | [X%] | [X%] | [X%] | [Tang/Giam/On dinh] |
| Gia ca | [X%] | [X%] | [X%] | [Tang/Giam/On dinh] |
| Truyen thong | [X%] | [X%] | [X%] | [Tang/Giam/On dinh] |

## Phan tich doi thu

| Chi so | [Brand] | [Doi thu 1] | [Doi thu 2] |
|--------|---------|-----------|-----------|
| SOV | [X%] | [X%] | [X%] |
| Net Sentiment | [X%] | [X%] | [X%] |
| Content noi bat | [Mo ta] | [Mo ta] | [Mo ta] |
| Chien dich noi bat | [Mo ta] | [Mo ta] | [Mo ta] |

## Xu huong thang

| Xu huong | Muc do | Co hoi cho brand | De xuat |
|---------|-------|-----------------|--------|
| [Xu huong 1] | [Manh/TB/Yeu] | [Mo ta] | [Hanh dong] |
| [Xu huong 2] | [Manh/TB/Yeu] | [Mo ta] | [Hanh dong] |

## Khung hoang / Su co (neu co)

| Ngay | Su co | Muc do | Xu ly | Ket qua | Bai hoc |
|------|-------|--------|-------|---------|--------|
| [Ngay] | [Mo ta] | [Xanh-Do] | [Mo ta] | [Mo ta] | [Mo ta] |

## Hanh dong thang toi

| # | Hanh dong | Uu tien | Ai lam | Deadline | Do bang |
|---|----------|---------|--------|----------|--------|
| 1 | [Mo ta] | [Cao] | [Vai tro] | [Ngay] | [Chi so] |
| 2 | [Mo ta] | [TB] | [Vai tro] | [Ngay] | [Chi so] |
| 3 | [Mo ta] | [Thap] | [Vai tro] | [Ngay] | [Chi so] |
```

---

## Lien ket skill

- **`08-nghien-cuu-doi-thu`** — phan tich doi thu chuyen sau (social listening cung cap du lieu thoi gian thuc)
- **`09-insight-khach-hang`** — social listening la nguon insight dinh tinh manh nhat
- **`13-phan-tich-du-lieu`** — ket hop du lieu dinh tinh (sentiment) voi du lieu dinh luong (metrics)
- **`07-bao-cao-marketing`** — section brand health trong bao cao thang
- **`01-lich-noi-dung`** — xu huong phat hien tu listening → y tuong content moi
- **`14-email-marketing`** — phan hoi khung hoang co the can email thong bao cho khach hang

---

## Checklist chat luong

### Thiet lap ban dau

- [ ] Danh sach tu khoa giam sat day du (brand + san pham + doi thu + nganh)
- [ ] Google Alerts da tao cho moi nhom tu khoa
- [ ] Thong bao bat tren Facebook Page, Instagram, TikTok Studio
- [ ] Bang theo doi doi thu da tao (Google Sheets)
- [ ] Quy trinh phan hoi khung hoang da viet va team da biet
- [ ] Phan cong nguoi phu trach listening hang ngay

### Hang tuan

- [ ] Kiem tra hang ngay da thuc hien (khong bo ngay nao)
- [ ] Mention tieu cuc da xu ly trong 24h
- [ ] Bao cao tuan da gui cho team/stakeholder
- [ ] Bang theo doi doi thu da cap nhat
- [ ] Xu huong moi da ghi nhan va de xuat y tuong content
- [ ] Niche Research da chay — co it nhat 10 chu de/tuan
- [ ] Chu de nong da chuyen sang Content Matrix (skill 01) hoac lich noi dung

### Hang thang

- [ ] Bao cao thang day du voi 4 chi so brand health
- [ ] So sanh doi thu da cap nhat
- [ ] Xu huong thang da tong hop
- [ ] De xuat hanh dong thang toi co nguoi lam va deadline
- [ ] Review lai tu khoa giam sat — them/bot neu can
