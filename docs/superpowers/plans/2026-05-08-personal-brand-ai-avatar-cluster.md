# Personal Brand + AI Avatar Cluster Implementation Plan (v2.4.0)

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Mở rộng `fullstack-mkt-skills` từ v2.3.0 (22 skills marketing thương hiệu doanh nghiệp) lên v2.4.0 với cụm 7 skills mới về Personal Branding + AI Avatar, phục vụ Founder/Coach/Creator. Zero breaking changes.

**Architecture:** Cluster mới (skills 22–28) chạy SONG SONG với 22 skills cũ. Foundation skill 22 với 3 variants (founder/coach/creator) tạo file `.agents/personal-brand-context.md` — các skills 23–28 đọc file này. Skills 04, 05 cũ được mở rộng "Personal Brand Mode" auto-kích hoạt khi đọc thấy context personal brand. Workflows + agent + references mới hoàn thiện end-to-end pipeline.

**Tech Stack:**
- Markdown (.md) — toàn bộ skills, references, workflows, docs
- YAML frontmatter — Agent Skills Spec compliant
- Bash (validate-skills.sh) + PowerShell (validate-skills.ps1)
- Mermaid diagrams (GitHub native render)
- Git — Conventional Commits + 3 sub-branches

**Source spec:** [docs/superpowers/specs/2026-05-08-personal-brand-ai-avatar-design.md](../specs/2026-05-08-personal-brand-ai-avatar-design.md)

**Rollout:** 3 PRs phased (Approach 2). Branch parent: `feature/v2.4-personal-brand-cluster`. Sub-branches: `phase-1-foundation`, `phase-2-content-production`, `phase-3-monetize-community`. NO rc tags — tag `v2.4.0` final khi xong cả 3 phases.

**Total scope:** 32 file đụng tới, ~6,740 dòng, ~14 ngày.

---

## File Structure (đầy đủ 32 files)

### Files mới (24)

| # | Path | Type | Dòng | Phase |
|---|------|------|------|-------|
| 1 | `skills/22-personal-brand-context/SKILL.md` | Skill entry | ~250 | 1 |
| 2 | `skills/22-personal-brand-context/README.md` | Variant guide | ~100 | 1 |
| 3 | `skills/22-personal-brand-context/variants/01-founder.md` | Variant template | ~200 | 1 |
| 4 | `skills/22-personal-brand-context/variants/02-coach.md` | Variant template | ~200 | 1 |
| 5 | `skills/22-personal-brand-context/variants/03-creator.md` | Variant template | ~200 | 1 |
| 6 | `skills/23-personal-brand-strategy/SKILL.md` | Skill | ~450 | 1 |
| 7 | `skills/24-ai-avatar-production/SKILL.md` | Skill | ~530 | 1 |
| 8 | `skills/references/ai-avatar-tools-vn.md` | Reference | ~280 | 1 |
| 9 | `skills/references/voice-clone-prompts-vn.md` | Reference | ~220 | 1 |
| 10 | `skills/references/ai-video-disclosure-vn.md` | Reference | ~200 | 1 |
| 11 | `workflows/personal-brand-launch.md` | Workflow newbie | ~380 | 1 |
| 12 | `skills/25-voice-clone-podcast/SKILL.md` | Skill | ~400 | 2 |
| 13 | `skills/26-thought-leadership-content/SKILL.md` | Skill | ~450 | 2 |
| 14 | `workflows/ai-avatar-batch.md` | Workflow newbie | ~360 | 2 |
| 15 | `skills/27-personal-brand-monetize/SKILL.md` | Skill | ~430 | 3 |
| 16 | `skills/28-community-building/SKILL.md` | Skill | ~390 | 3 |
| 17 | `workflows/personal-brand-monthly.md` | Workflow newbie | ~350 | 3 |
| 18 | `agents/personal-brand-builder.md` | Agent persona | ~80 | 3 |
| 19 | `docs/personal-brand-guide.md` | Cẩm nang 8 chương | ~600 | 3 |
| 20 | `docs/getting-started-personal-brand.md` | 5-phút quickstart | ~200 | 3 |
| 21 | `docs/release-notes/v2.4.0.md` | Release notes bilingual | ~250 | 3 |
| 22 | `examples/personal-brand-coach.md` | Sample output | ~180 | 3 |
| 23 | (placeholder phase 1 - đã có ở #1-11) | - | - | - |
| 24 | (placeholder phase 2 - đã có ở #12-14) | - | - | - |

### Files sửa (8)

| # | Path | Phase | Dòng thêm |
|---|------|-------|-----------|
| 25 | `skills/04-script-video/SKILL.md` | 2 | +80 (Personal Brand Mode) |
| 26 | `skills/05-copy-quang-cao/SKILL.md` | 2 | +80 (Personal Brand Mode) |
| 27 | `README.md` | 3 | +80 (banner + section + bảng skill 22-28) |
| 28 | `README.vi.md` | 3 | +80 (đồng bộ EN) |
| 29 | `CLAUDE.md` | 3 | +30 (skills + agent + workflow) |
| 30 | `AGENTS.md` | 3 | +15 (note pattern variants) |
| 31 | `CHANGELOG.md` | 3 | +50 (entry v2.4.0) |
| 32 | `VERSIONS.md` | 3 | +25 (7 skill mới + bump 04/05) |

Plus updates trong Phase 3:
- `.claude-plugin/marketplace.json` (+10 dòng)
- `docs/skill-map.md` (+60 dòng)
- `docs/workflow-guide.md` (+40 dòng)
- `docs/faq.md` (+80 dòng)
- 3 agent files cũ (`mkt-strategist.md`, `content-producer.md`, `performance-analyst.md`) thêm 1 dòng "Phan biet voi personal-brand-builder"
- `validate-skills.sh` + `validate-skills.ps1` thêm check 7 skills mới + variants

---

## Setup — Trước khi bắt đầu Phase 1

### Task 0: Setup branches

**Files:** N/A (git operations)

- [ ] **Step 0.1: Tạo parent feature branch**

```bash
git checkout master
git pull origin master
git checkout -b feature/v2.4-personal-brand-cluster
git push -u origin feature/v2.4-personal-brand-cluster
```

- [ ] **Step 0.2: Tạo sub-branch phase 1**

```bash
git checkout -b phase-1-foundation
```

- [ ] **Step 0.3: Verify branch state**

Run: `git status && git branch --show-current`
Expected: Working tree clean, on branch `phase-1-foundation`

- [ ] **Step 0.4: Confirm spec approved**

Run: `ls docs/superpowers/specs/2026-05-08-personal-brand-ai-avatar-design.md`
Expected: file exists.

---

# PHASE 1 — Foundation + Strategy + AI Avatar (3 ngày, ~2,800 dòng)

> Sub-branch: `phase-1-foundation`. Khi xong → PR #1 vào `feature/v2.4-personal-brand-cluster`.

---

## Task 1: Skill 22 — `personal-brand-context` SKILL.md

**Files:**
- Create: `skills/22-personal-brand-context/SKILL.md`

- [ ] **Step 1.1: Tạo folder + file rỗng**

```bash
mkdir -p skills/22-personal-brand-context/variants
touch skills/22-personal-brand-context/SKILL.md
```

- [ ] **Step 1.2: Write frontmatter + structure**

```markdown
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

> Day la **foundation skill cho personal brand** — chay TRUOC moi skill personal brand khac (23-28). Song song voi `product-marketing-context` (cho marketing SP).

## Cho nguoi moi (Newbie section)

### Skill nay danh cho ai?
- Founder/Coach/Creator muon xay personal brand voi AI ho tro
- Lan dau dung cum personal brand (skills 22-28)
- Ban chua co `.agents/personal-brand-context.md`

### Skill nay KHONG danh cho ai?
- Marketing thuong hieu doanh nghiep — dung `product-marketing-context`
- Ban da co context dy → chay `/skill 23-personal-brand-strategy` thay vi 22

### Truoc khi go command — Doc 30 giay
[Skill nay tao 1 file 12 sections, mat 20-40 phut, ban se chon 1 trong 3 variant: founder/coach/creator]

### Khi gap loi
- Skill khong trigger → kiem tra trigger phrases khop khong
- Skill chay nhung output thieu section → tra loi thu thap ky hon
- Confused giua product vs personal context → doc docs/personal-brand-guide.md chuong 1

## Vi sao can skill nay?
[Adapt tu product-marketing-context — neu khac voi personal brand]

## Luong hoat dong
[Buoc 1: kiem tra file, Buoc 2: chon variant, Buoc 3: thu thap, Buoc 4: tao file]

## Buoc 1: Chon variant
3 variants — chon 1 phu hop:
- founder.md — Founder/CEO build authority de ban hang cong ty
- coach.md — Coach/Consultant ban knowledge product
- creator.md — Creator/KOL kiem tien tu content

## Buoc 2: Thu thap thong tin theo variant
[Reference variant cu the trong variants/]

## Buoc 3: Tao file
Luu vao `.agents/personal-brand-context.md`. Format theo template variant da chon.

## Cach cac skill khac dung file nay
[Adapt tu product-marketing-context: cac skill 23-28 doc file truoc khi hoat dong]

## Checklist chat luong
- [ ] File luu vao `.agents/personal-brand-context.md`
- [ ] Du 12 section
- [ ] Co Story arc (section 5)
- [ ] Co Brand voice (section 7)
- [ ] Co North Star (section 3)
- [ ] Co KPI ca nhan (section 12)
- [ ] Da xac nhan voi user
- [ ] Co ngay cap nhat cuoi
```

- [ ] **Step 1.3: Validate frontmatter**

Run: `bash validate-skills.sh skills/22-personal-brand-context/`
Expected: PASS frontmatter check, name match folder, description has triggers.

- [ ] **Step 1.4: Check line count**

Run: `wc -l skills/22-personal-brand-context/SKILL.md`
Expected: ≤500, target ~250.

- [ ] **Step 1.5: Commit**

```bash
git add skills/22-personal-brand-context/SKILL.md
git commit -m "feat(skill-22): add personal-brand-context foundation skill (entrypoint with newbie section)"
```

---

## Task 2: Skill 22 — README.md (variant guide)

**Files:**
- Create: `skills/22-personal-brand-context/README.md`

- [ ] **Step 2.1: Write README content**

```markdown
# 22-personal-brand-context — Variant Guide

## 3 variants — chon 1

| Variant | File | Phu hop | Output dong |
|---------|------|---------|-------------|
| Founder | `variants/01-founder.md` | Founder/CEO build authority | Lead B2B inbound |
| Coach | `variants/02-coach.md` | Coach/Consultant ban knowledge | Course revenue |
| Creator | `variants/03-creator.md` | Creator/KOL kiem tien noi dung | Brand deals + own product |

## Cach chon

```
Ban dang lam gi?
├─ Co cong ty/SaaS, muon xay ban than de ban hang B2B
│   → 01-founder.md
├─ Day, tu van, coach 1-on-1 hoac course
│   → 02-coach.md
└─ Lam content full-time, KOL/KOC, monetize qua noi dung
    → 03-creator.md
```

## Khac biet 3 variants

[Bang chi tiet — KPI, content pillars, funnel, AI avatar use case khac nhau]

## Cap nhat khi nao?

Variant la **template** — moi 6 thang review/cap nhat 1 lan, hoac khi:
- Ban pivot niche
- Ban thay doi monetization model
- Ban thay nhom audience moi
```

- [ ] **Step 2.2: Validate**

Run: `wc -l skills/22-personal-brand-context/README.md`
Expected: ~100.

- [ ] **Step 2.3: Commit**

```bash
git add skills/22-personal-brand-context/README.md
git commit -m "docs(skill-22): add variant guide README"
```

---

## Task 3: Skill 22 — Variant `01-founder.md`

**Files:**
- Create: `skills/22-personal-brand-context/variants/01-founder.md`

- [ ] **Step 3.1: Write founder template (12 sections + founder-specific)**

Template gồm 12 sections chuẩn (theo spec Section 3, Skill 22) + sections riêng cho founder:
- Section 1: Profile cá nhân (CEO/Founder/Co-founder + công ty + năm kinh nghiệm)
- Section 2: Niche & lĩnh vực authority (industry expertise)
- Section 3: North Star ("Sau 12 tháng, người ta nhớ tôi vì ___")
- Section 4: Audience cá nhân (B2B decision makers, KHÁC audience SP công ty)
- Section 5: Story arc (Founder journey: nguồn gốc → khúc quanh → hiện tại)
- Section 6: Content pillars 4 cột (Industry Insight / Behind-the-scene company / Leadership lesson / Personal philosophy)
- Section 7: Brand voice (founder confident, có chiều sâu, expert tone)
- Section 8: Visual identity (outfit business casual / studio professional / lighting clean)
- Section 9: Anti-personas (KHÔNG phải mass consumer, KHÔNG phải competitor's employees)
- Section 10: Authority assets (sách, podcast khách mời, board position, awards)
- Section 11: Monetization mục tiêu — **FOUNDER SPECIFIC:** Lead B2B inbound for company / Speaking gigs / Advisory roles / Investment opportunities
- Section 12: KPI cá nhân — **FOUNDER:** Inbound DM/tuần, deal pipeline value, speaking invitations, profile view by decision-makers
- **EXTRA:** Section 13 (Founder-only): "Conflict giữa brand cá nhân và công ty" — cách handle khi cá nhân nói X, công ty làm Y

- [ ] **Step 3.2: Validate**

Run: `wc -l skills/22-personal-brand-context/variants/01-founder.md`
Expected: ~200.

- [ ] **Step 3.3: Commit**

```bash
git add skills/22-personal-brand-context/variants/01-founder.md
git commit -m "feat(skill-22): add founder variant template"
```

---

## Task 4: Skill 22 — Variant `02-coach.md`

**Files:**
- Create: `skills/22-personal-brand-context/variants/02-coach.md`

- [ ] **Step 4.1: Write coach template**

Template 12 sections + coach-specific:
- Section 1-10: theo template chuẩn (adapt cho coach)
- Section 11: **COACH:** Course self-paced / Cohort course / 1-on-1 coaching / Group program / Speaking
- Section 12: **COACH KPI:** Course conversion rate, student retention, NPS, MRR
- **EXTRA Section 13 (Coach):** "Phương pháp dạy độc quyền" — framework, system, methodology
- **EXTRA Section 14 (Coach):** "Học viên thành công" — case study quy chuẩn

- [ ] **Step 4.2: Validate + Commit**

```bash
git add skills/22-personal-brand-context/variants/02-coach.md
git commit -m "feat(skill-22): add coach variant template"
```

---

## Task 5: Skill 22 — Variant `03-creator.md`

**Files:**
- Create: `skills/22-personal-brand-context/variants/03-creator.md`

- [ ] **Step 5.1: Write creator template**

Template 12 sections + creator-specific:
- Section 1-10: theo template chuẩn (adapt cho creator)
- Section 11: **CREATOR:** Brand deals / Affiliate / Own digital product / Merchandise / Subscription (Patreon, OnlyFans alternatives) / Sponsored content
- Section 12: **CREATOR KPI:** Follower growth, view per video, brand deal floor price, affiliate revenue, own product MRR
- **EXTRA Section 13 (Creator):** "Niche giải trí/giáo dục/lifestyle" — chọn 1 + niche con
- **EXTRA Section 14 (Creator):** "Brand deal floor price" — minimum CPM/post + exclusivity terms

- [ ] **Step 5.2: Validate + Commit**

```bash
git add skills/22-personal-brand-context/variants/03-creator.md
git commit -m "feat(skill-22): add creator variant template"
```

---

## Task 6: Skill 23 — `personal-brand-strategy` SKILL.md

**Files:**
- Create: `skills/23-personal-brand-strategy/SKILL.md`

- [ ] **Step 6.1: Write SKILL.md theo spec Section 3.2**

Frontmatter:
```yaml
---
name: 23-personal-brand-strategy
description: "Tao file chien luoc personal brand 12 thang — niche selection, positioning statement, story arc 3 chuong, content pillars 4 cot, authority ladder 5 nac, 12-month growth plan. Doc skill 22 truoc. Dung khi user noi 'chien luoc personal brand', 'dinh vi ca nhan', 'niche selection', 'content pillar ca nhan', 'story arc', 'founder positioning', 'coach positioning', 'creator positioning'."
metadata:
  version: 1.0.0
  category: strategy
license: MIT
triggers:
  - "chien luoc personal brand"
  - "dinh vi ca nhan"
  - "niche selection"
  - "content pillar ca nhan"
  - "story arc"
  - "founder positioning"
  - "coach positioning"
  - "creator positioning"
related:
  - 22-personal-brand-context
  - 26-thought-leadership-content
  - 09-insight-khach-hang
  - 17-pricing-strategy
---
```

8 sections content (theo spec):
1. Buoc 0: Doc context (skill 22) — neu chua co → trigger 22
2. Niche selection framework: Ikigai cá nhân + 3×3 grid (passion × skill × demand)
3. Positioning statement template: "Toi giup [audience] dat [outcome] thong qua [unique method] trong [timeline]"
4. Story arc 3 chuong: Hero's Journey adapt cho VN context — 3 prompts để user fill
5. Content pillars (4 cot × 7 chu de = 28 chu de cho 12 thang)
6. Authority ladder 5 nac
7. 12-month growth plan: Q1 foundation → Q2 amplify → Q3 monetize → Q4 scale (timeline cụ thể)
8. Risk & ethics

Plus "Cho nguoi moi" section (50 dong) ở đầu skill.

- [ ] **Step 6.2: Validate**

Run: `bash validate-skills.sh skills/23-personal-brand-strategy/ && wc -l skills/23-personal-brand-strategy/SKILL.md`
Expected: PASS, ~450 dòng.

- [ ] **Step 6.3: Commit**

```bash
git add skills/23-personal-brand-strategy/
git commit -m "feat(skill-23): add personal-brand-strategy skill (8 sections + newbie)"
```

---

## Task 7: Skill 24 — `ai-avatar-production` SKILL.md (FLAGSHIP)

**Files:**
- Create: `skills/24-ai-avatar-production/SKILL.md`

- [ ] **Step 7.1: Write frontmatter + 12 sections theo spec Section 3.3**

Frontmatter (đầy đủ triggers):
```yaml
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
```

12 sections content (theo spec Section 3.3, đầy đủ):
1. Cho người mới (newbie section ~50 dòng)
2. Thu thap (4 cau): muc dich / nen tang / ngan sach tier / so luong
3. Quyet dinh tier — 3 tier table
4. Workflow 1: Single avatar production
5. Workflow 2: Translate đa ngôn ngữ
6. Workflow 3: Batch production
7. Workflow 4: Hybrid real + AI
8. Voice clone protocol
9. Avatar setup checklist
10. Anti-detection cho FB/IG/TikTok VN
11. Ethics & disclosure VN
12. QA Score 100 điểm + reference links

- [ ] **Step 7.2: Check line count — nếu vượt 500, chuyển workflow 2 (translate) sang reference**

Run: `wc -l skills/24-ai-avatar-production/SKILL.md`
Expected: ≤500. Nếu vượt → chuyển section "Workflow 2: Translate" thành note "Xem `references/ai-avatar-tools-vn.md` chương Translate Workflow".

- [ ] **Step 7.3: Validate frontmatter**

Run: `bash validate-skills.sh skills/24-ai-avatar-production/`
Expected: PASS.

- [ ] **Step 7.4: Commit**

```bash
git add skills/24-ai-avatar-production/
git commit -m "feat(skill-24): add ai-avatar-production deep dive skill (12 sections, 3 tier, 4 workflows)"
```

---

## Task 8: Reference 1 — `ai-avatar-tools-vn.md`

**Files:**
- Create: `skills/references/ai-avatar-tools-vn.md`

- [ ] **Step 8.1: Write 5 sections theo spec Section 5.1**

Sections:
1. Decision tree chọn tool (flowchart bằng Mermaid)
2. 3 tier × 5 use case = 15 ô matrix
3. Tool deep dive (15 tools × ~12-15 dòng): HeyGen, Synthesia, D-ID, Captions, Hedra, Runway Gen-3, Pika Labs, ElevenLabs, PlayHT, Vbee, Murf, Descript, Riverside, Rask AI, Pictory
4. VN-specific notes (UI tiếng Việt, giọng VN native, MoMo/ZaloPay status, workaround)
5. Cập nhật log (table với date + change)

Top of file warning:
```markdown
> **CẬP NHẬT CUỐI:** 2026-05-08
> Giá tool có thể đã thay đổi. Kiểm tra trang chính thức trước khi mua.
> Re-review file này 3 tháng/lần.
```

- [ ] **Step 8.2: Validate**

Run: `wc -l skills/references/ai-avatar-tools-vn.md`
Expected: ~280.

- [ ] **Step 8.3: Commit**

```bash
git add skills/references/ai-avatar-tools-vn.md
git commit -m "feat(refs): add ai-avatar-tools-vn reference (15 tools, 3-tier matrix)"
```

---

## Task 9: Reference 2 — `voice-clone-prompts-vn.md`

**Files:**
- Create: `skills/references/voice-clone-prompts-vn.md`

- [ ] **Step 9.1: Write 6 sections theo spec Section 5.2**

Sections:
1. Nguyên tắc record sample chuẩn
2. 3 sample script chuẩn theo vùng giọng:
   - Sample A — Giọng Bắc (Hà Nội) ~120 từ thực tế
   - Sample B — Giọng Nam (TP.HCM) ~120 từ thực tế
   - Sample C — Giọng Trung (Huế/Đà Nẵng) ~120 từ thực tế
3. Emotion range script (4 đoạn × 30s: trung tính / vui mừng / trầm tư / quyết liệt)
4. Tool-specific prompt (ElevenLabs Voice Design 6 kiểu giọng + HeyGen Custom Voice + Vbee Voice Studio)
5. Common pitfalls (5 cái)
6. Voice consistency check (test 5 câu mới + score 0–10)

- [ ] **Step 9.2: Validate + Commit**

Run: `wc -l skills/references/voice-clone-prompts-vn.md`
Expected: ~220.

```bash
git add skills/references/voice-clone-prompts-vn.md
git commit -m "feat(refs): add voice-clone-prompts-vn reference (3 region samples + emotion + tool prompts)"
```

---

## Task 10: Reference 3 — `ai-video-disclosure-vn.md`

**Files:**
- Create: `skills/references/ai-video-disclosure-vn.md`

- [ ] **Step 10.1: Write 7 sections theo spec Section 5.3**

Sections:
1. Bối cảnh pháp lý VN 2025–2026 (Nghị định 147/2024, Luật QC 2012 sửa 2024, FTC US)
2. Quy tắc 3 tầng disclose (BẮT BUỘC / NÊN / TÙY CHỌN — table)
3. Khi nào TUYỆT ĐỐI KHÔNG dùng AI Avatar (4 trường hợp)
4. Template disclosure cho từng nền tảng (TikTok, YouTube, FB/IG, LinkedIn, personal website)
5. Case study VN 2025 (3 case)
6. Decision tree: "Tôi có cần disclose không?" (5 câu hỏi, Mermaid flowchart)
7. Disclosure copy template — 5 mẫu sẵn dùng

- [ ] **Step 10.2: Validate + Commit**

```bash
git add skills/references/ai-video-disclosure-vn.md
git commit -m "feat(refs): add ai-video-disclosure-vn reference (Nghi dinh 147/2024 compliance)"
```

---

## Task 11: Workflow 1 — `personal-brand-launch.md` (NEWBIE-FRIENDLY 380 dòng)

**Files:**
- Create: `workflows/personal-brand-launch.md`

- [ ] **Step 11.1: Write 8 sections theo template chuẩn newbie-friendly**

Sections (theo spec Section 6 template):
1. **Workflow này dành cho ai?** — 30 dòng
2. **Pre-flight Checklist** — 30 dòng (10 checkboxes)
3. **Step-by-step (4 tuần × 30 ngày)** — 120 dòng (chi tiết từng giờ)
4. **Skills chain & Timeline (high-level)** — 30 dòng (Mermaid Gantt diagram)
5. **Success Criteria** — 30 dòng (5 tiêu chí + KPI baseline)
6. **Common Pitfalls (10 lỗi newbie)** — 60 dòng (10 lỗi × 6 dòng)
7. **AI Research Prompts (5 prompt)** — 50 dòng (5 prompt × 10 dòng)
8. **Resources & Next Steps + YouTube placeholder** — 30 dòng

YouTube placeholder ví dụ:
```markdown
## 📹 Video demo
- **Tutorial 30 ngày Personal Brand Launch:** [Video sẽ link sau khi quay — TBD YouTube link]
- **Quay khi:** ~7 ngày sau khi v2.4.0 release
- **Độ dài dự kiến:** 5-7 phút
```

- [ ] **Step 11.2: Validate**

Run: `wc -l workflows/personal-brand-launch.md`
Expected: ~380.

- [ ] **Step 11.3: Commit**

```bash
git add workflows/personal-brand-launch.md
git commit -m "feat(workflow): add personal-brand-launch workflow (newbie-friendly 8 sections)"
```

---

## Task 12: Phase 1 Quality Gates + PR

- [ ] **Step 12.1: Run all validate scripts**

Run:
```bash
bash validate-skills.sh
```
Expected: All 25 skills (22 cũ + 3 mới: 22, 23, 24) pass.

- [ ] **Step 12.2: Verify line counts**

Run:
```bash
wc -l skills/22-personal-brand-context/SKILL.md \
      skills/22-personal-brand-context/variants/*.md \
      skills/23-personal-brand-strategy/SKILL.md \
      skills/24-ai-avatar-production/SKILL.md \
      skills/references/ai-avatar-tools-vn.md \
      skills/references/voice-clone-prompts-vn.md \
      skills/references/ai-video-disclosure-vn.md \
      workflows/personal-brand-launch.md
```
Expected: Không file nào > 500 dòng.

- [ ] **Step 12.3: Backward compat test**

Manually:
1. Tạo file fake `.agents/product-marketing-context.md` (chỉ product context)
2. Mental test: chạy skill 04 → output mode SP cũ (không bị ảnh hưởng skill 22 chưa được dùng)
3. Mental test: chạy skill 23 mà không có personal-brand-context.md → trigger skill 22 first

Expected: Both behave correctly.

- [ ] **Step 12.4: Push & Open PR #1**

```bash
git push -u origin phase-1-foundation
gh pr create --base feature/v2.4-personal-brand-cluster \
             --head phase-1-foundation \
             --title "feat: Phase 1 — Foundation + Strategy + AI Avatar (skills 22-24)" \
             --body "$(cat <<'EOF'
## Summary
- Add foundation skill 22-personal-brand-context with 3 variants (founder/coach/creator)
- Add 23-personal-brand-strategy
- Add 24-ai-avatar-production (deep dive 3-tier, 4 workflows)
- Add 3 references: ai-avatar-tools-vn, voice-clone-prompts-vn, ai-video-disclosure-vn
- Add workflow personal-brand-launch (newbie-friendly 8 sections)

## Test plan
- [x] validate-skills.sh passes for 25 skills
- [x] Line counts: no file > 500
- [x] Backward compat test: skill 04 still works as v2.3 with only product-marketing-context.md
- [x] Frontmatter check: all triggers present

## Phase status
- [x] Phase 1: This PR
- [ ] Phase 2: Content + Production (skills 25-26 + extend 04/05)
- [ ] Phase 3: Monetize + Community + Polish (skills 27-28 + agent + docs)

🤖 Generated with [Claude Code](https://claude.com/claude-code)
EOF
)"
```

- [ ] **Step 12.5: Self-review PR + merge phase 1**

Manual review checklist (10 Quality Gates from spec Section 8.D — gates 1-6 applicable to phase 1).

After review:
```bash
git checkout feature/v2.4-personal-brand-cluster
git merge phase-1-foundation
git push origin feature/v2.4-personal-brand-cluster
```

---

# PHASE 2 — Production + Content (3-4 ngày, ~1,800 dòng)

> Sub-branch: `phase-2-content-production`. Khi xong → PR #2.

---

## Task 13: Setup Phase 2 branch

- [ ] **Step 13.1**:

```bash
git checkout feature/v2.4-personal-brand-cluster
git pull origin feature/v2.4-personal-brand-cluster
git checkout -b phase-2-content-production
```

---

## Task 14: Skill 25 — `voice-clone-podcast` SKILL.md

**Files:**
- Create: `skills/25-voice-clone-podcast/SKILL.md`

- [ ] **Step 14.1: Write SKILL.md theo spec Section 3.4 (8 sections + newbie)**

Frontmatter:
```yaml
---
name: 25-voice-clone-podcast
description: "Audio AI cho personal brand — voice clone (ElevenLabs/HeyGen Voice/Vbee), podcast workflow, audiobook, voiceover video. 3 use case: voiceover ngan TikTok/Reels (energetic), podcast 30-60 phut (conversational), audiobook (mid-tempo). Repurpose 1:10 (1 podcast → 10 short clip). Trigger: 'voice clone', 'ElevenLabs giong noi', 'podcast AI', 'audio AI', 'Descript voice', 'Riverside podcast', 'voiceover AI'."
metadata:
  version: 1.0.0
  category: content
license: MIT
triggers:
  - "voice clone"
  - "ElevenLabs giong noi"
  - "podcast AI"
  - "audio AI"
  - "Descript voice"
  - "Riverside podcast"
  - "voiceover AI"
related:
  - 24-ai-avatar-production
  - 26-thought-leadership-content
  - references/voice-clone-prompts-vn
  - references/ai-video-disclosure-vn
---
```

8 sections (Cho người mới + 7 nội dung):
1. Cho người mới (newbie section)
2. Thu thập (4 câu)
3. Voice clone setup
4. 3 use case riêng (voiceover/podcast/audiobook)
5. Tool comparison VN
6. Workflow 1-on-1 podcast với AI co-host
7. Repurpose pipeline 1:10
8. QA audio + Disclosure

- [ ] **Step 14.2: Validate + Commit**

```bash
git add skills/25-voice-clone-podcast/
git commit -m "feat(skill-25): add voice-clone-podcast skill (audio AI, 3 use cases)"
```

---

## Task 15: Skill 26 — `thought-leadership-content` SKILL.md

**Files:**
- Create: `skills/26-thought-leadership-content/SKILL.md`

- [ ] **Step 15.1: Write SKILL.md theo spec Section 3.5**

Frontmatter:
```yaml
---
name: 26-thought-leadership-content
description: "Long-form text content cho personal brand — KHAC voi skill 05 ad copy ban hang. 3 cau truc chuan VN: PAS-Insight (founder), Story-Lesson-CTA (coach), Hook-List-Reveal (creator). 6 hook formulas long-form (controversial question, contrarian opinion, mini-confession, framework drop, data drop, character-driven story). Sentence rhythm engineering. Format theo platform: LinkedIn (1300-3000 ky tu), FB (500-1500 tu), Newsletter (800-2000 tu). Repurpose matrix 1:5. QA Score 100 diem. Trigger: 'viet bai LinkedIn ca nhan', 'thought leadership', 'long form post', 'newsletter', 'FB thread ca nhan', 'viet bai chuyen sau'."
metadata:
  version: 1.0.0
  category: content
license: MIT
triggers:
  - "viet bai LinkedIn ca nhan"
  - "thought leadership"
  - "long form post"
  - "newsletter"
  - "FB thread ca nhan"
  - "viet bai chuyen sau"
related:
  - 22-personal-brand-context
  - 23-personal-brand-strategy
  - 04-script-video
  - references/hook-formulas-vn
---
```

8 sections content (theo spec):
1. Cho người mới
2. Thu thập (4 câu)
3. 3 cấu trúc chuẩn (PAS-Insight / Story-Lesson-CTA / Hook-List-Reveal)
4. 6 hook formulas long-form
5. Sentence rhythm engineering
6. Format đặc biệt theo platform
7. Repurpose matrix 1:5
8. Authority signal injection + QA Score 100

- [ ] **Step 15.2: Validate + Commit**

```bash
git add skills/26-thought-leadership-content/
git commit -m "feat(skill-26): add thought-leadership-content skill (long-form text, 6 hooks)"
```

---

## Task 16: Mở rộng Skill 04 — Personal Brand Mode

**Files:**
- Modify: `skills/04-script-video/SKILL.md` (bump 2.1.0 → 2.2.0)

- [ ] **Step 16.1: Read existing skill 04**

Run: `cat skills/04-script-video/SKILL.md | head -50`
Note current structure for finding insertion point.

- [ ] **Step 16.2: Bump version trong frontmatter**

Edit frontmatter: `version: 2.1.0` → `version: 2.2.0`

- [ ] **Step 16.3: Add triggers mới**

Thêm vào `triggers:` list:
```yaml
- "viet script personal brand"
- "script ca nhan TikTok"
- "story video"
- "viet video LinkedIn ca nhan"
```

- [ ] **Step 16.4: Add Bước 0 — Kiem tra context file**

Thêm trước "Thu thap thong tin":

```markdown
## Bước 0: Kiểm tra context file

1. Đọc cả 2 file (nếu tồn tại):
   - `.agents/product-marketing-context.md`   (marketing SP)
   - `.agents/personal-brand-context.md`      (personal brand)

2. Quyết định mode:
   - Chỉ có product → MODE A (mặc định, hành vi cũ — sections dưới)
   - Chỉ có personal-brand → MODE B (Personal Brand Mode — section dưới)
   - Có cả 2 → HỎI 1 câu: bán SP hay xây personal brand
   - Không có → Đề xuất tạo context phù hợp
```

- [ ] **Step 16.5: Thêm section "Personal Brand Mode" (~80 dòng)**

Sau "Cau truc script theo timestamp", thêm section đầy đủ theo spec Section 4 (skill 04):
- Khác biệt cốt lõi (table 6 yếu tố)
- 4 hook personal brand (table 4 hook + ví dụ VN)
- Cấu trúc script Personal Brand 30s (table timestamp)
- QA Score Personal Brand (10 tiêu chí khác)

- [ ] **Step 16.6: Validate line count**

Run: `wc -l skills/04-script-video/SKILL.md`
Expected: ≤500 (target ~380, vì v2.1 đã ~300).

- [ ] **Step 16.7: Validate frontmatter**

Run: `bash validate-skills.sh skills/04-script-video/`
Expected: PASS.

- [ ] **Step 16.8: Backward compat test**

Mental test: User có chỉ `product-marketing-context.md` → skill 04 chạy như v2.1 (Mode A). User có `personal-brand-context.md` → skill 04 chạy Mode B mới.

- [ ] **Step 16.9: Commit**

```bash
git add skills/04-script-video/SKILL.md
git commit -m "feat(skill-04): add Personal Brand Mode (v2.1.0 → 2.2.0)"
```

---

## Task 17: Mở rộng Skill 05 — Personal Brand Mode

**Files:**
- Modify: `skills/05-copy-quang-cao/SKILL.md` (bump 2.2.0 → 2.3.0)

- [ ] **Step 17.1: Read existing skill 05**

Run: `cat skills/05-copy-quang-cao/SKILL.md | head -50`

- [ ] **Step 17.2: Bump version + add triggers**

Frontmatter: `version: 2.2.0` → `2.3.0`

Thêm triggers:
```yaml
- "ads personal brand"
- "promote LinkedIn profile"
- "boost personal post"
- "quang cao tang follow ca nhan"
```

- [ ] **Step 17.3: Add Bước 0 — Kiem tra context file**

(Cùng pattern như skill 04)

- [ ] **Step 17.4: Thêm section "Personal Brand Mode" (~70 dòng)**

Theo spec Section 4 (skill 05):
- Bảng khác biệt mode (table 5 yếu tố)
- 6 biến thể copy Personal Brand (2 Awareness + 2 Trust + 2 Soft Sell)
- 3 điều kiện CẢNH BÁO trước khi viết copy ads cho personal brand

- [ ] **Step 17.5: Validate + Commit**

Run: `wc -l skills/05-copy-quang-cao/SKILL.md && bash validate-skills.sh skills/05-copy-quang-cao/`
Expected: PASS, ~370 dòng.

```bash
git add skills/05-copy-quang-cao/SKILL.md
git commit -m "feat(skill-05): add Personal Brand Mode (v2.2.0 → 2.3.0)"
```

---

## Task 18: Workflow 2 — `ai-avatar-batch.md`

**Files:**
- Create: `workflows/ai-avatar-batch.md`

- [ ] **Step 18.1: Write 8 sections newbie-friendly (~360 dòng)**

Sections (theo template chuẩn workflow):
1. Workflow này dành cho ai? (30 dòng)
2. Pre-flight Checklist (30 dòng)
3. Step-by-step (5 ngày × ~25 giờ tổng) — 100 dòng
4. Skills chain & Timeline — 30 dòng
5. Success Criteria — 30 dòng (4 tiêu chí + cost/video target)
6. Common Pitfalls (10 lỗi batch production) — 60 dòng
7. AI Research Prompts (5 prompt về batch optimization) — 50 dòng
8. Resources + YouTube placeholder — 30 dòng

- [ ] **Step 18.2: Validate + Commit**

```bash
git add workflows/ai-avatar-batch.md
git commit -m "feat(workflow): add ai-avatar-batch workflow (newbie-friendly, 30 video/5 days)"
```

---

## Task 19: Update workflow-guide.md (intermediate)

**Files:**
- Modify: `docs/workflow-guide.md` (+40 dòng)

- [ ] **Step 19.1: Read current workflow-guide.md**

```bash
wc -l docs/workflow-guide.md
cat docs/workflow-guide.md | head -30
```

- [ ] **Step 19.2: Thêm section workflows mới**

Thêm phần "Personal Brand Workflows" với decision tree chọn workflow.

- [ ] **Step 19.3: Commit**

```bash
git add docs/workflow-guide.md
git commit -m "docs(workflow-guide): add personal brand workflows section"
```

---

## Task 20: Phase 2 Quality Gates + PR

- [ ] **Step 20.1: Run all validate scripts**

```bash
bash validate-skills.sh
```
Expected: All 27 skills pass (22 cũ + 5 mới: 22, 23, 24, 25, 26 + skill 04 + 05 mới bump version).

- [ ] **Step 20.2: Backward compat test (CRITICAL)**

Test 1: User có chỉ `product-marketing-context.md` → skill 04 + 05 chạy y hệt v2.1/v2.2.
Test 2: User có chỉ `personal-brand-context.md` → skill 04 + 05 switch sang Mode B.
Test 3: User có cả 2 → skill HỎI 1 câu chọn mode.

- [ ] **Step 20.3: Push + PR #2**

```bash
git push -u origin phase-2-content-production
gh pr create --base feature/v2.4-personal-brand-cluster \
             --head phase-2-content-production \
             --title "feat: Phase 2 — Content + Production (skills 25-26 + extend 04/05)" \
             --body "[similar to PR #1 template, with Phase 2 specifics]"
```

- [ ] **Step 20.4: Merge phase 2 sau review**

```bash
git checkout feature/v2.4-personal-brand-cluster
git merge phase-2-content-production
git push origin feature/v2.4-personal-brand-cluster
```

---

# PHASE 3 — Monetize + Community + Polish (3-4 ngày, ~2,140 dòng)

> Sub-branch: `phase-3-monetize-community`. Khi xong → PR #3 + tag v2.4.0 final.

---

## Task 21: Setup Phase 3 branch

- [ ] **Step 21.1**:

```bash
git checkout feature/v2.4-personal-brand-cluster
git pull
git checkout -b phase-3-monetize-community
```

---

## Task 22: Skill 27 — `personal-brand-monetize` SKILL.md

**Files:**
- Create: `skills/27-personal-brand-monetize/SKILL.md`

- [ ] **Step 22.1: Write theo spec Section 3.6**

Frontmatter:
```yaml
---
name: 27-personal-brand-monetize
description: "Xay funnel kiem tien tu personal brand — 3 phien ban funnel khac nhau cho founder/coach/creator. Offer ladder template (Free → Low → Mid → High). Pricing psychology ca nhan. Outreach inbound vs outbound. Brand deal negotiation cho creator. Tax & legal VN 2026 (thue ca nhan, ho kinh doanh vs cong ty). Trigger: 'kiem tien personal brand', 'offer ladder ca nhan', 'course launch', '1-on-1 coaching', 'affiliate ca nhan', 'sponsorship deal', 'founder lead gen'."
metadata:
  version: 1.0.0
  category: strategy
license: MIT
triggers:
  - "kiem tien personal brand"
  - "offer ladder ca nhan"
  - "course launch"
  - "1-on-1 coaching"
  - "affiliate ca nhan"
  - "sponsorship deal"
  - "founder lead gen"
related:
  - 22-personal-brand-context
  - 17-pricing-strategy
  - 14-email-marketing
  - 18-referral-program
---
```

8 sections content (theo spec Section 3.6):
1. Cho người mới
2. Thu thập (4 câu)
3. Offer ladder template — 3 phiên bản (founder/coach/creator)
4. Funnel cụ thể từng nhóm
5. Pricing psychology
6. Outreach inbound vs outbound
7. Brand deal negotiation
8. Lead inbound tracking + Tax & legal VN 2026

- [ ] **Step 22.2: Validate + Commit**

```bash
git add skills/27-personal-brand-monetize/
git commit -m "feat(skill-27): add personal-brand-monetize skill (3 funnel versions + pricing + tax VN)"
```

---

## Task 23: Skill 28 — `community-building` SKILL.md

**Files:**
- Create: `skills/28-community-building/SKILL.md`

- [ ] **Step 23.1: Write theo spec Section 3.7**

Frontmatter (đầy đủ triggers từ spec).

8 sections content:
1. Cho người mới
2. Thu thập (4 câu)
3. Platform comparison VN 2026 (Zalo/Telegram/FB/Skool/Mighty/Discord — table)
4. Community blueprint 3 lớp (Public/Member/Inner)
5. Onboarding flow 7 ngày
6. Engagement rituals
7. Moderation playbook
8. Activation metrics + Anti-pattern VN

- [ ] **Step 23.2: Commit**

```bash
git add skills/28-community-building/
git commit -m "feat(skill-28): add community-building skill (Zalo/Telegram/Skool blueprint)"
```

---

## Task 24: Workflow 3 — `personal-brand-monthly.md`

**Files:**
- Create: `workflows/personal-brand-monthly.md`

- [ ] **Step 24.1: Write 8 sections newbie-friendly (~350 dòng)**

Theo template chuẩn:
1-8 sections như Workflow 1, 2 nhưng cho monthly review

- [ ] **Step 24.2: Validate + Commit**

```bash
git add workflows/personal-brand-monthly.md
git commit -m "feat(workflow): add personal-brand-monthly workflow (review + adjust)"
```

---

## Task 25: Agent — `personal-brand-builder.md`

**Files:**
- Create: `agents/personal-brand-builder.md`

- [ ] **Step 25.1: Write theo spec Section 7**

```markdown
---
name: personal-brand-builder
description: Agent xay dung thuong hieu ca nhan voi AI Avatar — chien luoc, content engine, monetization, community cho founder/coach/creator
role: Personal Brand Strategist + AI Avatar Producer + Community Architect
skills:
  - 22-personal-brand-context
  - 23-personal-brand-strategy
  - 24-ai-avatar-production
  - 25-voice-clone-podcast
  - 26-thought-leadership-content
  - 27-personal-brand-monetize
  - 28-community-building
references:
  - ai-avatar-tools-vn
  - voice-clone-prompts-vn
  - ai-video-disclosure-vn
  - hook-formulas-vn
---

[5 nguyên tắc làm việc, khi nào kích hoạt, luồng xử lý, output mẫu, giới hạn, cross-agent collaboration — theo spec Section 7]
```

- [ ] **Step 25.2: Update 3 agents cũ — thêm dòng "Phan biet voi personal-brand-builder"**

Edit `mkt-strategist.md`, `content-producer.md`, `performance-analyst.md` — mỗi file thêm 1-2 dòng phân biệt.

- [ ] **Step 25.3: Commit**

```bash
git add agents/
git commit -m "feat(agent): add personal-brand-builder + update existing agents differentiation"
```

---

## Task 26: docs/personal-brand-guide.md (CẨM NANG 8 chương ~600 dòng)

**Files:**
- Create: `docs/personal-brand-guide.md`

- [ ] **Step 26.1: Write 8 chương đầy đủ**

Chương 1: Personal brand là gì, khác doanh nghiệp brand (50 dòng)
Chương 2: 3 nhóm Founder/Coach/Creator — chọn nhóm nào (80 dòng + decision tree)
Chương 3: AI Avatar — cơ bản, ưu nhược, ethics VN (80 dòng)
Chương 4: 30-day launch — narrative version (kèm câu chuyện thật) (100 dòng)
Chương 5: Common mistakes (15 mistake) (90 dòng)
Chương 6: AI research prompts (10 prompt deep) (80 dòng)
Chương 7: Resources VN (sách, podcast, KOL nên follow) (60 dòng)
Chương 8: FAQ 30 câu (60 dòng)

- [ ] **Step 26.2: Commit**

```bash
git add docs/personal-brand-guide.md
git commit -m "docs(guide): add personal-brand-guide.md (8-chapter cẩm nang)"
```

---

## Task 27: docs/getting-started-personal-brand.md (5-phút quickstart)

**Files:**
- Create: `docs/getting-started-personal-brand.md`

- [ ] **Step 27.1: Write 5-phút quickstart (~200 dòng)**

5 bước cực ngắn cho newbie tuyệt đối:
1. Cài plugin (link)
2. Mở Claude Code, gõ `/skill 22-personal-brand-context`
3. Chọn variant (founder/coach/creator)
4. Trả lời 4 câu thu thập
5. Output → file `.agents/personal-brand-context.md` → tiếp tục skill 23

Plus:
- ASCII screenshot mô tả mỗi bước
- "Khi gặp vấn đề..." troubleshooting 5 lỗi pho biến
- Link sang docs/personal-brand-guide.md cho chi tiết hơn

- [ ] **Step 27.2: Commit**

```bash
git add docs/getting-started-personal-brand.md
git commit -m "docs(getting-started): add 5-min quickstart for personal brand cluster"
```

---

## Task 28: examples/personal-brand-coach.md (sample output)

**Files:**
- Create: `examples/personal-brand-coach.md`

- [ ] **Step 28.1: Write sample output (~180 dòng)**

Sample full output cho 1 coach mẫu (vd: "Coach Linh — Public Speaking Coach"):
- Output skill 22 (filled context với data thực tế)
- Output skill 23 (strategy 12 tháng)
- Output skill 26 (1 long-form bài LinkedIn mẫu)
- Output skill 27 (offer ladder của Linh)

Mục đích: cho user thấy "đầu ra cuối cùng trông như thế nào".

- [ ] **Step 28.2: Commit**

```bash
git add examples/personal-brand-coach.md
git commit -m "docs(examples): add personal-brand-coach sample output"
```

---

## Task 29: Update root files — README.md + README.vi.md

**Files:**
- Modify: `README.md` (+80 dòng)
- Modify: `README.vi.md` (+80 dòng)

- [ ] **Step 29.1: Add v2.4.0 banner**

After badges, before "The Problem":

```markdown
> **🆕 v2.4.0 (2026-MM-DD)** — Personal Brand + AI Avatar Cluster.
> 7 new skills, 1 agent, 3 workflows. Zero breaking changes.
> [Read release notes →](docs/release-notes/v2.4.0.md) ·
> [Quick start →](docs/getting-started-personal-brand.md)
```

- [ ] **Step 29.2: Update badges**

`Skills-22` → `Skills-29`
`Agents-4` → `Agents-5`
`Workflows-4` → `Workflows-7`

- [ ] **Step 29.3: Add 7 dòng vào bảng "22 Skills" → đổi thành "29 Skills"**

Thêm 7 row cho skills 22-28 với link + emoji + category badge.

- [ ] **Step 29.4: Add section "Personal Brand + AI Avatar (NEW v2.4.0)"**

Giữa "29 Skills" và "5 Agents":
- Mermaid diagram cluster
- 30-day launch timeline (Mermaid Gantt)
- 3-tier tools matrix (compact)
- Link tới `examples/personal-brand-coach.md`
- Link tới `docs/getting-started-personal-brand.md`

- [ ] **Step 29.5: Update Project Structure tree**

Thêm 7 skill folders + variants/ + 3 references + 3 workflows + agent + new docs.

- [ ] **Step 29.6: Update "4 Workflows" → "7 Workflows"**

Thêm 3 workflows mới với compact description.

- [ ] **Step 29.7: Sync README.vi.md (100% match)**

Mọi thay đổi của README.md → port sang README.vi.md.

- [ ] **Step 29.8: Commit**

```bash
git add README.md README.vi.md
git commit -m "docs(readme): add v2.4.0 personal brand cluster section + banner + badges (sync EN/VN)"
```

---

## Task 30: Update CLAUDE.md + AGENTS.md

**Files:**
- Modify: `CLAUDE.md` (+30 dòng)
- Modify: `AGENTS.md` (+15 dòng)

- [ ] **Step 30.1: CLAUDE.md — thêm vào bảng "Agent chuyên biệt"**

```markdown
| personal-brand-builder | Thương hiệu cá nhân + AI Avatar | 22, 23, 24, 25, 26, 27, 28 |
```

- [ ] **Step 30.2: CLAUDE.md — thêm 3 workflow vào section workflow**

```markdown
- `personal-brand-launch` = 22 → 23 → 24 → 25 → 26 → 04(personal) → 27 → 28 → 14
- `ai-avatar-batch` = 23 → 26 → 04(personal) → 25 → 24(batch) → 01
- `personal-brand-monthly` = 13 → 03(personal) → 23 → 27 → 26 → 04(personal) → 07(personal)
```

- [ ] **Step 30.3: CLAUDE.md — thêm note về Personal Brand Mode trong skill 04, 05**

```markdown
## Personal Brand Mode (skill 04 + 05)
Skills 04, 05 tự động chuyển mode khi đọc `.agents/personal-brand-context.md`. KHÔNG cần config thủ công.
```

- [ ] **Step 30.4: AGENTS.md — note pattern variants ở skill 22**

Thêm vào section "Foundation skill":

```markdown
## Pattern variants (Skill 22)

Skill `22-personal-brand-context` áp dụng pattern variants giống skill 20:
- 3 variants/{founder/coach/creator}.md
- User chọn 1 variant phù hợp khi chạy
- Skill chính SKILL.md đóng vai trò router + entrypoint
```

- [ ] **Step 30.5: Commit**

```bash
git add CLAUDE.md AGENTS.md
git commit -m "docs(claude-md, agents-md): register 7 new skills + personal-brand-builder agent"
```

---

## Task 31: Update CHANGELOG + VERSIONS + marketplace.json

**Files:**
- Modify: `CHANGELOG.md` (+50 dòng)
- Modify: `VERSIONS.md` (+25 dòng)
- Modify: `.claude-plugin/marketplace.json` (+10 dòng)

- [ ] **Step 31.1: CHANGELOG.md — thêm entry v2.4.0**

(Theo spec Section 8.B đầy đủ)

- [ ] **Step 31.2: VERSIONS.md — thêm 7 skill mới + bump 04/05**

```markdown
| 22-personal-brand-context | 1.0.0 | 2026-MM-DD | Foundation, 3 variants |
| 23-personal-brand-strategy | 1.0.0 | 2026-MM-DD | Strategy 12-month |
| 24-ai-avatar-production | 1.0.0 | 2026-MM-DD | Deep dive, 3-tier, 4 workflows |
| 25-voice-clone-podcast | 1.0.0 | 2026-MM-DD | Audio AI |
| 26-thought-leadership-content | 1.0.0 | 2026-MM-DD | Long-form text |
| 27-personal-brand-monetize | 1.0.0 | 2026-MM-DD | 3 funnel versions |
| 28-community-building | 1.0.0 | 2026-MM-DD | Zalo/Telegram/Skool |
| 04-script-video | 2.2.0 | 2026-MM-DD | Personal Brand Mode |
| 05-copy-quang-cao | 2.3.0 | 2026-MM-DD | Personal Brand Mode |
```

- [ ] **Step 31.3: marketplace.json — bump version + add 7 skills**

```json
{
  "metadata": {
    "version": "2.4.0"
  },
  "plugins": [{
    "skills": [
      ...(existing 22 paths),
      "./skills/22-personal-brand-context",
      "./skills/23-personal-brand-strategy",
      "./skills/24-ai-avatar-production",
      "./skills/25-voice-clone-podcast",
      "./skills/26-thought-leadership-content",
      "./skills/27-personal-brand-monetize",
      "./skills/28-community-building"
    ]
  }]
}
```

- [ ] **Step 31.4: Update description trong marketplace.json**

`"20 skills marketing toan dien..."` → `"29 skills marketing toan dien (22 marketing SP + 7 personal brand)..."`

- [ ] **Step 31.5: Commit**

```bash
git add CHANGELOG.md VERSIONS.md .claude-plugin/marketplace.json
git commit -m "chore(version): bump to v2.4.0 + register 7 new skills"
```

---

## Task 32: docs/release-notes/v2.4.0.md (bilingual ~250 dòng)

**Files:**
- Create: `docs/release-notes/v2.4.0.md`

- [ ] **Step 32.1: Write release notes bilingual**

Cấu trúc theo spec Section 9.A:
- TL;DR 30 giây (VN)
- TL;DR 30 seconds (EN)
- What's New (7 skills, pattern variants, mode mới)
- Migration Guide (zero migration needed)
- Quick Start: Build Personal Brand 30 ngày (link tới getting-started)
- 10 FAQs (top câu hỏi từ docs/faq.md)
- Credits & Acknowledgments

- [ ] **Step 32.2: Commit**

```bash
mkdir -p docs/release-notes
git add docs/release-notes/v2.4.0.md
git commit -m "docs(release-notes): add v2.4.0 release notes (bilingual VN/EN)"
```

---

## Task 33: Update docs/skill-map.md + docs/faq.md

**Files:**
- Modify: `docs/skill-map.md` (+60 dòng)
- Modify: `docs/faq.md` (+80 dòng)

- [ ] **Step 33.1: skill-map.md — update sơ đồ tổng + bảng tra nhanh**

- Cập nhật sơ đồ "Personal Brand Cluster" (ASCII art)
- Bảng tra nhanh 22 → 29 skills
- Thêm decision tree cho personal brand
- Thêm row 5 cho agent personal-brand-builder

- [ ] **Step 33.2: faq.md — thêm 7 Q&A**

Q1: Personal brand cluster khác gì marketing SP cũ?
Q2: Skill 04/05 hoạt động thế nào trong Personal Brand Mode?
Q3: Voice clone có an toàn cho privacy không?
Q4: Disclosure AI ở VN bắt buộc khi nào?
Q5: ROI của personal brand sau 30 ngày — kỳ vọng gì?
Q6: Time commitment thực tế — 1h/tuần đủ không?
Q7: Founder vs Creator strategy — overlap không?

- [ ] **Step 33.3: Commit**

```bash
git add docs/skill-map.md docs/faq.md
git commit -m "docs(skill-map, faq): integrate personal brand cluster (29 skills)"
```

---

## Task 34: Update validate-skills.sh + .ps1

**Files:**
- Modify: `validate-skills.sh` (+5 dòng)
- Modify: `validate-skills.ps1` (+5 dòng)

- [ ] **Step 34.1: validate-skills.sh — thêm check 7 skills mới**

Existing script auto-discovers skills, nhưng thêm check explicit cho:
- Foundation pattern (skill 22 có folder `variants/`)
- 3 variant files đúng tên (01-founder, 02-coach, 03-creator)

- [ ] **Step 34.2: Sync .ps1**

- [ ] **Step 34.3: Run validation**

```bash
bash validate-skills.sh
```
Expected: All 29 skills pass.

- [ ] **Step 34.4: Commit**

```bash
git add validate-skills.sh validate-skills.ps1
git commit -m "chore(validate): add foundation pattern + variants checks"
```

---

## Task 35: Phase 3 Quality Gates — 10 Gates trước final release

- [ ] **Step 35.1: Gate 1 — validate-skills.sh PASS**

```bash
bash validate-skills.sh
```
Expected: All 29 skills pass.

- [ ] **Step 35.2: Gate 2 — Line count check**

```bash
wc -l skills/22-personal-brand-context/SKILL.md \
       skills/22-personal-brand-context/variants/*.md \
       skills/2[3-8]-*/SKILL.md \
       skills/references/{ai-avatar-tools,voice-clone-prompts,ai-video-disclosure}-vn.md \
       workflows/{personal-brand-launch,ai-avatar-batch,personal-brand-monthly}.md \
       agents/personal-brand-builder.md
```
Expected: Không file > 500.

- [ ] **Step 35.3: Gate 3 — Frontmatter consistency**

Verify mỗi SKILL.md có:
- `name:` match folder
- `description:` có triggers (1-1024 chars)
- `metadata.version: 1.0.0`
- `metadata.category` valid

- [ ] **Step 35.4: Gate 4 — Cross-reference check**

Mỗi `related:` skill phải tồn tại. Check bằng grep:
```bash
grep -h "^  - " skills/*/SKILL.md | sort -u | grep -v references
```

- [ ] **Step 35.5: Gate 5 — README sync EN vs VN**

Manual diff để check section structure trùng nhau.

- [ ] **Step 35.6: Gate 6 — CHANGELOG complete**

`grep "^## \[2.4.0\]" CHANGELOG.md` returns 1 match.
Compare link `[2.4.0]: ...compare/v2.3.0...v2.4.0` exists at bottom.

- [ ] **Step 35.7: Gate 7 — Backward compat test**

Tạo workspace fake với chỉ `.agents/product-marketing-context.md`:
- Run skill 04 → output mode SP (như v2.1)
- Run skill 05 → output mode SP (như v2.2)

Expected: Output y hệt v2.3.

- [ ] **Step 35.8: Gate 8 — Forward test**

Tạo workspace fake với chỉ `.agents/personal-brand-context.md`:
- Run skill 04 → output Personal Brand Mode
- Run skill 05 → output Personal Brand Mode

Expected: 4 hook personal brand + soft CTA.

- [ ] **Step 35.9: Gate 9 — End-to-end test workflow personal-brand-launch**

Mental simulation cho 1 founder mẫu:
- Day 1-2: skill 22 (variant founder) → file 01-founder template filled
- Day 3: skill 23 → strategy 12 tháng output
- Day 4-5: skill 24 → AI avatar pipeline
- ...continue 30 days

Expected: Đủ output, không error, không skill bị thiếu input.

- [ ] **Step 35.10: Gate 10 — Plugin install simulation**

Manual test trên Claude Code fresh:
```bash
/plugin install minhnv0807/fullstack-mkt-skills
/plugin list
```

Expected: 29 skills loaded, 5 agents, 7 workflows. No errors.

- [ ] **Step 35.11: All Gates PASS — proceed to PR + tag**

If any gate fails → STOP, fix, re-run gates.

---

## Task 36: Final PR + Release v2.4.0

- [ ] **Step 36.1: Push phase 3 branch**

```bash
git push -u origin phase-3-monetize-community
```

- [ ] **Step 36.2: Create PR #3**

```bash
gh pr create --base feature/v2.4-personal-brand-cluster \
             --head phase-3-monetize-community \
             --title "feat: Phase 3 — Monetize + Community + Polish + v2.4.0 release" \
             --body "[final phase summary + 10 Quality Gates checklist]"
```

- [ ] **Step 36.3: Merge phase 3 → feature branch**

```bash
git checkout feature/v2.4-personal-brand-cluster
git merge phase-3-monetize-community
git push
```

- [ ] **Step 36.4: PR feature branch → master**

```bash
gh pr create --base master \
             --head feature/v2.4-personal-brand-cluster \
             --title "release: v2.4.0 — Personal Brand + AI Avatar Cluster" \
             --body "[full release summary + 3 phases done + 10 Gates passed]"
```

- [ ] **Step 36.5: Merge → master**

```bash
git checkout master
git merge feature/v2.4-personal-brand-cluster
git push origin master
```

- [ ] **Step 36.6: Tag + GitHub Release**

```bash
git tag -a v2.4.0 -m "v2.4.0 — Personal Brand + AI Avatar Cluster

7 new skills, 1 agent, 3 workflows. Zero breaking changes.
See docs/release-notes/v2.4.0.md for details."

git push origin v2.4.0

# Create GitHub Release with body from release notes
gh release create v2.4.0 \
  --title "v2.4.0 — Personal Brand + AI Avatar Cluster" \
  --notes-file docs/release-notes/v2.4.0.md
```

- [ ] **Step 36.7: Pin Discussion**

```bash
gh issue create --title "v2.4.0 Discussion + Feedback" \
                --body "Thread theo dõi feedback v2.4.0 Personal Brand cluster..."
# Pin issue qua GitHub UI
```

- [ ] **Step 36.8: Cleanup branches**

```bash
git branch -d feature/v2.4-personal-brand-cluster
git branch -d phase-1-foundation phase-2-content-production phase-3-monetize-community
git push origin --delete feature/v2.4-personal-brand-cluster phase-1-foundation phase-2-content-production phase-3-monetize-community
```

- [ ] **Step 36.9: Verify release**

```bash
gh release view v2.4.0
git log --oneline -10
```

Expected: tag v2.4.0 visible, last 10 commits clean.

---

# POST-RELEASE — 7 ngày sau (Optional)

## Task 37: Quay video demo (sau ~7 ngày)

- [ ] **Step 37.1: Quay 3 video demo (~5 phút mỗi video)**

1. "Build personal brand trong 5 phút" → cho Founder
2. "AI Avatar batch production" → cho Creator
3. "Coach launch course với personal brand" → cho Coach

- [ ] **Step 37.2: Upload YouTube + update placeholder links**

Update các file:
- `workflows/personal-brand-launch.md` (line ~370)
- `workflows/ai-avatar-batch.md` (line ~350)
- `workflows/personal-brand-monthly.md` (line ~340)
- `docs/getting-started-personal-brand.md`
- `docs/release-notes/v2.4.0.md`

```bash
git checkout master
# edit files, replace [TBD YouTube link] with actual URLs
git add workflows/ docs/
git commit -m "docs(videos): add YouTube demo links for v2.4.0 cluster"
git push
```

- [ ] **Step 37.3: Bump v2.4.1 patch (optional)**

Nếu cảm thấy update video deserves version bump:
- `marketplace.json` → 2.4.1
- `CHANGELOG.md` → entry v2.4.1
- Tag v2.4.1

---

# Self-Review (writer self-check)

## 1. Spec coverage check

| Spec section | Tasks covering it |
|--------------|-------------------|
| Section 1 (Architecture) | Task 0 (setup), file structure prefix |
| Section 2 (Folder structure) | Tasks 1-32 (created files) |
| Section 3 (7 skills detail) | Tasks 1-7, 14-15, 22-23 |
| Section 4 (Skill 04, 05 extension) | Tasks 16, 17 |
| Section 5 (3 references) | Tasks 8, 9, 10 |
| Section 6 (3 workflows) | Tasks 11, 18, 24 |
| Section 7 (Agent) | Task 25 |
| Section 8 (Root files updates + rollout) | Tasks 29, 30, 31, 33, 34; rollout in Tasks 12, 20, 36 |
| Section 9 (Documentation strategy) | Tasks 26, 27, 28, 32 |
| Section 10 (Future Roadmap) | Not implemented in v2.4.0 (intentional) |

✅ All spec sections covered.

## 2. Placeholder scan

Searched plan for: TBD, TODO, "fill in", "implement later".
- TBD found in 5 locations — **all intentional placeholders for YouTube video links** (will be filled in Task 37 post-release)
- "TBD" in CHANGELOG/VERSIONS for "2026-MM-DD" — intentional placeholder for actual release date

✅ No problematic placeholders.

## 3. Type/name consistency check

- Skill names: 22-personal-brand-context, 23-personal-brand-strategy, 24-ai-avatar-production, 25-voice-clone-podcast, 26-thought-leadership-content, 27-personal-brand-monetize, 28-community-building → consistent across all tasks
- Variant files: 01-founder.md, 02-coach.md, 03-creator.md → consistent
- Reference files: ai-avatar-tools-vn.md, voice-clone-prompts-vn.md, ai-video-disclosure-vn.md → consistent
- Workflow files: personal-brand-launch.md, ai-avatar-batch.md, personal-brand-monthly.md → consistent
- Agent: personal-brand-builder.md → consistent
- Branches: feature/v2.4-personal-brand-cluster, phase-1-foundation, phase-2-content-production, phase-3-monetize-community → consistent
- Versions: v2.4.0 → consistent

✅ All names consistent across plan.

## 4. Dependency check

- Phase 1 → Phase 2 → Phase 3 (linear, no cycles)
- Within Phase 1: skill 22 should be built first (foundation), then 23, 24, refs, workflow
- Phase 2 task 16, 17 (modify 04, 05) can be done parallel with task 14, 15 (new skills) — but I sequenced linearly for safety
- Phase 3: skills first, then docs, then root files, then quality gates (correct order)

✅ Dependencies clean.

## 5. Granularity check

Tasks 1-12 (Phase 1): 5-8 steps each, 2-5 min per step → ✅ bite-sized
Tasks 13-20 (Phase 2): similar granularity → ✅
Tasks 21-36 (Phase 3): bigger but still actionable → ✅

✅ Bite-sized as required.

---

**End of plan.**
