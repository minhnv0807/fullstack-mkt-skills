---
name: 22-personal-brand-context
description: "Khi nguoi dung muon tao hoac cap nhat tai lieu goc ve personal brand — dinh vi ca nhan, niche, story arc, content pillars, audience ca nhan, brand voice, monetization muc tieu. Cung dung khi nguoi dung nhac 'personal brand', 'thuong hieu ca nhan', 'ho so ca nhan', 'founder context', 'coach context', 'creator context', 'ICP cho ca nhan'. Foundation skill — chay TRUOC moi skill personal brand khac (23-28). Tao file `.agents/personal-brand-context.md` voi 12 sections."
metadata:
  version: 1.0.0
  category: foundation
license: MIT
triggers:
  - "thiet lap personal brand"
  - "context thuong hieu ca nhan"
  - "ho so ca nhan"
  - "dinh vi ca nhan"
  - "founder context"
  - "coach context"
  - "creator context"
  - "ICP cho ca nhan"
related:
  - product-marketing-context
  - 23-personal-brand-strategy
  - 24-ai-avatar-production
---

# Personal Brand Context (Foundation Skill)

> **Day la foundation skill cho THUONG HIEU CA NHAN** — chay TRUOC moi skill personal brand khac (23-28). Tao file `.agents/personal-brand-context.md` chua thong tin goc ve con nguoi, dinh vi, story, audience, voice — de cac skill khac khong phai hoi lai.
>
> **Song song voi `product-marketing-context`:** Skill kia phuc vu san pham/dich vu, skill nay phuc vu CON NGUOI — founder, coach, creator.

---

## Cho nguoi moi (Newbie section)

### Ai nen dung skill nay?

| Doi tuong | Vi du cu the |
|-----------|-------------|
| Founder / CEO | Muon xay thuong hieu ca nhan song song cong ty |
| Coach / Consultant | Muon dinh vi chuyen gia, ban khoa hoc / dich vu tu van |
| Creator / KOL | Muon phat trien kenh noi dung, tang follower, monetize |

### Ai KHONG nen dung skill nay?

- **Brand cong ty / san pham** → Dung `product-marketing-context` thay the
- **Agency lam cho khach hang** → Dung `20-brief-client-intake` de thu thap input
- **Nguoi chua biet minh muon xay personal brand** → Can brainstorm truoc, chua can context file

### Doc nhanh 30 giay

Skill nay tao 1 file goc (`.agents/personal-brand-context.md`) voi 12+ sections mo ta BAN LA AI trong goc nhin marketing. Tat ca skill personal brand khac (23-28) se doc file nay truoc khi lam viec — giong nhu "ho so y te" ma moi bac si doc truoc khi kham.

### 3 loi thuong gap

1. **Viet qua chung chung** — "Toi giup nguoi khac thanh cong" → Can cu the: giup AI, giup CEO nho, giup gi?
2. **Tron brand ca nhan voi brand cong ty** — Audience cua BAN khac audience cua SAN PHAM cong ty
3. **Bo qua story arc** — Khong ai nho nguoi chi noi "toi gioi X" — nguoi ta nho HANH TRINH

---

## Vi sao can skill nay?

**Truoc khi co file nay**, moi lan dung 1 skill personal brand:
- AI hoi lai: Ban la ai? Lam gi? Noi voi ai? Giong dieu the nao?
- Lap di lap lai 5-6 cau hoi co ban moi session
- Cac skill khac nhau cho ra output khong nhat quan (skill nay noi giong casual, skill kia noi giong formal)

**Sau khi co file `.agents/personal-brand-context.md`:**
- Tra loi 1 lan, tat ca skill doc chung 1 file
- Brand voice nhat quan xuyen suot
- Story arc duoc giu nguyen, khong bi bien dang qua cac skill
- Tiet kiem 70% thoi gian setup moi session

---

## Luong hoat dong

```
Buoc 1: Kiem tra file hien co
    |
    |-- Co file → Hoi user muon cap nhat section nao
    |-- Khong co → Buoc 2
    |
Buoc 2: Chon variant (Founder / Coach / Creator)
    |
Buoc 3: Thu thap thong tin theo variant
    |
Buoc 4: Tao file `.agents/personal-brand-context.md`
```

---

## Buoc 1: Kiem tra file hien co

Kiem tra co file `.agents/personal-brand-context.md` khong.

**Neu co:**
- Doc file va tom tat noi dung hien co
- Hoi user muon cap nhat section nao
- Chi thu thap thong tin cho section do — KHONG lam lai tu dau

**Neu khong co — chuyen sang Buoc 2.**

---

## Buoc 2: Chon variant

Hoi user 1 cau: **"Ban la Founder/CEO, Coach/Consultant, hay Creator/KOL?"**

### Bang chon variant

| Variant | File | Phu hop voi | Dac biet co |
|---------|------|------------|-------------|
| **Founder** | `variants/01-founder.md` | CEO, Co-founder, Founder startup/SME | Section "Conflict brand ca nhan vs cong ty" |
| **Coach** | `variants/02-coach.md` | Coach, Consultant, Mentor, Trainer | Section "Phuong phap doc quyen" + "Hoc vien thanh cong" |
| **Creator** | `variants/03-creator.md` | YouTuber, TikToker, KOL, Blogger | Section "Niche giai tri/giao duc/lifestyle" + "Brand deal floor price" |

### Logic detect

```
1. User noi ro (VD: "toi la founder") → Load variant tuong ung
2. User mo ho (VD: "toi day marketing online") → Hoi: "Ban day nhu Coach 1-1/khoa hoc, hay lam content nhu Creator?"
3. User lam nhieu vai (VD: "vua la founder vua lam content") → Chon variant CHINH + ghi chu vai phu
```

---

## Buoc 3: Thu thap thong tin theo variant

Sau khi chon variant, doc file variant tuong ung trong `variants/` va di qua tung section:

1. **Giai thich ngan** — Section nay ghi nhan gi, vi sao quan trong
2. **Hoi 1-3 cau** — Tung section mot, KHONG hoi het 1 luc
3. **Xac nhan** — Doc lai, user confirm
4. **Chuyen section tiep**

**Luu y quan trong:**
- Moi variant co 12-14 sections (10 sections chung + 2-4 sections dac biet)
- Sections 1-10 giong nhau ve cau truc nhung KHAC ve noi dung goi y
- Sections 11+ la sections DUY NHAT cho tung variant

Xem chi tiet tung variant:
- `variants/01-founder.md` — 13 sections (them: Conflict brand ca nhan vs cong ty)
- `variants/02-coach.md` — 14 sections (them: Phuong phap doc quyen + Hoc vien thanh cong)
- `variants/03-creator.md` — 14 sections (them: Niche giai tri/giao duc/lifestyle + Brand deal floor price)

---

## Buoc 4: Tao file

Luu vao `.agents/personal-brand-context.md` (tao folder `.agents/` neu chua co).

Format file:

```markdown
# Personal Brand Context — [Ho ten]

> Variant: [Founder / Coach / Creator]
> Cap nhat lan cuoi: [YYYY-MM-DD]
> Dung bang: Claude Code, ChatGPT, Gemini, bat ky AI agent nao

---

[Noi dung 12-14 sections theo variant da chon]
```

---

## Cach cac skill khac dung file nay

Trong moi skill personal brand (23-28), them doan nay vao buoc "Thu thap thong tin":

```markdown
## Thu thap thong tin

### Buoc 0: Kiem tra personal brand context

Kiem tra co file `.agents/personal-brand-context.md` khong:
- **Co** → Doc toan bo, lay thong tin ca nhan/audience/voice/story. Khong hoi lai.
- **Khong** → De nghi user chay skill `22-personal-brand-context` truoc.
  Neu user muon tiep tuc, hoi 2-3 cau toi thieu ve ban than ho.
```

**Skills se doc file nay:**
- `23-personal-brand-strategy` — Chien luoc thuong hieu ca nhan
- `24-ai-avatar-production` — San xuat AI avatar
- `25-*` den `28-*` — Cac skill personal brand khac

---

## Checklist chat luong

Truoc khi ket thuc:

- [ ] File luu vao `.agents/personal-brand-context.md`
- [ ] Du 12 sections toi thieu (hoac 14 neu variant Coach/Creator)
- [ ] Co story arc ro rang (section 5) — KHONG chi la "toi gioi X"
- [ ] Co brand voice cu the (section 7) — co vi du cau noi + cau KHONG nen noi
- [ ] Co North Star 12 thang (section 3) — cu the, do luong duoc
- [ ] Co KPI ca nhan (section 12) — co so cu the, khong chung chung
- [ ] Da xac nhan voi user tat ca thong tin
- [ ] Co ngay cap nhat cuoi trong file

---

## Lien ket skill

- **`product-marketing-context`** — Foundation skill cho san pham (song song voi skill nay)
- **`23-personal-brand-strategy`** — Chien luoc tong the, doc context file nay truoc
- **`24-ai-avatar-production`** — Tao AI avatar, can brand voice + visual identity tu file nay

---

*Skill 22 | Over Powers Agency | v1.0.0*
