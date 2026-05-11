---
name: 05-copy-quang-cao
description: Viet 6 bien the copy quang cao theo 3 tang pheu (TOFU/MOFU/BOFU), tuan thu chinh sach quang cao, co CTA phu hop tung nen tang
metadata:
  version: 2.3.0
  category: content
triggers:
  - "viet quang cao"
  - "copy quang cao"
  - "noi dung chay ads"
  - "copy Facebook Ads"
  - "copy TikTok Ads"
  - "tieu de quang cao"
  - "copy retarget"
  - "ads personal brand"
  - "promote LinkedIn profile"
  - "boost personal post"
  - "quang cao tang follow ca nhan"
output: file .md gom 6 bien the copy (2 TOFU, 2 MOFU, 2 BOFU), moi bien the co primary text, headline, description, CTA button
related:
  - 04-script-video
  - 02-brief-chien-dich
  - 09-insight-khach-hang
  - 10-tinh-kpi-nguoc
  - references/copy-frameworks-vn
  - references/quality-gates-vn
  - references/hook-formulas-vn
---

# Copy Quang Cao

## Buoc 0: Kiem tra context file

Truoc khi viet copy ads, doc ca 2 file (neu ton tai):

1. `.agents/product-marketing-context.md`   (marketing san pham)
2. `.agents/personal-brand-context.md`      (personal brand)

Quyet dinh mode:
- Chi co `product-marketing-context.md` → **MODE A** (mac dinh — 6 bien the TOFU/MOFU/BOFU ben duoi)
- Chi co `personal-brand-context.md` → **MODE B** (Personal Brand Mode — section ben duoi)
- Co ca 2 → **HOI 1 cau**: "Ban dang chay ads ban SP hay boost personal brand?"
- Khong co → De xuat tao context phu hop

---

## Thu thap thong tin

Hoi toi da 4 cau truoc khi viet:

1. **San pham / dich vu gi?** Mo ta ngan, USP chinh, gia, uu dai dang chay (neu co).
2. **Nen tang quang cao?** Meta Ads (Facebook/Instagram), TikTok Ads, Google Ads. Neu khong chon — mac dinh Meta Ads.
3. **Doi tuong muc tieu?** Gioi tinh, do tuoi, noi dau chinh, nguoi quyet dinh mua. Cold (chua biet) hay Warm (da tuong tac)?
4. **Muc tieu quang cao?** Tin nhan (CPMess), Lead form, Traffic, Chuyen doi. Neu khong chon — mac dinh tin nhan.

---

## Nguyen tac cot loi

### Quy tac 125 ky tu

Tren Meta Ads, chi **125 ky tu dau** hien thi truoc nut "Xem them". Dong 1 cua primary text phai:
- Gay to mo hoac cham noi dau
- Chua USP hoac con so cu the
- Tu hoan chinh ve nghia (khong cat giua cau)

```
TOT:  "Da ban len mun 3 nam chua het? 1 lieu trinh 28 ngay — cam ket sau sach."  (74 ky tu)
XAU:  "Chao ban, cam on ban da quan tam den dich vu cua chung toi. Hom nay minh muon gioi thieu..." (cat giua)
```

### Thu vien cam xuc trigger

| # | Trigger | Mo ta | Vi du ap dung |
|---|---------|-------|---------------|
| 1 | Noi dau (Pain) | Cham vao van de dang gap — tao dong cam | "Met moi vi da mun? Ban khong co loi..." |
| 2 | Khat vong (Aspiration) | Ve hinh anh tuong lai tot dep | "Tuong tuong da ban dep tu tin khong can filter" |
| 3 | FOMO | So bo lo co hoi, so lieu gioi han | "Chi con 12 slot thang nay — 89 nguoi da dat" |
| 4 | Bang chung xa hoi (Social proof) | Nguoi khac da lam va thanh cong | "1,200 chi da trai nghiem — 4.8/5 sao" |
| 5 | Uy tin (Authority) | Chuyen gia, chung nhan, kinh nghiem | "10 nam kinh nghiem — bac si da lieu truc tiep tu van" |
| 6 | To mo (Curiosity) | Gay thac mac, muon biet tiep | "Co 1 thu 90% nguoi dung skincare sai — ban co biet?" |

**Quy tac chon trigger theo pheu:**
- TOFU: To mo (6), Noi dau (1), Khat vong (2)
- MOFU: Bang chung xa hoi (4), Uy tin (5), Noi dau (1)
- BOFU: FOMO (3), Bang chung xa hoi (4), Noi dau (1)

---

## 6 Framework Copy Chuyen Nghiep

> **Reference day du:** `skills/references/copy-frameworks-vn.md` — template char-limit theo tung nen tang, vi du VN cho moi framework.

### Chon framework theo nhiet do audience

| Nhiet do | Framework uu tien | Ly do |
|---------|------------------|-------|
| **Cold** (chua biet san pham) | AIDA, Star·Story·Solution | Dan dat logic tu dau; ke chuyen khong lo quang cao |
| **Warm** (da tuong tac, chua mua) | PAS, 4P | Nhac lai noi dau; tang trust bang proof |
| **Hot** (co intent, gan mua) | FAB, BAB | Rap dap loi ich cu the; visual transformation |
| **Retarget** (da xem, chua mua) | PAS hoac BAB | Nhan manh hau qua hoac bien doi |

### Tom tat 6 frameworks

| Framework | Cau truc | Dung khi | Platform phu hop |
|-----------|---------|---------|-----------------|
| **AIDA** | Attention → Interest → Desire → Action | Cold audience, launch san pham moi | Meta feed, TikTok, YouTube pre-roll |
| **PAS** | Problem → Agitate → Solution | Warm audience, nganh co pain point ro (spa, y te, GD) | Meta feed, LinkedIn, Google RSA |
| **BAB** | Before → After → Bridge | Transformation offer (spa, fitness, giao duc) | Meta Reels/Stories, TikTok |
| **4P** | Promise → Picture → Proof → Push | High-ticket, can nhieu trust (BDS, khoa hoc, B2B) | LinkedIn, Google, Meta feed dai |
| **FAB** | Features → Advantages → Benefits | Khach co intent cao, dang so sanh | Google RSA, Meta retarget |
| **Star·Story·Solution** | Star → Story → Solution | Brand storytelling, UGC-style, khong muon lo quang cao | TikTok, Reels, YouTube Shorts |

> **Sai lam pho bien VN:** Viet theo cau truc tu do (gioi thieu → tinh nang → CTA) thay vi ap framework. Ket qua: copy nhat, it cam xuc, CTR thap. Moi bien the trong 6 bien the output nen dung **1 framework khac nhau**.

### Andromeda Warning — Khong clone ads

> **Meta 2026:** He thong Andromeda cluster cac quang cao co **Creative Similarity Score > 60%** — giam delivery tu dong. 100 bien the nho (doi mau, cat clip, thay font) KHONG tot hon 10 creative thuc su khac biet.

**Nguong an toan:**

| Similarity Score | Trang thai | Hanh dong |
|-----------------|-----------|-----------|
| < 40% | An toan | Tiep tuc chay |
| 40–60% | Canh bao | Kiem tra lai — co the bi cluster |
| > 60% | Nguy hiem | Andromeda cluster → giam delivery tu dong |

**5 chieu da dang de vuot Andromeda:**
1. **Hook khac nhau** — Pain vs To mo vs Aspiration (khong chi thay text, phai thay goc nhin)
2. **Format khac nhau** — Video doc 9:16 vs Anh vuong 1:1 vs Carousel
3. **Nhan vat khac nhau** — Founder vs Khach hang review vs KOC/bac si
4. **Am nhac khac nhau** — Trending VN vs Nhac cam trang vs Giong noi/voiceover
5. **Boi canh khac nhau** — Studio vs Ngoai canh vs UGC phong khach

> Xem them: `skills/references/quality-gates-vn.md` Gate 5 (Andromeda Creative Diversity)

---

### 6 kieu hook quang cao — Dong 1 quyet dinh tat ca

> Ap dung tu `social-media-skills/hook-generator` — adapt cho ads VN.

125 ky tu dau cua primary text = hook quang cao. Moi bien the nen dung **kieu hook khac nhau**:

| # | Kieu hook | Cong thuc | Vi du VN |
|---|-----------|-----------|----------|
| 1 | **Con so** | So lieu cu the, bat ngo | "1,247 chi da trai nghiem — 98% quay lai lan 2" |
| 2 | **Nguoc doi** | Lat nguoc niem tin pho bien | "Chay ads nhieu hon KHONG giup ban co them khach" |
| 3 | **Truoc/Sau** | Ket qua bien doi cu the | "Tu 5 don/tuan len 40 don/tuan — chi trong 60 ngay" |
| 4 | **Muon uy tin** | Nhac ten chuyen gia, chung nhan, brand | "Bac si da lieu 15 nam khuyen dung — ly do bat ngo" |
| 5 | **Thu nhan** | Chia se sai lam, bai hoc that | "Toi da tieu 200 trieu chay ads sai — bay gio toi lam khac" |
| 6 | **Khan cap** | Gioi han thoi gian, so luong | "Con 8 slot thang 6 — 34 nguoi dang cho" |

**Quy tac chon hook theo tang pheu:**
- TOFU (cold): Uu tien hook 1 (con so), 2 (nguoc doi) — thu hut chu y
- MOFU (warm): Uu tien hook 3 (truoc/sau), 4 (uy tin) — tang tin tuong
- BOFU (hot): Uu tien hook 5 (thu nhan), 6 (khan cap) — thuc day hanh dong

**Kiem tra hook:**
- [ ] Dong 1 ≤ 125 ky tu va tu hoan chinh ve nghia
- [ ] Co con so hoac chi tiet cu the (khong chung chung)
- [ ] Gay to mo hoac cham cam xuc — nguoi doc MUON bam "Xem them"
- [ ] 6 bien the dung 6 kieu hook KHAC nhau

---

### Copy Scoring — Cham diem truoc khi giao

> Ap dung tu `social-media-skills/post-scorer` — adapt cho quang cao VN.

Cham 5 tieu chi, moi tieu chi 1–10 diem. **Chi giao khi dat ≥ 35/50.**

| Tieu chi | 8–10 diem | 5–7 diem | 1–4 diem |
|----------|----------|----------|----------|
| **Hook strength** | Gay to mo manh, co con so/chi tiet, khop tang pheu | Chap nhan duoc nhung chua gay an tuong | Chung chung, khong co diem nhan |
| **Cam xuc trigger** | Trigger ro rang (Pain/FOMO/Social proof), cam nhan duoc | Co trigger nhung nhe | Khong co trigger, doc xong khong cam giac gi |
| **CTA clarity** | CTA cu the, hanh dong ro, 1 buoc duy nhat | CTA co nhung chua cu the | CTA mo ho ("Tim hieu them", "Click vao day") |
| **Compliance** | 0 vi pham chinh sach | 1 canh bao nhe | Co vi pham se bi reject |
| **Platform fit** | Dung char limit, giong van khop platform | Gan dung | Sai char limit hoac giong van khong phu hop |

| Tong | Danh gia | Hanh dong |
|------|---------|----------|
| 45–50 | Xuat sac | Giao ngay, theo doi hieu suat |
| 35–44 | Tot | Giao duoc, ghi chu cai thien |
| 25–34 | Trung binh | Chinh lai truoc khi giao |
| < 25 | Yeu | Viet lai tu dau |

> **Moi lan giao copy, them dong:** `Copy Score: [X]/50 — [Danh gia]` vao cuoi file output.

---

### Quy tac theo nen tang

| Quy tac | Meta Ads | TikTok Ads | Google Ads |
|---------|----------|-----------|------------|
| Do dai primary text | 125 char dong 1 + 300–500 char toan bo | 80–100 char (text overlay) | Khong co primary text |
| Headline | Toi da 40 char | Khong co | Toi da 30 char x 3 |
| Description | Toi da 30 char | Khong co | Toi da 90 char x 2 |
| Giong van | Chuyen nghiep nhung gan gui | Tre, tu nhien, nhu noi chuyen | Truc tiep, keyword-driven |
| CTA button | Chon tu danh sach Meta | Khong co nut — CTA trong text | Khong co nut — CTA trong headline |
| Hinh anh / Video | 1:1 (feed), 9:16 (story/reel) | 9:16 bat buoc | Khong ap dung (search) |

### CTA — Thu tu uu tien

Cu the > chung chung. Hanh dong ro > mo ho.

| Muc do | CTA | Khi nao dung |
|--------|-----|-------------|
| Manh nhat | "Nhan tin ngay de dat lich" | Muc tieu tin nhan, BOFU |
| Manh | "Dat lich tu van mien phi" | Lead form, MOFU/BOFU |
| Trung binh | "Xem bang gia chi tiet" | Traffic, MOFU |
| Nhe | "Tim hieu them" | Awareness, TOFU |

**Tranh dung:** CTA chung chung khong co hanh dong ("Click vao day", "Lien he ngay").

### Chinh sach quang cao — Compliance checklist

| Quy tac | Chi tiet | Vi pham = bi tu choi ads |
|---------|---------|-------------------------|
| Khong cam ket tuyet doi | Tranh "dam bao", "100%", "chac chan" | Co |
| Khong dung "mien phi" trong headline | Meta flag tu "mien phi" trong headline — dung trong body | Co |
| Khong dung "khuyen mai" qua nhieu | 1 lan trong body — khong lap | Co |
| Khong nhac den dac diem ca nhan | Tranh "Ban bi mun?", "Ban thua can?" — dung "Nhieu nguoi gap tinh trang..." | Co |
| Truoc/sau phai thuc te | Khong chinh sua anh truoc/sau qua muc | Co |
| Khong dung hinh anh nhay cam | Khong close-up mun, da bi thuong, co the lo lieu | Co |
| Disclaimer bat buoc | Thuc pham chuc nang, y te — can dong disclaimer | Co |

---

## Cau truc ket qua

### Thong tin chung

```markdown
# Copy Quang Cao: [Ten san pham/chien dich]
Ngay tao: [YYYY-MM-DD]
Nen tang: [Meta Ads / TikTok Ads / Google Ads]
Muc tieu: [Tin nhan / Lead / Traffic / Chuyen doi]
Doi tuong: [Mo ta ngan]
USP chinh: [1 cau]
```

---

### TOFU — Thu hut (Cold audience)

#### Bien the 1: [Ten goc do — VD: "Cham noi dau"]

| Thanh phan | Noi dung |
|------------|---------|
| **Trigger** | [Pain / Curiosity / Aspiration] |
| **Primary text (125 char)** | [Dong 1 — hien thi truoc "Xem them"] |
| **Primary text (day du)** | [Toan bo noi dung — 300–500 char] |
| **Headline** | [Toi da 40 char] |
| **Description** | [Toi da 30 char] |
| **CTA button** | [Tim hieu them / Gui tin nhan] |
| **Ghi chu hinh anh/video** | [Mo ta creative di kem] |

#### Bien the 2: [Ten goc do — VD: "Gay to mo"]

_(Cung cau truc bang nhu tren, khac goc do va trigger)_

---

### MOFU — Thuyet phuc (Warm audience)

#### Bien the 3: [Ten goc do — VD: "Social proof"]

| Thanh phan | Noi dung |
|------------|---------|
| **Trigger** | [Social proof / Authority] |
| **Primary text (125 char)** | [Dong 1] |
| **Primary text (day du)** | [Noi dung day du — nhan manh bang chung, review, so lieu] |
| **Headline** | [Toi da 40 char] |
| **Description** | [Toi da 30 char] |
| **CTA button** | [Gui tin nhan / Dat lich ngay] |
| **Ghi chu hinh anh/video** | [Mo ta creative — nen dung review/truoc-sau] |

#### Bien the 4: [Ten goc do — VD: "Chuyen gia"]

_(Cung cau truc, goc do khac)_

---

### BOFU — Chot don (Hot audience + Retarget)

#### Bien the 5: [Ten goc do — VD: "FOMO"]

| Thanh phan | Noi dung |
|------------|---------|
| **Trigger** | [FOMO / Social proof] |
| **Primary text (125 char)** | [Dong 1 — nhan manh khan cap, gioi han] |
| **Primary text (day du)** | [Noi dung day du — deadline, so luong, uu dai cu the] |
| **Headline** | [Toi da 40 char] |
| **Description** | [Toi da 30 char] |
| **CTA button** | [Dat lich ngay / Gui tin nhan / Mua ngay] |
| **Ghi chu hinh anh/video** | [Mo ta creative — nen co so lieu, countdown] |

#### Bien the 6: Retarget — [Ten goc do — VD: "Nhac lai"]

Danh rieng cho nguoi da nhan tin nhung chua dat lich / da xem nhung chua mua.

| Thanh phan | Noi dung |
|------------|---------|
| **Trigger** | [Pain + FOMO] |
| **Primary text (125 char)** | [Nhac lai — "Hom truoc ban hoi ve [dich vu]..."] |
| **Primary text (day du)** | [Noi dung — nhac lai noi dau, bo sung bang chung moi, uu dai gioi han] |
| **Headline** | [Toi da 40 char] |
| **Description** | [Toi da 30 char] |
| **CTA button** | [Gui tin nhan / Dat lich ngay] |
| **Ghi chu hinh anh/video** | [Creative khac voi ads lan 1 — tranh ad fatigue] |

---

### Bang tong hop 6 bien the

| # | Tang | Goc do | Trigger | Hook 125 char | CTA |
|---|------|--------|---------|--------------|-----|
| 1 | TOFU | [Goc do 1] | [Trigger] | [125 char] | [CTA] |
| 2 | TOFU | [Goc do 2] | [Trigger] | [125 char] | [CTA] |
| 3 | MOFU | [Goc do 3] | [Trigger] | [125 char] | [CTA] |
| 4 | MOFU | [Goc do 4] | [Trigger] | [125 char] | [CTA] |
| 5 | BOFU | [Goc do 5] | [Trigger] | [125 char] | [CTA] |
| 6 | BOFU | Retarget | [Trigger] | [125 char] | [CTA] |

### Huong dan A/B test

| Test | Bien the A | Bien the B | Chi so theo doi | Thoi gian test |
|------|-----------|-----------|----------------|---------------|
| Hook | Bien the 1 | Bien the 2 | CTR, CPMess | 3–5 ngay |
| CTA | Bien the 3 | Bien the 4 | Ti le chuyen doi | 3–5 ngay |
| Offer | Bien the 5 | Bien the 6 | ROAS, CPA | 5–7 ngay |

**Quy tac test:**
- Chi test 1 yeu to/lan (hook HOAC CTA HOAC offer — khong test cung luc)
- Budget test: toi thieu 200K/ngay/bien the
- Du lieu toi thieu: 1,000 impression hoac 50 click truoc khi ket luan
- Thang/thua: chenh lech >20% = co y nghia thong ke

---

## Lien ket skill lien quan

- **04-script-video** — Dung copy ads lam voice-over hoac text overlay cho video ads
- **02-brief-chien-dich** — Copy ads la mot phan cua brief chien dich tong the
- **09-insight-khach-hang** — Lay noi dau, ngon ngu cua khach de viet copy chinh xac
- **10-tinh-kpi-nguoc** — Tinh CPMess muc tieu de danh gia hieu qua copy

---

## Personal Brand Mode

> Mode nay tu dong kich hoat khi co `.agents/personal-brand-context.md`. Doc context file truoc — lay: niche, audience ca nhan, story arc, brand voice, monetization goal.

### Khac biet mode

| Yeu to | Mode A (SP) | Mode B (Personal brand) |
|--------|-------------|------------------------|
| Pheu | TOFU/MOFU/BOFU (sell) | Awareness / Trust / Authority / Soft sell |
| Goal | Conversion (mua) | Follower growth, engagement, inbound DM |
| Tone | Direct, USP-focused | Authentic, story-led, expert |
| CTA | "Mua ngay", "Inbox" | "Follow them", "Share neu thay dung" |
| Proof | Reviews, before-after | Personal track record, named drop |

### 6 bien the copy Personal Brand (thay vi 6 SP)

**2 Awareness (gioi thieu ban than - cold audience)**:

Bien the A1 (Founder angle):
- Primary text: "Toi la [ten], 10 nam build company B2B SaaS o VN. Tuan nay toi share 3 bai hoc dat gia nhat sau 5 lan that bai. [link bai]"
- Headline: "5 lan that bai dat tien"
- Description: "Tu CEO 200 nguoi"
- CTA: "Doc them"

Bien the A2 (Coach angle):
- Primary text: "Sau khi coach 200 founder VN, toi nhan ra 1 dieu: 90% sai cung 1 buoc o tuan dau. Toi viet that day du o day. [link]"
- Headline: "1 buoc 90% Founder VN sai"
- Description: "Sau 200 ca coach"
- CTA: "Tim hieu"

**2 Trust (mua trust - audience da follow 1-2 tuan)**:

Bien the T1: Personal story + lesson
Bien the T2: Industry insight + framework

**2 Soft Sell (audience warm, da co trust)**:

Bien the S1: Free resource (1-on-1 call, ebook, mini-course)
Bien the S2: Waitlist / cohort offer (FOMO nhe)

(Voi moi bien the, viet day du primary text, headline, description, CTA — example concrete cho coach Linh - Public Speaking Coach hoac founder Hung - SaaS Founder)

### 3 dieu kien CANH BAO truoc khi viet copy ads cho personal brand

1. **CANH BAO 1: Audience truoc khi ads.**
   - Khong nen chay ads tang follower < 500 follower huu co.
   - Vi sao: chua co social proof, ads khong convert.
   - Fix: tang follower huu co qua 500 truoc, sau do moi ads.

2. **CANH BAO 2: Niche xac dinh truoc khi ads.**
   - Khong chay ads khi niche con mo ho.
   - Vi sao: target audience sai, burn ngan sach.
   - Fix: chay skill 23 personal-brand-strategy → niche ro rang truoc.

3. **CANH BAO 3: Disclosure neu dung AI avatar.**
   - Quang cao thuong mai dung AI avatar PHAI disclose theo Nghi dinh 147/2024.
   - Reference: `references/ai-video-disclosure-vn.md` chuong 1.

---

## Checklist chat luong

Kiem tra truoc khi giao copy:

- [ ] Co du 6 bien the: 2 TOFU + 2 MOFU + 2 BOFU (gom 1 retarget)
- [ ] Dong 1 cua moi bien the khong vuot 125 ky tu
- [ ] Headline khong vuot 40 ky tu
- [ ] Moi bien the dung trigger cam xuc khac nhau
- [ ] CTA cu the, hanh dong duoc — khong chung chung
- [ ] Khong vi pham chinh sach quang cao (xem compliance checklist)
- [ ] Khong dung "mien phi" trong headline
- [ ] Khong nhac den dac diem ca nhan ("Ban bi...", "Ban thua...")
- [ ] Co ghi chu creative (hinh anh/video) di kem moi bien the
- [ ] Giong van phu hop nen tang (Meta vs TikTok vs Google)
- [ ] Co huong dan A/B test ro rang
- [ ] Retarget copy khac creative voi ads lan 1
- [ ] Moi bien the dung dung framework phu hop voi nhiet do audience (Cold/Warm/Hot)
- [ ] Khong co 2 bien the nao dung cung framework + cung hook → Andromeda risk
- [ ] Creative di kem moi bien the thuc su khac biet — khong chi doi mau/cat clip
