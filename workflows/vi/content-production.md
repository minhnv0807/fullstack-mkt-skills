# Workflow: San Xuat Noi Dung

> Tu insight den content san sang dang — quy trinh san xuat noi dung tuan/thang.

---

## Tong quan

```
Thoi gian: Lap lai hang tuan
Skills su dung: 4 skill
Output: Content san sang dang theo lich
```

---

## Luong chay tuan

```
Thu 2              Thu 3              Thu 4–5            Thu 6              Thu 7–CN
┌──────────┐      ┌──────────┐      ┌──────────┐      ┌──────────┐      ┌──────────┐
│ Review   │      │ 04       │      │ Quay +   │      │ 05       │      │ Len lich │
│ lich noi │─────▶│ Script   │─────▶│ Dung     │─────▶│ Copy ads │─────▶│ dang +   │
│ dung tuan│      │ video    │      │ video    │      │ (neu co) │      │ Setup    │
│ (tu 01)  │      │          │      │          │      │          │      │ ads      │
└──────────┘      └──────────┘      └──────────┘      └──────────┘      └──────────┘
   AI + Owner        AI                Team               AI              Team
```

---

## UML Sequence Diagram

```
┌──────┐        ┌──────────┐        ┌──────────┐        ┌──────────┐
│ MKT  │        │ Content  │        │    AI     │        │  UGC     │
│Owner │        │ Creator  │        │(Skill hệ)│        │ Creator  │
└──┬───┘        └────┬─────┘        └────┬──────┘        └────┬─────┘
   │                  │                   │                    │
   │  Review lich ND  │                   │                    │
   │  tuan (Thu 2)    │                   │                    │
   │──────┐           │                   │                    │
   │      │ Xem lich tu skill 01          │                    │
   │◀─────┘           │                   │                    │
   │                  │                   │                    │
   │  Phan cong       │                   │                    │
   │─────────────────▶│                   │                    │
   │                  │                   │                    │
   │  04: Script      │                   │                    │
   │  video (Thu 3)   │                   │                    │
   │─────────────────────────────────────▶│                    │
   │  2 phien ban A/B │                   │                    │
   │◀─────────────────────────────────────│                    │
   │                  │                   │                    │
   │  Gui script      │                   │                    │
   │─────────────────▶│                   │                    │
   │                  │──────────────────────────────────────▶│
   │                  │  Gui brief UGC    │                    │
   │                  │                   │                    │
   │                  │  Quay + Dung      │                    │
   │                  │  (Thu 4-5)        │                    │
   │                  │──────┐            │                    │
   │                  │      │ CapCut     │                    │
   │                  │◀─────┘            │                    │
   │                  │                   │            ┌───────│
   │                  │                   │            │ Quay  │
   │                  │                   │            │ UGC   │
   │                  │                   │            └──────▶│
   │                  │                   │                    │
   │  05: Copy ads    │                   │                    │
   │  (Thu 6)         │                   │                    │
   │─────────────────────────────────────▶│                    │
   │  6 bien the copy │                   │                    │
   │◀─────────────────────────────────────│                    │
   │                  │                   │                    │
   │  Setup ads +     │                   │                    │
   │  Len lich dang   │                   │                    │
   │  (Thu 7-CN)      │                   │                    │
   │─────────────────▶│                   │                    │
   │                  │                   │                    │
```

---

## Chi tiet tung buoc

### Thu 2 — Review lich noi dung tuan
**Nguon:** Lich noi dung thang (tu skill `01-lich-noi-dung`)
**Hanh dong:**
1. Xem lai cac bai can dang trong tuan
2. Xac nhan chu de, goc do, nguoi thuc hien
3. Dieu chinh neu co su kien moi hoac trend moi
4. Phan cong cu the: ai quay, ai viet, ai dung

### Thu 3 — Viet script video
**Skill:** `04-script-video`
**Input:** Chu de + goc do tu lich noi dung + san pham/dich vu
**Output:** 2 phien ban A/B cho moi video can quay
**Luu y:** Script phai co huong dan quay ky thuat de creator/nhan vien tu lam

### Thu 4–5 — Quay + Dung video
**Nguoi lam:** Content creator, nhan vien (EGC), UGC creator
**Hanh dong:**
1. Quay theo script (hoac ngau hung theo goc do)
2. Dung video bang CapCut (AI captions, auto edit)
3. Tao thumbnail + text overlay
4. Export dung kich thuoc tung kenh

### Thu 6 — Viet copy quang cao (neu can)
**Skill:** `05-copy-quang-cao`
**Input:** Video da dung + thong tin san pham + giai doan pheu
**Output:** 6 bien the copy (2 TOFU + 2 MOFU + 2 BOFU)
**Luu y:** Chi can khi co video/content chay paid ads

### Thu 7–CN — Len lich dang + Setup ads
**Hanh dong:**
1. Upload content len TikTok Studio, Meta Business Suite
2. Dat lich dang theo gio toi uu
3. Setup ads tren Meta/TikTok Ads Manager
4. Kiem tra pixel, tracking, UTM

---

## Ma tran tai su dung (1 video goc)

```
Video goc (1–3 phut)
│
├── Clip 1 (15s) — Hook manh nhat → TikTok
├── Clip 2 (30s) — Van de + giai phap → Reels
├── Clip 3 (60s) — Day du → YouTube Shorts
│
├── 5 anh screenshot → Carousel IG/FB
├── Quote card x3 → Story + Threads
│
├── Blog post (800 tu) → Website SEO
├── Email newsletter → Brevo
│
├── Caption FB → Fanpage
├── Caption TikTok → TikTok Brand
└── Zalo broadcast → Zalo OA
```

**Muc tieu: 1 noi dung goc → 7–10 phien ban phan phoi**

---

## Batch content — San xuat hang loat

### Ngay quay tap trung (1–2 ngay/thang)
Thay vi quay rai rac, dung 1–2 ngay de quay hang loat:

| Buoi | Thoi gian | So video | Loai |
|------|----------|----------|------|
| Sang | 9:00–12:00 | 5–8 video | Studio (san pham, tutorial) |
| Trua | 13:00–15:00 | 3–5 video | Behind the scenes, casual |
| Chieu | 15:00–17:00 | 3–5 video | UGC style, review |

**Ket qua:** 11–18 video goc = 77–126 content pieces cho ca thang.

### Content bank
Luu tat ca content chua dang vao folder co cau truc:

```
Content Bank/
├── Video goc/          # Video chua cat
├── Clip ngan/          # Da cat theo kich thuoc
├── Anh + Carousel/     # Anh da edit
├── Caption/            # Caption da viet
├── Da dang/            # Archive
└── Idea bank/          # Y tuong chua lam
```

---

## Tieu chuan chat luong content

### Video
- [ ] Hook 3 giay dau thu hut (co kiem tra?)
- [ ] Am thanh ro, khong on
- [ ] Anh sang du (ban ngay / den ring light)
- [ ] Phu de (auto caption CapCut)
- [ ] CTA ro rang cuoi video
- [ ] Kich thuoc dung kenh (9:16 TikTok/Reels, 1:1 FB feed)

### Copy (bai viet)
- [ ] 125 ky tu dau cham cam xuc
- [ ] Co CTA cu the
- [ ] Khong loi chinh ta
- [ ] Hashtag phu hop (3–5 TikTok, 5–10 IG)
- [ ] Khong vi pham chinh sach quang cao

### Hinh anh
- [ ] Chat luong cao (khong mo, khong pixel)
- [ ] Nhat quan brand (mau sac, font)
- [ ] Text doc duoc tren dien thoai
- [ ] Kich thuoc dung kenh
