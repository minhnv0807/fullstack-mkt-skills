# Workflow: Chay Chien Dich A-Z

> Tu y tuong den ra mat — chuoi skill tu dong chay lien tuc.

---

## Tong quan

```
Thoi gian: 14–21 ngay
Skills su dung: 7 skill
Output: 10+ file .md san sang trien khai
```

---

## Luong chay

```
Buoc 1          Buoc 2          Buoc 3          Buoc 4          Buoc 5          Buoc 6          Buoc 7
┌──────────┐   ┌──────────┐   ┌──────────┐   ┌──────────┐   ┌──────────┐   ┌──────────┐   ┌──────────┐
│ 08       │   │ 09       │   │ 00       │   │ 02       │   │ 01+04+05 │   │ 06       │   │ 11+12    │
│ Nghien   │──▶│ Insight  │──▶│ Ke hoach │──▶│ Brief    │──▶│ Content  │──▶│ Brief    │──▶│ Thiet    │
│ cuu doi  │   │ khach    │   │ MKT toan │   │ chien    │   │ Lich+    │   │ UGC/EGC  │   │ lap kenh │
│ thu      │   │ hang     │   │ dien     │   │ dich     │   │ Script+  │   │          │   │ +Landing │
│          │   │          │   │          │   │          │   │ Copy     │   │          │   │          │
└──────────┘   └──────────┘   └──────────┘   └──────────┘   └──────────┘   └──────────┘   └──────────┘
  Ngay 1-2       Ngay 2-3       Ngay 3-5       Ngay 5-7       Ngay 7-12      Ngay 10-14     Ngay 12-18
```

---

## UML Sequence Diagram

```
┌──────┐        ┌──────────┐        ┌──────────┐        ┌──────────┐
│ MKT  │        │ Content  │        │    AI     │        │Leadership│
│Owner │        │  Team    │        │(Skill hệ)│        │          │
└──┬───┘        └────┬─────┘        └────┬──────┘        └────┬─────┘
   │                  │                   │                    │
   │  08: Nghien cuu  │                   │                    │
   │  doi thu         │                   │                    │
   │─────────────────────────────────────▶│                    │
   │  SWOT + Map + Gap│                   │                    │
   │◀─────────────────────────────────────│                    │
   │                  │                   │                    │
   │  09: Insight KH  │                   │                    │
   │─────────────────────────────────────▶│                    │
   │  Persona + JTBD  │                   │                    │
   │◀─────────────────────────────────────│                    │
   │                  │                   │                    │
   │  00: Ke hoach MKT│                   │                    │
   │─────────────────────────────────────▶│                    │
   │  Plan 7 phan     │                   │                    │
   │◀─────────────────────────────────────│                    │
   │                  │                   │                    │
   │  Trinh ke hoach  │                   │                    │
   │─────────────────────────────────────────────────────────▶│
   │  Duyet           │                   │                    │
   │◀─────────────────────────────────────────────────────────│
   │                  │                   │                    │
   │  02: Brief CD    │                   │                    │
   │─────────────────────────────────────▶│                    │
   │  Brief 9 phan    │                   │                    │
   │◀─────────────────────────────────────│                    │
   │                  │                   │                    │
   │  Chia se brief   │                   │                    │
   │─────────────────▶│                   │                    │
   │                  │                   │                    │
   │                  │  01+04+05:        │                    │
   │                  │  Content song song│                    │
   │                  │──────────────────▶│                    │
   │                  │  Lich+Script+Copy │                    │
   │                  │◀─────────────────│                    │
   │                  │                   │                    │
   │                  │  06: Brief UGC    │                    │
   │                  │──────────────────▶│                    │
   │                  │  Brief creator    │                    │
   │                  │◀─────────────────│                    │
   │                  │                   │                    │
   │  11+12: Kenh+LP  │                   │                    │
   │─────────────────────────────────────▶│                    │
   │  Checklist setup │                   │                    │
   │◀─────────────────────────────────────│                    │
   │                  │                   │                    │
   │  ═══ LAUNCH ═══  │                   │                    │
   │                  │                   │                    │
```

---

## Chi tiet tung buoc

### Buoc 1 — Nghien cuu doi thu (Ngay 1–2)
**Skill:** `08-nghien-cuu-doi-thu`
**Input:** Ten nganh, san pham, 2–3 doi thu da biet
**Output:** `nghien-cuu-doi-thu-[ten]-[date].md`
**Nguoi duyet:** Marketing Owner
**Tieu chi chuyen buoc:** Da xac dinh 3 tang doi thu + khoang trong thi truong

### Buoc 2 — Insight khach hang (Ngay 2–3)
**Skill:** `09-insight-khach-hang`
**Input:** Ket qua buoc 1 + thong tin khach hang hien co
**Output:** `insight-khach-hang-[ten]-[date].md`
**Nguoi duyet:** Marketing Owner
**Tieu chi chuyen buoc:** Co it nhat 1 insight that su (khong phai observation)

### Buoc 3 — Ke hoach MKT toan dien (Ngay 3–5)
**Skill:** `00-ke-hoach-mkt`
**Input:** Ket qua buoc 1 + buoc 2 + thong tin san pham + ngan sach
**Output:** `ke-hoach-mkt-[ten]-[date].md`
**Nguoi duyet:** Marketing Owner + Leadership
**Tieu chi chuyen buoc:** 5 phan day du, KPI 3 kich ban, ngan sach phan bo

### Buoc 4 — Brief chien dich (Ngay 5–7)
**Skill:** `02-brief-chien-dich`
**Input:** Ke hoach MKT + timeline cu the
**Output:** `brief-chien-dich-[ten]-[date].md`
**Nguoi duyet:** Marketing Owner
**Tieu chi chuyen buoc:** 9 phan day du, insight khop voi big idea, deliverables co deadline

### Buoc 5 — San xuat noi dung (Ngay 7–12)
**Skills:** `01-lich-noi-dung` + `04-script-video` + `05-copy-quang-cao`
**Chay song song — 3 output cung luc:**
- `lich-noi-dung-[ten]-[date].md` — lich thang chi tiet
- `script-video-[ten]-[date].md` — 2 phien ban A/B moi video
- `copy-quang-cao-[ten]-[date].md` — 6 bien the copy
**Nguoi duyet:** Content Lead / Marketing Owner
**Tieu chi chuyen buoc:** Lich day du, script co huong dan quay, copy co 3 tang pheu

### Buoc 6 — Brief UGC/EGC (Ngay 10–14)
**Skill:** `06-brief-ugc-egc`
**Input:** Script video + tone of voice tu brief chien dich
**Output:** `brief-ugc-[ten]-[date].md`
**Nguoi duyet:** Content Lead
**Tieu chi chuyen buoc:** Brief du chi tiet de creator khong can hop them

### Buoc 7 — Thiet lap kenh + Landing page (Ngay 12–18)
**Skills:** `11-thiet-lap-kenh` + `12-brief-landing-page`
**Output:**
- `thiet-lap-kenh-[ten]-[date].md` — checklist tung kenh
- `brief-landing-page-[ten]-[date].md` — brief cho dev
**Nguoi duyet:** Marketing Owner
**Tieu chi chuyen buoc:** Kenh da setup, landing page da brief cho dev

---

## Sau khi launch

| Thoi diem | Hanh dong | Skill |
|-----------|----------|-------|
| Ngay 1–3 | Theo doi chi so, khong chinh gi | — |
| Ngay 3–5 | Danh gia nhanh, dieu chinh creative | `03-danh-gia-hieu-suat` |
| Tuan 2 | Bao cao tuan, toi uu | `07-bao-cao-marketing` |
| Tuan 4 | Bao cao thang, ke hoach thang sau | `07-bao-cao-marketing` + `10-tinh-kpi-nguoc` |

---

## Checklist truoc khi launch

- [ ] Ke hoach MKT da duyet
- [ ] Brief chien dich da chia se cho toan team
- [ ] Lich noi dung 2 tuan dau da san sang
- [ ] Creative (video + anh) da san xuat xong tuan 1
- [ ] Copy quang cao da viet, san sang setup ads
- [ ] UGC creator da nhan brief va bat dau quay
- [ ] Kenh da thiet lap day du (Zalo OA, Fanpage, TikTok)
- [ ] Landing page da live, da test form
- [ ] Pixel da cai (Meta + TikTok), da test su kien
- [ ] Ngan sach da xac nhan va san sang nap
- [ ] Team da biet ai lam gi, deadline nao
