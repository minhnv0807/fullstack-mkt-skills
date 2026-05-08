# Getting Started — Personal Brand + AI Avatar (5 phut)

> **5 phut quickstart** cho nguoi tuyet doi moi voi cum personal brand (skills 22-28).
> Sau khi doc xong: ban biet **5 buoc lam tiep theo**.

---

## Buoc 1: Cai plugin (1 phut)

```bash
/plugin marketplace add minhnv0807/fullstack-mkt-skills
/plugin install fullstack-mkt-skills
```

Output mong doi trong terminal:

```
Loading marketplace...
Found 29 skills, 5 agents, 7 workflows
Installing v2.4.0...
[OK] Installed: fullstack-mkt-skills@2.4.0
[OK] 7 personal-brand skills loaded (22-28)
[OK] 4 newbie workflows registered
Restart Claude Code to activate.
```

Neu output khac (vi du "Failed" hoac "Not found") -> xem muc "Khi gap van de" cuoi file.

---

## Buoc 2: Mo Claude Code (30 giay)

```bash
claude
```

Output mong doi:

```
Welcome to Claude Code v1.x.x
29 skills available (type /skill list)
7 workflows ready (type /workflow list)
Type /help for commands.

>
```

---

## Buoc 3: Go lenh skill 22 (30 giay)

```bash
/skill 22-personal-brand-context
```

Output mong doi:

```
[Skill activated] 22-personal-brand-context v1.0.0
Foundation skill — Personal Brand context (3 variants).

Truoc khi bat dau, ban thuoc nhom nao?
1. Founder/CEO — ban dieu hanh cong ty, muon build authority gan ket voi product
2. Coach/Consultant — ban ban kien thuc/dich vu tu van, can build personal brand
3. Creator/KOL — ban tao content full-time, monetize qua brand deal/affiliate

Tra loi: 1, 2, hoac 3.
```

---

## Buoc 4: Chon variant (1 phut)

Tra loi 1, 2, hoac 3 dua tren tinh huong cua ban.

Neu chua chac:
- Founder = ban co cong ty, personal brand bo tro cho product
- Coach = ban ban thoi gian/kien thuc 1-1 hoac group
- Creator = ban kiem tien chinh tu noi dung (YouTube, TikTok, IG)

Khong sao neu chon nham — co the chay lai skill 22 voi variant khac sau.

---

## Buoc 5: Tra loi 4 cau thu thap (2 phut)

Skill se hoi 4 cau co ban:

```
1. Ten ban (su dung trong noi dung)?
2. Niche/linh vuc chuyen sau?
3. Goal 12 thang (so cu the: follower / revenue / clients)?
4. Audience ca nhan (tuoi, nghe nghiep, dia ly)?
```

Tra loi ngan gon. Vi du:

```
1. Nguyen Minh Long
2. Marketing automation cho SME tai VN
3. 50K LinkedIn follower + 20 clients/quy 4 (2026)
4. CEO/Marketing director, 28-45 tuoi, HCM/HN, doanh nghiep 10-100 nguoi
```

Khong sao neu chua chinh xac — co the cap nhat sau khi chay skill 23 (strategy).

---

## Output cua ban

Skill 22 tao file `.agents/personal-brand-context.md` voi 12 sections:

```
.agents/
└── personal-brand-context.md  (~2.5KB, 12 sections)
    ├── 1. Identity (ten, niche, archetype)
    ├── 2. Goal 12 thang
    ├── 3. Audience ca nhan
    ├── 4. Origin story
    ├── 5. Core beliefs (3-5 quan diem)
    ├── 6. Content pillars (3-4 chu de chinh)
    ├── 7. Voice & tone
    ├── 8. Visual identity
    ├── 9. Platforms (chon 1-2 chinh)
    ├── 10. Monetization model
    ├── 11. Differentiation
    └── 12. Boundaries (khong viet ve gi)
```

---

## Tiep theo lam gi?

Sau khi co context file, ban co 3 huong:

### A. Tiep tuc Phase 1 — Strategy + AI Avatar (recommended)

```bash
/skill 23-personal-brand-strategy
/skill 24-ai-avatar-production
```

Phu hop neu ban muon di tu chien luoc den production tools day du.

### B. Lam content luon (skip strategy)

```bash
/skill 26-thought-leadership-content
```

Phu hop neu ban da co chien luoc roi, chi can helper viet noi dung.

### C. Theo workflow newbie 30 ngay

Doc `workflows/personal-brand-launch.md` — chuoi day du tu setup den launch.

---

## Khi gap van de

### 5 loi pho bien

1. **Skill khong trigger**
   - Kiem tra: ban da cai plugin chua?
   - Try: `/plugin list` xem co `fullstack-mkt-skills` khong
   - Restart Claude Code: thoat va mo lai

2. **Skill hoi qua nhieu cau**
   - Skill nay design de tra loi 4 cau toi thieu
   - Neu hoi nhieu hon -> ban dang dung phien ban cu, chay `/plugin update`

3. **File `.agents/personal-brand-context.md` khong tao**
   - Kiem tra ban da xac nhan tao file chua (skill hoi confirm o cuoi)
   - Try: `ls .agents/` — neu khong co folder, tao bang `mkdir -p .agents`
   - Cuoi cung: chay lai skill 22 va xac nhan "yes" khi hoi luu file

4. **Confused giua product vs personal brand**
   - Doc Chuong 1 cua `docs/personal-brand-guide.md`
   - Ngan gon: **product context** = ban san pham. **personal brand context** = ban xay than the (chinh ban).
   - Co the co CA HAI file (tot nhat) — skill 04, 05 se hoi truoc khi viet

5. **Variant nhom khong fit toi**
   - Doc Chuong 2 cua `docs/personal-brand-guide.md` cho decision tree
   - Hoac chay skill 22 lai voi variant khac (file cu se bi ghi de neu confirm)

---

## Resources

- **Cam nang day du:** `docs/personal-brand-guide.md` (8 chuong, ~600 dong)
- **Workflow 30 ngay:** `workflows/personal-brand-launch.md`
- **AI Avatar tools VN:** `references/ai-avatar-tools-vn.md`
- **Voice clone samples:** `references/voice-clone-prompts-vn.md`
- **Disclosure compliance:** `references/ai-video-disclosure-vn.md`
- **Video tutorial:** [Coming soon — TBD YouTube link]

---

## What's Next?

Goi y lo trinh hoc:

| Ngay | Hoat dong | Skill / File |
|------|-----------|--------------|
| Hom nay | Chay skill 22 -> co context file | 22-personal-brand-context |
| Mai | Chay skill 23 -> co strategy 12 thang | 23-personal-brand-strategy |
| Tuan toi | Doc cam nang day du | docs/personal-brand-guide.md |
| 2 tuan toi | Dung workflow 30 ngay | workflows/personal-brand-launch.md |
| Thang sau | Setup AI Avatar + Voice Clone | 24-ai-avatar-production, 25-voice-clone-podcast |
| Quy sau | Monetize + Community | 27-personal-brand-monetize, 28-community-building |

---

Cau hoi them? Mo issue tren GitHub: [github.com/minhnv0807/fullstack-mkt-skills/issues](https://github.com/minhnv0807/fullstack-mkt-skills/issues)
