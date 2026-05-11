# Update Guide — Cap Nhat Va Bao Tri He Thong Skill

> **Muc dich:** Huong dan cach cap nhat benchmarks, them skill moi, nang cap skill cu, quan ly phien ban.

---

## Khi nao can cap nhat?

| Tinh huong | Cap nhat gi | Tan suat |
|-----------|------------|---------|
| Benchmark lech thuc te >20% | `references/benchmarks-vietnam.md` + bang benchmark trong CLAUDE.md | Moi 6 thang |
| Meta/TikTok thay doi policy | `references/quality-gates-vn.md` + skill 05, 21 | Khi co thong bao |
| MCP server moi / deprecated | `references/mcp-ads-integration.md` | Moi 3 thang |
| Them nganh moi cho brief intake | `skills/vi/20-brief-client-intake/variants/` | Khi co yeu cau |
| Copy frameworks moi | `references/copy-frameworks-vn.md` | Moi nam |
| Skill output khong con phu hop | Skill SKILL.md tuong ung | Khi phat hien |

---

## 1. Cap nhat Benchmark

### Nguon data de cap nhat

| Nguon | Lay gi | Cach lay |
|-------|--------|---------|
| Meta Ads Manager | CPMess, CPC, CPM, CTR trung binh nganh | Aggregate data tu nhieu tai khoan |
| TikTok Ads Center | CPV, CPC, CTR, VCR | Bao cao hieu qua nganh |
| Google Ads Benchmark Report | CPC, Conv Rate theo nganh | Google Ads help center |
| Data noi bo agency | Funnel conversion rates | CRM + Google Sheets |
| Bao cao nganh (Q&Me, Decision Lab) | So lieu thi truong VN | Mua hoac research |

### Cach cap nhat

1. Mo `references/benchmarks-vietnam.md`
2. Cap nhat so lieu moi vao bang tuong ung
3. Them dong `> Cap nhat: [YYYY-MM-DD], Nguon: [nguon data]`
4. Cap nhat bang benchmark nhanh trong `CLAUDE.md` (section "Benchmark nhanh")
5. Cap nhat cot "Benchmark theo nganh" trong skill `03-danh-gia-hieu-suat`

### Template commit
```
docs: update VN benchmarks Q[X] 2026

- Meta CPMess adjusted: 25-40K → 22-38K
- TikTok CPV updated with Q2 data
- Added F&B industry benchmark
- Source: [ten nguon]
```

---

## 2. Them Skill Moi

### Buoc 1 — Tao folder + SKILL.md

```
skills/[so]-[ten-skill]/
└── SKILL.md
```

### Buoc 2 — Viet SKILL.md theo cau truc chuan

```markdown
---
name: [so]-[ten-skill]
description: [Mo ta cu the — co trigger phrases]
category: strategy | content | performance | operations
triggers:
  - "tu khoa 1"
  - "tu khoa 2"
output: [Mo ta output]
related:
  - skill-lien-quan
---

# [Ten Skill]

## Thu thap thong tin
[Toi da 4 cau]

## Nguyen tac
[Quy tac quan trong cua skill nay]

## Cau truc ket qua
[Template output — bang, headings, format]

## Cross-reference
[Skill lien quan]

## Checklist chat luong
[Kiem tra truoc khi giao]
```

### Buoc 3 — Dang ky vao he thong

1. **CLAUDE.md** — Them skill vao skill chain neu lien ket voi skill khac
2. **VERSIONS.md** — Them dong moi vao bang version
3. **README.md** — Them dong vao bang 20 Skills (bay gio la 22 Skills)
4. **docs/skill-map.md** — Them vao bang tra nhanh + decision tree

### Buoc 4 — Test

Chay skill voi 3 tinh huong khac nhau:
- San pham de (dung benchmark)
- San pham kho (nganh khac thuong)
- Ngan sach thap (early stage)

Neu output chung chung o bat ky tinh huong nao → viet lai.

### Buoc 5 — Validate

```bash
./validate-skills.sh    # macOS/Linux
.\validate-skills.ps1   # Windows
```

---

## 3. Nang Cap Skill Cu

### Nguyen tac "Surgical Changes"

> Tu `rules/common/karpathy.md`: Chi thay doi nhung gi can thiet. Moi dong thay doi phai trace ve ly do cu the.

### Quy trinh nang cap

1. **Doc skill hien tai** — hieu day du truoc khi sua
2. **Xac dinh thieu gi** — so sanh voi nhu cau thuc te
3. **Them section moi** — insert vao vi tri logic (khong xoa cai cu)
4. **Cap nhat related** — them reference moi vao frontmatter
5. **Cap nhat checklist** — them check moi neu can
6. **Tang version** — cap nhat VERSIONS.md

### Vi du: Nang cap skill 05

```
Truoc:  Copy 6 bien the, chua co framework
Sau:    Them section "6 Framework Copy" + Andromeda Warning
Change: Insert 2 sections, update checklist (+3 items), update related (+2 refs)
```

### Template commit
```
feat(skill-05): add 6 copy frameworks + Andromeda warning

- Added framework selection by audience temperature
- Added Andromeda creative similarity warning
- Updated checklist with 3 new quality checks
- Referenced: copy-frameworks-vn.md, quality-gates-vn.md
```

---

## 4. Them Reference Moi

### Khi nao can reference rieng?

- Noi dung dai >100 dong ma nhieu skill dung chung
- Noi dung ky thuat can tra cuu (bang, cong thuc, checklist)
- Noi dung thay doi thuong xuyen (benchmarks, policy)

### Naming convention

```
skills/references/[ten-chu-de]-vn.md
```

Vi du:
- `copy-frameworks-vn.md` — 6 framework copy
- `quality-gates-vn.md` — 10 hard rules
- `mcp-ads-integration.md` — huong dan MCP

### Sau khi tao reference

1. Them vao `related` cua cac skill su dung no
2. Them vao `docs/skill-map.md` bang "3 Reference Files"
3. Them note o dau file: "Load khi dung skill X, Y, Z"

---

## 5. Cap Nhat Workflow

### Them workflow moi

1. Tao file `workflows/[ten-workflow].md`
2. Them vao `CLAUDE.md` section "Workflow"
3. Them vao `docs/workflow-guide.md`
4. Them vao `docs/skill-map.md` bang "4 Workflow"

### Cap nhat workflow cu

Khi them skill moi vao chuoi:
1. Cap nhat luong chay (diagram ASCII)
2. Cap nhat "Chi tiet tung buoc"
3. Cap nhat checklist cuoi workflow
4. Cap nhat `CLAUDE.md` neu chuoi thay doi

---

## 6. Quan Ly Phien Ban

### Quy tac version

| Thay doi | Version | Vi du |
|---------|---------|-------|
| Fix loi nho, chinh chu | Patch: X.Y.Z+1 | 2.0.0 → 2.0.1 |
| Them section, update benchmark | Minor: X.Y+1.0 | 2.0.0 → 2.1.0 |
| Thay doi cau truc, breaking | Major: X+1.0.0 | 2.0.0 → 3.0.0 |

### Cap nhat VERSIONS.md

```markdown
| 05-copy-quang-cao | 2.1.0 | 2026-05-01 | content |
```

### Cap nhat CHANGELOG.md

```markdown
### 2026-05-01 — v2.1.0

**Upgrades:**
- `05-copy-quang-cao`: Added 6 copy frameworks + Andromeda warning
- `03-danh-gia-hieu-suat`: Added Health Score + Quality Gates
- `21-audit-ads-performance`: New skill — 84 checkpoints

**New references:**
- `copy-frameworks-vn.md`
- `quality-gates-vn.md`
- `mcp-ads-integration.md`
```

---

## 7. Checklist Cap Nhat

Truoc khi commit bat ky thay doi nao:

- [ ] Skill da doc lai — hieu day du truoc khi sua
- [ ] Chi thay doi nhung gi can thiet (Karpathy: surgical changes)
- [ ] Related / references da cap nhat trong frontmatter
- [ ] CLAUDE.md da cap nhat (neu anh huong skill chain / workflow)
- [ ] VERSIONS.md da cap nhat phien ban
- [ ] docs/skill-map.md da cap nhat (neu them/xoa skill)
- [ ] Validate scripts chay thanh cong
- [ ] Test voi 3 tinh huong truoc khi merge
