---
name: 24-ai-avatar-production
description: "Pipeline AI Avatar production deep dive — 3 tier tools (Free/Pro/Enterprise), 4 workflow (single avatar / translate da ngon ngu / batch production / hybrid real+AI), voice clone protocol, anti-detection cho FB/IG/TikTok VN, ethics & disclosure VN (Nghi dinh 147/2024), QA Score 100 diem. Tools: HeyGen, Synthesia, ElevenLabs, Captions, Rask AI, Vbee. Trigger: 'tao avatar AI', 'video AI HeyGen', 'voice clone ElevenLabs', 'lipsync Captions', 'AI video translate', 'talking head AI', 'batch video AI', 'pipeline AI avatar'."
metadata:
  version: 1.0.0
  category: content
license: MIT
triggers:
  - "tao avatar AI"
  - "video AI HeyGen"
  - "voice clone ElevenLabs"
  - "lipsync Captions"
  - "AI video translate"
  - "talking head AI"
  - "batch video AI"
  - "pipeline AI avatar"
related:
  - 25-voice-clone-podcast
  - 04-script-video
  - 26-thought-leadership-content
  - references/ai-avatar-tools-vn
  - references/voice-clone-prompts-vn
  - references/ai-video-disclosure-vn
---

# AI Avatar Production — Pipeline 3 Tier, 4 Workflow, QA Score

> **Skill nay la flagship cua cluster AI Content.**
> Bao gom toan bo quy trinh tao video AI Avatar tu zero den publish,
> voice clone, anti-detection, va chuan phap ly VN.

---

## 1. Cho nguoi moi (Newbie Guide)

### AI Avatar la gi?

AI Avatar la video co hinh ban (hoac hinh dai dien) nhung AI noi thay.
Ban chi can 1 buc anh hoac 1 video selfie ngan — AI se tao video voi
giong noi, cu chi, va bieu cam tu nhien. Khong can quay phim, khong can
phong thu, khong can dien vien.

### Can gi de bat dau?

| Phuong phap | Yeu cau | Chat luong |
|-------------|---------|------------|
| Anh chan dung | 1 anh mat thang, nen sach, 1024×1024+ | Trung binh — moi chua tu nhien |
| Video selfie | 1 video 30s, nhin thang cam, noi chuyen tu nhien | Tot — lipsync chinh xac hon |
| Custom avatar | Quay 2-5 phut voi teleprompter + mic roi | Xuat sac — gan nhu nguoi that |

**Thiet bi toi thieu:** Dien thoai co camera truoc HD + mic roi (hoac tai nghe co mic).

### Mat bao lau?

- **1 video don (60s):** 30-60 phut (gom script + render)
- **Batch 10 video:** 1-2 ngay
- **Batch 30 video:** 4-5 ngay (co quy trinh toi uu)

### Chi phi?

| Tier | USD/thang | VND/thang (uoc tinh) | So video |
|------|-----------|----------------------|----------|
| Free | $0 | 0d | 1-3 video, co watermark |
| Pro | $30-100 | 750K-2.5M | 10-30 video, no watermark |
| Enterprise | $200-500+ | 5M-12.5M+ | 30+ video, custom avatar, API |

### 5 loi thuong gap khi moi bat dau

1. **Lipsync lech nhip:** Nguyen nhan — script qua nhanh hoac giong AI chua match. Fix: giam toc do noi 10-15%, dung voice clone thay voice mac dinh.
2. **Giong khong giong minh:** Nguyen nhan — sample qua ngan hoac nhieu tap am. Fix: thu lai 3-5 phut trong phong yen tinh, doc doan van co nhieu am khac nhau.
3. **Video bi flag "AI content":** Nguyen nhan — nen tang phat hien pattern AI. Fix: xem muc Anti-detection ben duoi.
4. **Video bi mo/nhoe:** Nguyen nhan — anh dau vao chat luong thap. Fix: dung anh toi thieu 1024×1024, anh sang tu nhien, khong filter.
5. **Render lau qua:** Nguyen nhan — tool free co hang doi dai. Fix: render gio thap diem (sang som VN = dem My) hoac nang cap Pro.

---

## 2. Thu thap thong tin

Hoi toi da 4 cau truoc khi bat dau:

1. **Muc dich su dung?** Brand awareness / Sales / Giao duc / Noi bo?
2. **Nen tang chinh?** TikTok / YouTube / Facebook / Instagram / LinkedIn / Zalo?
3. **Ngan sach tier?** Free ($0) / Pro ($30-100) / Enterprise ($200+)?
4. **So luong video mong muon/thang?** 1-5 / 10-30 / 30+?

> Dua tren 4 cau tra loi, tu dong chon Tier + Workflow phu hop.

---

## 3. Quyet dinh tier — Tool & Chi phi

| Tier | Tool goi y | Gia/thang | Chat luong | Gioi han | Phu hop |
|------|-----------|-----------|------------|----------|---------|
| **Free** | Captions Free, HeyGen Trial, D-ID Trial | $0 | 6/10 — watermark, gioi han thoi luong | 1-5 video, max 60s/video | Ca nhan test, freelancer moi |
| **Pro** | HeyGen Creator ($29), Synthesia Starter ($29), ElevenLabs Pro ($22) | $30-100 | 8/10 — no watermark, HD | 10-30 video, max 5 phut/video | SME, agency nho, content creator |
| **Enterprise** | HeyGen Business ($89+), Synthesia Enterprise (custom) | $200-500+ | 9.5/10 — custom avatar, API, priority render | 30+ video, khong gioi han | Agency lon, brand lon, e-learning |

**Goi y nhanh:**
- **Moi bat dau:** HeyGen Trial (1 video free, trai nghiem day du)
- **Nghiem tuc nhung ngan sach thap:** Captions Pro ($10/thang) cho lipsync + ElevenLabs Starter ($5) cho voice
- **Scale nhanh:** HeyGen Creator + ElevenLabs Pro = combo tot nhat gia/chat luong
- **Enterprise VN:** Lien he Vbee (voice AI tieng Viet tot nhat) + HeyGen Business

---

## 4. Workflow 1: Single Avatar Production

> 1 video don — tu script den publish trong 30-60 phut.

### Quy trinh 6 buoc

| Buoc | Viec lam | Tool goi y | Thoi gian |
|------|---------|-----------|-----------|
| 1. Script | Viet script 150-300 tu (60s video) | Skill `04-script-video` | 10 phut |
| 2. Voice | Tao voice hoac dung voice clone | ElevenLabs / Vbee / HeyGen Voice | 5 phut |
| 3. Avatar | Chon avatar co san hoac upload anh/video | HeyGen / Synthesia / D-ID | 3 phut |
| 4. Render | Ghep voice + avatar, chon nen, gesture | Tool da chon o buoc 3 | 5-15 phut (render) |
| 5. QA | Kiem tra theo QA Score 100 diem (muc 12) | Manual review | 5 phut |
| 6. Publish | Export MP4 → dang len nen tang | Manual / Scheduler | 2 phut |

### Script template cho AI Avatar (60s)

```
[HOOK — 3s] Mot cau gay to mo, dat van de
[PROBLEM — 10s] Mo ta van de khach hang gap
[SOLUTION — 25s] Giai phap cua ban, 2-3 diem chinh
[PROOF — 12s] So lieu, testimonial, ket qua
[CTA — 10s] Hanh dong cu the: "Nhan link bio de..."
```

### Output template

```markdown
## Video AI Avatar — [Ten san pham] — [Ngay]
- **Script:** [Noi dung]
- **Voice:** [Tool] — [Voice ID / Clone name]
- **Avatar:** [Tool] — [Avatar ID / Custom]
- **Resolution:** 1080×1920 (9:16) hoac 1920×1080 (16:9)
- **Duration:** [X]s
- **QA Score:** [X]/100
- **Publish:** [Nen tang] — [Link]
```

---

## 5. Workflow 2: Translate da ngon ngu

> 1 video goc (VN) → nhieu ngon ngu (EN, TH, ID, JA) cho thi truong Dong Nam A + quoc te.

### Use case

- Brand VN muon mo rong sang Thai Lan, Indonesia, Philippines
- Khoa hoc online can ban da ngon ngu
- Agency lam video cho client quoc te

### Tool comparison — Translate & Lipsync

| Tool | Ngon ngu | Lipsync | Gia | Luu y |
|------|---------|---------|-----|-------|
| Rask AI | 130+ ngon ngu | Tot (SyncLabs tech) | $50/thang (Pro) | Tot nhat cho translate hien tai |
| HeyGen Translate | 40+ ngon ngu | Kha | Co trong goi Creator+ | Tich hop san, tien loi |
| Synthesia Translate | 35+ ngon ngu | Kha | Co trong goi Enterprise | Phu hop e-learning |

### Quy trinh

1. Tao video goc bang tieng Viet (Workflow 1)
2. Upload len tool translate (Rask AI khuyen dung)
3. Chon ngon ngu dich — tool tu dong dich + lipsync
4. Review ban dich (nho nguoi ban xu check)
5. Export va publish tung thi truong

**Luu y quan trong voi tieng Viet:**
- Lipsync tieng Viet chua hoan hao (am vuc va thanh dieu phuc tap)
- Workaround: quay goc bang tieng Anh → translate nguoc ve tieng Viet
- Hoac: dung voice clone tieng Viet (Vbee) + avatar rieng thay vi translate

> **Xem chi tiet tai `references/ai-avatar-tools-vn.md` phan Translate.**

---

## 6. Workflow 3: Batch Production

> 30 video trong 5 ngay — quy trinh assembly line.

### Timeline chi tiet

| Ngay | Viec lam | Output | Tool |
|------|---------|--------|------|
| **Day 1** | Script batch — viet 10 scripts theo template | 10 scripts (.md) | Skill `04-script-video` + AI assist |
| **Day 2** | Voice batch — render 10 audio files | 10 audio (.mp3) | ElevenLabs API / Vbee API |
| **Day 3** | Avatar batch — upload audio + avatar, queue render | 10 video dang render | HeyGen Batch / Synthesia |
| **Day 4** | QA batch — review 10 video, fix loi, re-render | 10 video da QA | Manual + QA Score |
| **Day 5** | Publish batch — export, add caption, schedule post | 10 video published | Buffer / Later / Thu cong |

> Lap lai 3 tuan lien tiep = 30 video. Hoac scale Day 1-2 len 15 scripts/tuan.

### Chi phi uoc tinh batch 30 video/thang

| Tier | Tool combo | Chi phi/thang | Chi phi/video |
|------|-----------|--------------|---------------|
| Free | HeyGen Trial + Captions Free | $0 (gioi han 3-5 video) | $0 (nhung co watermark) |
| Pro | HeyGen Creator + ElevenLabs Pro | ~$51 (~1.3M VND) | ~$1.7 (~42K VND) |
| Enterprise | HeyGen Business + ElevenLabs Scale | ~$189 (~4.7M VND) | ~$6.3 (~157K VND) |

### Tips toi uu batch

- **Script template hoa:** Tao 3-5 script framework, chi thay noi dung core
- **Voice nhat quan:** Dung 1 voice clone cho toan bo series
- **Render gio thap diem:** Queue render 22h-6h (VN) de giam thoi gian cho
- **QA checklist:** In QA Score ra giay, check tung video nhu day chuyen

---

## 7. Workflow 4: Hybrid Real + AI

> Ket hop mat that (quay thuc) + AI body — tang trust va giam thoi gian san xuat.

### Use case

- **Format 1:** Real face intro 5s + AI body 55s (tiet kiem thoi gian quay)
- **Format 2:** AI video ngay thuong + Real video cuoi tuan (can bang chat luong/effort)
- **Format 3:** Real talking head + AI B-roll (chuyen nghiep nhu studio)

### Ky thuat ghep Hybrid

1. **Quay intro thuc:** 5-10s, nhin thang cam, chao hoi tu nhien
2. **Tao AI phan con lai:** Dung cung outfit, cung background (hoac green screen)
3. **Ghep trong CapCut/Premiere:** Cut chinh xac, them transition mem
4. **Color match:** Chinh mau AI giong footage thuc (LUT hoac manual)

### Tool phu hop

| Phan | Tool | Luu y |
|------|------|-------|
| Real face lipsync | Captions | Sua loi noi trong video that |
| AI body | HeyGen / Synthesia | Match outfit voi footage thuc |
| Ghep | CapCut (free) / Premiere | Transition mem, color match |
| Color grade | CapCut filter / DaVinci Resolve (free) | Match tone giua real va AI |

> **Loi khuyen:** Hybrid tang trust dang ke — khach hang thay mat that o dau video
> roi AI phan con lai rat muot. Hieu qua engagement tang 20-35% so voi full AI.

---

## 8. Voice Clone Protocol

### Yeu cau sample giong noi

| Tieu chi | Yeu cau | Tai sao |
|----------|---------|---------|
| Thoi luong | 3-5 phut | Du data de AI hoc giong |
| Chat luong | WAV/FLAC, 44.1kHz+, mono | Giam nhieu, tang do chinh xac |
| Moi truong | Phong yen tinh, khong echo | Tap am lam giam chat luong clone |
| Noi dung doc | Van ban co nhieu am khac nhau (a, e, o, u, i) | AI can nghe du cac am vuc |
| Cam xuc | Doc binh thuong, tu nhien, khong dien | AI clone giong "trung tinh" tot nhat |

### Tool comparison — Voice Clone

| Tool | Tot nhat cho | Gia voice clone | Chat luong VN | Luu y |
|------|-------------|----------------|---------------|-------|
| ElevenLabs | Tieng Anh, da ngon ngu | Tu $5/thang (Starter) | 7/10 | Tot nhat tong the, VN kha |
| Vbee | Tieng Viet | Lien he bao gia | 9/10 | Tot nhat cho tieng Viet |
| HeyGen Voice | Dung trong HeyGen | Co trong goi Creator+ | 6/10 | Tien loi neu da dung HeyGen |
| Resemble AI | Enterprise, API | Tu $99/thang | 6/10 | API manh, chat luong on |

### Consent form template

> **BAT BUOC** truoc khi clone giong bat ky ai.

```
DONG Y SU DUNG GIONG NOI

Toi, [HO TEN], dong y cho [TEN CONG TY/APP] su dung giong noi
cua toi cho muc dich: [MO TA CU THE — vd: tao video marketing
cho san pham X tren nen tang Y].

Thoi han: [X thang / Vo thoi han / Den khi rut dong y]
Ngay ky: [DD/MM/YYYY]
Chu ky: _______________
```

> **Reference:** Xem chi tiet `references/voice-clone-prompts-vn.md`

---

## 9. Avatar Setup Checklist

Truoc khi quay/upload video hoac anh cho AI avatar:

- [ ] **Anh sang:** Anh sang tu nhien hoac softbox, khong bong cung tren mat
- [ ] **Background:** Nen don sac (trang/xam) hoac nen that (van phong, cua hang)
- [ ] **Trang phuc:** Phu hop thuong hieu, tranh hoa tiet nho soc (gay nhieu AI)
- [ ] **Framing:** Tu nguc tro len, mat o 1/3 tren khung hinh
- [ ] **Eye contact:** Nhin thang vao camera (khong nhin man hinh)
- [ ] **Cu chi:** Tu nhien, tay co the de ban hoac gesture nhe
- [ ] **Resolution:** Toi thieu 1080p (1920×1080), khuyen dung 4K
- [ ] **Aspect ratio:** 9:16 (TikTok/Reels), 16:9 (YouTube), 1:1 (Feed)
- [ ] **File format:** MP4 (H.264) cho video, PNG/JPG cho anh
- [ ] **Backup:** Luu file goc tren cloud (Google Drive / OneDrive) truoc khi upload tool

---

## 10. Anti-detection cho FB/IG/TikTok VN

### 5 dau hieu AI bi detect va cach fix

| Dau hieu | Platform hay bat | Cach fix |
|----------|-----------------|---------|
| Mat "cung", khong nhap nhay tu nhien | FB, IG | Dung video selfie thay anh; chon avatar co micro-expression |
| Giong noi deu deu, khong co ngat nghi | TikTok, FB | Dung voice clone (co ngat tu nhien) thay TTS mac dinh |
| Background tinh hoan toan | FB, IG | Them nhieu nhe (grain), hoac dung background that |
| Chuyen dong co lap (chi co mieng) | TikTok | Chon avatar co gesture (tay, dau); dung HeyGen v3+ |
| Metadata chua tag AI tool | YouTube (monetize) | Export bang CapCut (xoa metadata goc); them color grade |

### Ky thuat tang "human feel"

1. **Them film grain/noise:** 2-5% noise trong CapCut hoac Premiere
2. **Zoom va crop:** Ken hinh 5-10% va them chuyen dong nhe (Ken Burns)
3. **Color grade:** Ap LUT phim hoac chinh tay — tranh mau "sach qua"
4. **Text overlay:** Them subtitle, callout, sticker che bot vung AI yeu
5. **B-roll insert:** Chen 2-3 doan b-roll (san pham, lifestyle) moi 15-20s
6. **Sound design:** Them nhac nen + SFX nhe (tang immersion, che giong AI)

### Theo nen tang

- **TikTok:** Thoang nhat — uu tien noi dung hay hon kiem tra AI
- **Facebook/Instagram:** Kiem tra kha — can chau chuot anti-detection
- **LinkedIn:** Hau nhu khong detect — phu hop nhat cho AI avatar
- **YouTube:** Nghiem voi video monetize — can disclose theo YPP policy

> **CANH BAO:** KHONG BAO GIO dung AI avatar de gia mao (impersonate)
> nguoi khac. Day la vi pham phap luat va se bi khoa tai khoan vinh vien.

---

## 11. Ethics & Disclosure VN

### Khung phap ly 2024-2025

| Van ban | Yeu cau chinh |
|---------|--------------|
| **Nghi dinh 147/2024/ND-CP** | Bat buoc disclose khi dung AI cho quang cao thuong mai |
| **Luat Quang cao 2012 (sua doi 2024)** | Cam thong tin sai lech ve nguon goc san pham/dich vu |
| **YouTube YPP Policy** | Bat buoc gan nhan "Altered content" neu dung AI realistic |

### 3 tang disclosure

| Tang | Khi nao | Vi du |
|------|---------|-------|
| **BAT BUOC** | Quang cao thuong mai (ads tra tien, KOL co tra phi) | "Video nay su dung cong nghe AI Avatar" |
| **NEN CO** | Content thuong (organic post, video giao duc) | "Hinh anh/giong noi duoc ho tro boi AI" |
| **TUY CHON** | Test noi bo, prototype, demo | Khong bat buoc nhung nen ghi chu |

### Template disclosure (copy-paste)

```
Tieng Viet: "Video nay su dung cong nghe AI Avatar de tao hinh anh va giong noi."
Tieng Anh: "This video uses AI Avatar technology for visuals and voice."
```

**Vi tri dat:** Mo ta video (description), 3 giay dau video (text overlay),
hoac tag "AI Generated" cua nen tang (neu co).

> **Reference:** Xem day du `references/ai-video-disclosure-vn.md`

---

## 12. QA Score — 100 diem

### Bang cham diem

| # | Tieu chi | Diem | Mo ta |
|---|---------|------|-------|
| 1 | Lipsync | /10 | Mieng khop voi loi noi, khong lech qua 0.2s |
| 2 | Voice match | /10 | Giong noi giong nguoi that (neu clone) hoac tu nhien (neu TTS) |
| 3 | Visual quality | /10 | Hinh anh sac net, khong artifact, khong nhoe |
| 4 | Background | /10 | Nen phu hop context, khong bi loi render |
| 5 | Lighting | /10 | Anh sang deu, khong bong la, match voi nen |
| 6 | Gesture | /10 | Cu chi tu nhien, khong giat, co chuyen dong tay/dau |
| 7 | Script flow | /10 | Noi dung mach lac: Hook → Problem → Solution → CTA |
| 8 | Disclosure | /10 | Co gan nhan AI dung quy dinh (muc 11) |
| 9 | Platform fit | /10 | Dung aspect ratio, thoi luong, format cua nen tang |
| 10 | CTA | /10 | Loi keu goi hanh dong ro rang, de thuc hien |

### Huong dan cham

| Muc | Diem | Hanh dong |
|-----|------|----------|
| **Xuat sac** | 90-100 | Publish ngay |
| **Tot** | 70-89 | Publish duoc, ghi chu cai thien lan sau |
| **Can fix** | 50-69 | Sua cac muc duoi 7 diem roi re-render |
| **Lam lai** | <50 | Review lai script + voice + avatar tu dau |

### Reference

- `references/ai-avatar-tools-vn.md` — So sanh chi tiet tools theo tung tieu chi
- `references/voice-clone-prompts-vn.md` — Prompt va sample scripts cho voice clone
- `references/ai-video-disclosure-vn.md` — Huong dan phap ly day du

---

> **Skill chain:** Skill nay thuong duoc goi cung `04-script-video` (viet script)
> va `25-voice-clone-podcast` (clone giong noi). Xem CLAUDE.md de biet workflow day du.
