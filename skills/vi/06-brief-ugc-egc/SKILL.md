---
name: 06-brief-ugc-egc
description: Tao brief chi tiet cho UGC (khach hang), EGC (nhan vien), KOC (creator tra phi) — gom huong dan quay, do/don't, quyen su dung, quan ly batch
metadata:
  version: 2.0.0
  category: content
triggers:
  - "brief creator"
  - "brief UGC"
  - "brief EGC"
  - "huong dan quay video nhan vien"
  - "brief KOC"
  - "brief seeding"
  - "quan ly creator"
output: file .md gom brief chi tiet theo loai (UGC/EGC/KOC), tieu chi chon creator, huong dan quay, hop dong quyen, bang quan ly batch
related:
  - 04-script-video
  - 05-copy-quang-cao
  - 01-lich-noi-dung
  - 03-danh-gia-hieu-suat
---

# Brief UGC / EGC / KOC

## Thu thap thong tin

Hoi toi da 4 cau truoc khi tao brief:

1. **San pham / dich vu gi?** Mo ta ngan, USP, gia, doi tuong khach hang.
2. **Loai creator nao?** UGC (khach hang that), EGC (nhan vien), KOC (creator tra phi). Neu khong chon — mac dinh UGC.
3. **Muc tieu noi dung?** TOFU (nhan biet), MOFU (thuyet phuc), BOFU (chot don). So luong video can.
4. **Ngan sach va thoi gian?** Ngan sach/video, deadline giao video, thoi gian chien dich.

---

## Nguyen tac cot loi

### Phan biet 3 loai creator

| Tieu chi | UGC (User) | EGC (Employee) | KOC (Key Opinion Consumer) |
|----------|-----------|----------------|--------------------------|
| Nguoi quay | Khach hang that | Nhan vien cong ty | Creator tra phi / doi san pham |
| Do tin cay | Cao nhat — khach that | Cao — nguoi trong cuoc | Trung binh — nhan dien la quang cao |
| Chi phi | Thap (san pham + voucher) | Luong nhan vien (da co) | 500K–10M/video tuy follower |
| Kiem soat noi dung | Thap | Cao | Trung binh — co brief nhung creator tu sang tao |
| Quyen su dung | Can xin phep | Mac dinh thuoc cong ty | Theo hop dong |
| Phu hop cho | Social proof, MOFU | Behind-the-scenes, employer branding | Reach, awareness, TOFU |

### Tieu chi chon creator

#### UGC — Khach hang

| Tieu chi | Yeu cau |
|----------|---------|
| Da su dung san pham | Bat buoc — co bang chung (don hang, check-in, review cu) |
| Chat luong camera | iPhone 11+ hoac tuong duong — video khong be, khong mo |
| Phong cach noi | Tu nhien, khong doc script cung — co cam xuc |
| Ngoai hinh | Phu hop doi tuong muc tieu (cung demographic) |
| Do san long | Dong y quay + cho phep su dung tren kenh thuong hieu |

#### EGC — Nhan vien

| Tieu chi | Yeu cau |
|----------|---------|
| Phong ban | Uu tien: sale, ky thuat, cham soc khach hang — nguoi tiep xuc khach truc tiep |
| Phong cach | Tu nhien, khong qua "corporate" — nhu ke chuyen cho ban nghe |
| Thiet bi | Dien thoai ca nhan (khong can may quay chuyen nghiep) |
| Tan suat | 2–4 video/thang/nguoi |
| Dong luc | Thuong theo view/engagement, ngay phep, qua tang |

#### KOC — Creator tra phi

| Tieu chi | Muc chap nhan |
|----------|--------------|
| Follower | Nano: 1K–10K / Micro: 10K–50K / Mid: 50K–200K |
| Engagement rate | >3% (nano), >2% (micro), >1.5% (mid) |
| Niche | Phu hop nganh hang (beauty, F&B, lifestyle, tech) |
| Content style | Tu nhien, khong "ads qua ro" — storytelling, review, daily vlog |
| Demographics keo | 70%+ follower la doi tuong muc tieu (do tuoi, gioi tinh, dia ly) |
| Lich su brand deal | Kiem tra — tranh creator da lam voi doi thu truc tiep trong 3 thang |

---

## Cau truc brief chi tiet

### Phan 1 — Tong quan

```markdown
# Brief [UGC/EGC/KOC]: [Ten san pham/chien dich]
Ngay tao: [YYYY-MM-DD]
Deadline giao video: [YYYY-MM-DD]
Loai creator: [UGC / EGC / KOC]
So luong video can: [X video]
Nen tang dang: [TikTok / Reels / YouTube Shorts / Tat ca]
```

### Phan 2 — Thong tin san pham

| Hang muc | Chi tiet |
|----------|---------|
| Ten san pham / dich vu | [Ten] |
| Mo ta 1 cau | [Mo ta ngan] |
| USP chinh (1–2 diem) | [Diem khac biet] |
| Gia | [Gia ban / Gia khuyen mai] |
| Doi tuong khach hang | [Gioi tinh, do tuoi, noi dau] |
| Link san pham | [URL hoac thong tin dat hang] |
| Hashtag bat buoc | [#TenThuongHieu, #TenChienDich] |

### Phan 3 — Do / Don't

| DO — Nen lam | DON'T — Khong lam |
|-------------|------------------|
| Noi tu nhien, nhu ke chuyen cho ban nghe | Khong doc script cung nhac |
| Nhac ten san pham / dich vu ro rang | Khong nhac ten doi thu |
| Show ket qua / trai nghiem that | Khong cam ket ket qua "100%", "dam bao" |
| Quay doc 9:16, anh sang tot | Khong quay ngang, khong quay toi |
| Nhac CTA cuoi video | Khong quen CTA |
| Dung am thanh ro, khong on | Khong quay o noi on ao |
| [Them theo san pham cu the] | Khong su dung nhac co ban quyen |

### Phan 4 — 3 goc do video (chon 1 hoac quay ca 3)

| Goc do | Mo ta | Hook goi y | Phu hop |
|--------|-------|-----------|---------|
| Goc do 1: [VD: Review that] | Ke lai trai nghiem su dung — truoc/sau | "Minh dung cai nay [X] tuan — ket qua day" | MOFU |
| Goc do 2: [VD: Day in my life] | Long ghep san pham vao sinh hoat hang ngay | "1 ngay cua minh — co thu nay khong the thieu" | TOFU |
| Goc do 3: [VD: So sanh] | So sanh voi phuong phap cu / san pham khac (khong nhac ten doi thu) | "Truoc minh dung cach nay — gio doi sang cai nay" | MOFU |

### Phan 5 — Cau truc video

| Timestamp | Noi dung | Ghi chu |
|-----------|---------|--------|
| [0–3s] | Hook — gay to mo, giu nguoi xem | Khong gioi thieu ban than |
| [3–10s] | Context — van de hoac tinh huong | Lien ket voi noi dau cua doi tuong |
| [10–25s] | San pham — show/demo/trai nghiem | Nhac ten san pham, show bao bi/dich vu |
| [25–35s] | Ket qua — truoc/sau, cam nhan | Thanh that, khong qua hoa my |
| [35–45s] | CTA — khuyen nghi hanh dong | Cu the: "Nhan tin fanpage de tu van" |

_(Dieu chinh timestamp theo thoi luong: 15s, 30s, 45s, 60s — tham khao 04-script-video.md)_

### Phan 6 — Huong dan quay ky thuat

| Hang muc | Yeu cau |
|----------|---------|
| Ti le khung hinh | 9:16 (doc) — bat buoc |
| Do phan giai | Toi thieu 1080p |
| Anh sang | Anh sang tu nhien hoac ring light — khong nguoc sang |
| Am thanh | Phong yen tinh, noi ro rang. Mic cai ao neu co |
| Do dai | [15s / 30s / 45s / 60s] — theo brief |
| So take | Quay toi thieu 2 take — gui ca 2 de chon |
| Canh cam | Close-up san pham + medium shot nguoi dung + B-roll |

### Phan 7 — Format giao nop

| Hang muc | Yeu cau |
|----------|---------|
| Dinh dang file | .mp4 (khong nen, khong filter nang) |
| Cach gui | Google Drive / Dropbox — KHONG gui qua Messenger/Zalo (nen chat luong) |
| Ten file | [TenCreator]_[GocDo]_[Take1/2]_[YYYYMMDD].mp4 |
| Deadline | [YYYY-MM-DD] truoc 18:00 |
| Nguoi nhan | [Ten + so dien thoai / email] |
| Review | Thuong hieu review trong 48h — phan hoi chinh sua (neu co) trong 24h |

---

## Hop dong quyen su dung noi dung

### Template ngan (cho UGC / KOC)

```markdown
THOA THUAN SU DUNG NOI DUNG

Ben A (Thuong hieu): [Ten cong ty]
Ben B (Creator): [Ten creator]
Ngay ky: [YYYY-MM-DD]

1. NOI DUNG: [So luong] video ve [san pham/dich vu], thoi luong [Xs].
2. QUYEN SU DUNG: Ben A duoc quyen su dung noi dung tren:
   - [ ] Kenh thuong hieu (fanpage, TikTok, IG)
   - [ ] Quang cao tra phi (Meta Ads, TikTok Ads)
   - [ ] Website, landing page
   - [ ] Kenh offline (event, POS)
3. THOI HAN: [X thang] ke tu ngay giao noi dung.
4. CHINH SUA: Ben A duoc phep cat, ghep, them text overlay. Khong duoc thay doi noi dung loi noi.
5. THANH TOAN: [So tien] — thanh toan trong [X ngay] sau khi giao noi dung dat yeu cau.
6. DOC QUYEN: Creator khong quay cho doi thu truc tiep trong [X thang].

Chu ky Ben A: _______________
Chu ky Ben B: _______________
```

### Luu y phap ly

- Voi UGC (khach hang): Xin phep bang tin nhan co screenshot — luu lai lam bang chung
- Voi KOC: Hop dong viet — ca 2 ben ky (dien tu hoac giay)
- Voi EGC: Khong can hop dong rieng — noi dung tao trong gio lam viec thuoc cong ty (ghi ro trong hop dong lao dong)
- Quyen hinh anh: Creator dong y cho dung hinh anh ca nhan — ghi ro trong hop dong

---

## Co cau thanh toan

### Bang gia tham khao (thi truong VN 2025–2026)

| Hang creator | Follower | Gia/video (VND) | Ghi chu |
|-------------|---------|----------------|--------|
| Nano KOC | 1K–10K | 500K–2M | Thuong doi san pham + tien |
| Micro KOC | 10K–50K | 2M–5M | Co the barter (san pham) neu gia tri tuong duong |
| Mid KOC | 50K–200K | 5M–15M | Thuong chi nhan tien mat |
| UGC (khach hang) | Khong yeu cau | San pham + voucher 200K–500K | Khong tra tien — tra gia tri |
| EGC (nhan vien) | Khong yeu cau | 0 (luong da co) + thuong 200K–500K/video | Thuong theo hieu suat video |

### Mo hinh thanh toan

| Mo hinh | Mo ta | Phu hop |
|---------|-------|---------|
| Per video | Tra co dinh/video — don gian, de quan ly | KOC nano/micro, so luong it |
| Revenue share | Tra % doanh thu tu video — dong luc cao | KOC co anh huong, san pham co tracking |
| Product exchange | Doi san pham/dich vu — khong tra tien | UGC, nano KOC, san pham gia tri cao |
| Retainer | Tra thang — cam ket so luong video/thang | Creator dai han, 4+ video/thang |

---

## Theo doi hieu suat creator

### Bang theo doi tung creator

| Creator | Nen tang | Video | View | Like | Comment | Share | Save | ER | CPV | Lead | Doanh thu |
|---------|---------|-------|------|------|---------|-------|------|----|-----|------|-----------|
| [Ten 1] | TikTok | [Link] | | | | | | | | | |
| [Ten 2] | Reels | [Link] | | | | | | | | | |
| [Ten 3] | TikTok | [Link] | | | | | | | | | |

### Chi so danh gia

| Chi so | Kem | Trung binh | Tot | Xuat sac |
|--------|-----|------------|-----|----------|
| Engagement rate (ER) | <2% | 2–5% | 5–10% | >10% |
| Save rate | <0.5% | 0.5–2% | 2–5% | >5% |
| CPV (chi phi/view) | >500d | 200–500d | 100–200d | <100d |
| Video completion rate | <20% | 20–40% | 40–60% | >60% |

### Quy dinh re-book

- ER > 5% + Save rate > 2% → Re-book ngay cho dot tiep theo
- ER 2–5% + noi dung tot → Re-book voi goc do khac
- ER < 2% → Khong re-book — tim creator moi

---

## Quan ly batch (10+ creator cung luc)

### Bang quan ly tien do

| # | Creator | Loai | Trang thai | Ngay gui brief | Ngay giao video | Review | Duyet | Dang | Ghi chu |
|---|---------|------|-----------|---------------|----------------|--------|-------|------|--------|
| 1 | [Ten] | KOC | [Chua gui / Da gui / Dang quay / Da giao / Can chinh sua / Da duyet / Da dang] | | | | | | |
| 2 | | | | | | | | | |
| 3 | | | | | | | | | |

### Trang thai video

```
Chua gui brief → Da gui brief → Dang quay → Da giao video
  → Review (48h) → Can chinh sua → Chinh sua xong → Da duyet → Da dang
```

### Quy trinh quan ly

1. **Chuan bi batch:** Tao danh sach creator + brief rieng cho tung nguoi (cung template, khac goc do)
2. **Gui brief:** Gui brief + san pham (neu can) cung luc — ghi nhan ngay gui
3. **Follow-up:** Nhac nho 3 ngay truoc deadline neu chua giao
4. **Review:** Xem video trong 48h — phan hoi chinh sua cu the (timestamp + noi dung can sua)
5. **Duyet:** Confirm final — gui len kenh hoac chay ads
6. **Theo doi:** Cap nhat hieu suat hang tuan — quyết dinh re-book

### Mau tin nhan follow-up

```
[Follow-up nhac nho]
"Chao [Ten], brief ben [Thuong hieu] gui hom [ngay] — ban quay den dau roi? 
Deadline [ngay] nhe. Neu can ho tro gi cu nhan tin nha!"

[Phan hoi chinh sua]
"Video tot lam! Co 2 cho minh muon chinh:
1. [0:05] — them text overlay ten san pham
2. [0:25] — CTA doi thanh 'Nhan tin fanpage de tu van'
Ban chinh giup trong 24h nha — cam on nhieu!"
```

---

## Lien ket skill lien quan

- **04-script-video** — Script chi tiet cho creator tham khao khi quay
- **05-copy-quang-cao** — Dung video UGC/KOC lam creative cho ads — can copy di kem
- **01-lich-noi-dung** — Xep lich dang video creator vao lich noi dung tong
- **03-danh-gia-hieu-suat** — Danh gia hieu suat creator de quyet dinh re-book

---

## Checklist chat luong

Kiem tra truoc khi gui brief:

- [ ] Ro loai creator: UGC, EGC, hay KOC
- [ ] Co thong tin san pham day du (ten, USP, gia, doi tuong)
- [ ] Co bang DO / DON'T cu the
- [ ] Co it nhat 3 goc do video de creator chon
- [ ] Co cau truc video theo timestamp
- [ ] Co huong dan quay ky thuat (khung hinh, anh sang, am thanh)
- [ ] Co format giao nop ro rang (dinh dang, cach gui, deadline)
- [ ] Co hop dong / thoa thuan quyen su dung noi dung
- [ ] Co co cau thanh toan ro rang
- [ ] Co bang theo doi hieu suat cho tung creator
- [ ] Neu batch 10+ creator — co bang quan ly tien do
- [ ] Khong yeu cau creator noi dieu vi pham chinh sach quang cao
