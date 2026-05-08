# Design Spec — Personal Brand + AI Avatar Cluster (v2.4.0)

> **Status:** Approved by user (brainstorming phase complete)
> **Created:** 2026-05-08
> **Author:** MKT Strategist AI (brainstorming session with @minhnv0807)
> **Target version:** v2.4.0 (minor bump from v2.3.0)
> **Implementation:** 3 PRs incremental (Approach 2)
> **Future path:** Approach 3 modular MVP (see Section 10)

---

## Executive Summary

Mở rộng dự án `fullstack-mkt-skills` (đang ở v2.3.0 với 22 skills marketing thương hiệu doanh nghiệp) bằng cụm skill mới chuyên về **Personal Branding với AI Avatar**, phục vụ 3 nhóm đối tượng: Founder/CEO, Coach/Consultant, Creator/KOL.

**Phạm vi:**
- 7 skills mới (22–28) trong cluster `personal-brand`
- 1 agent persona mới (`personal-brand-builder`)
- 3 workflows mới (launch / batch / monthly)
- 3 reference files mới (tools, voice prompts, disclosure VN)
- Mở rộng 2 skill cũ (04, 05) với "Personal Brand Mode"
- Pattern variants (3 variants ở foundation skill 22)
- 0 breaking changes — backward compatible 100%

**Tổng quy mô:** ~6,740 dòng mới + ~900 dòng updates root files = 32 file đụng tới.
*(Đã scale-up cho "newbie-friendly" requirement 2026-05-08: workflow chi tiết, getting-started guide, "Cho người mới" sections trong mỗi skill)*

**Timeline:** 14 ngày (3 PRs phased + 2 ngày documentation polish cho newbie).

---

## Decisions Log

5 câu hỏi đã được hỏi và chốt trong brainstorming session ngày 2026-05-08:

| # | Câu hỏi | Đáp án | Lý do |
|---|---------|--------|-------|
| 1 | Đối tượng chính | **D** — Cả 3 nhóm: Founder + Coach + Creator | User muốn cluster phục vụ rộng, áp dụng pattern variants giống skill 20 |
| 2 | Quy mô | **C-2** — 7 skills mới + mở rộng 04/05 | Tránh trùng lặp với skill 04/05 hiện có (overlap ~80% format) |
| 3 | AI Avatar depth | **C** — Deep dive 3 references | User muốn giá trị cao về tools, ethics, multi-workflow |
| 4 | Workflow + Agent | **C.X** — 3 workflows + 1 agent mới | Personal brand là sub-domain riêng cần persona tách biệt |
| 5 | Variants pattern | **B** — Variants chỉ ở foundation 22 | YAGNI — 3 variants đủ, sau iterate lên 9/21 nếu thực sự cần |

**Quyết định bổ sung (2026-05-08, sau brainstorm):**
- Rollout **Approach 2** — incremental 3 PRs trong 1 version
- Branch strategy: `feature/v2.4-personal-brand-cluster` (parent long-running) + 3 sub-branches (`phase-1-foundation`, `phase-2-content-production`, `phase-3-monetize-community`)
- Release timing: **KHÔNG dùng rc tags** (rc1, rc2) — chỉ tag `v2.4.0` final khi hoàn thành cả 3 phases. Lý do: solo maintainer, mỗi phase đã merge master sau pass 10 Quality Gates → ai pull master có "beta" thực
- Documentation chỉn chu: release notes bilingual, Mermaid diagrams, GitHub Discussion pinned
- **Newbie-friendly requirement (BỔ SUNG QUAN TRỌNG):**
  - Mỗi workflow file: 150 → 350-400 dòng (thêm Pre-flight Checklist, Step-by-step cho newbie, Common Pitfalls, AI Research Prompts × 5, Glossary)
  - `docs/personal-brand-guide.md`: 250 → 600 dòng (8 chương đầy đủ)
  - File mới `docs/getting-started-personal-brand.md` (~200 dòng — 5-phút quickstart)
  - Mỗi SKILL.md (22-28) thêm section "Cho người mới" (~50 dòng/skill)
  - Workflow files có placeholder cho YouTube video link (sẽ quay sau release)

---

## Section 1 — Tổng quan kiến trúc & Version impact

### Phạm vi tổng thể

```
v2.3.0 (hiện tại)              v2.4.0 (sau khi build)
22 skills                  →   29 skills (+7)
4 agents                   →   5 agents (+1)
4 workflows                →   7 workflows (+3)
4 reference files          →   7 reference files (+3)
0 personal-brand variants  →   3 variants (skill 22)
```

### Số file cần tạo/sửa

| Loại | Số lượng | Ước tính dòng |
|------|----------|--------------|
| Skill mới (incl. "Cho người mới" section ~50 dòng/skill) | 7 | ~2,750 dòng (avg 400) |
| Variant foundation | 3 | ~600 dòng (avg 200) |
| Reference mới | 3 | ~750 dòng (avg 250) |
| Workflow mới (newbie-friendly) | 3 | ~1,100 dòng (avg 360) |
| Agent mới | 1 | ~80 dòng |
| **Mở rộng** skill 04 | 1 | +80 dòng |
| **Mở rộng** skill 05 | 1 | +80 dòng |
| **Sửa** root files (CLAUDE.md, README.md, README.vi.md, CHANGELOG.md, marketplace.json, docs/skill-map.md, AGENTS.md, VERSIONS.md) | 8 | +300 dòng |
| **Documentation layer** (release notes 250 + personal-brand-guide 600 + getting-started-personal-brand 200 + faq 80 + examples 180) | 5 | ~1,310 dòng |
| **TỔNG** | **32 file đụng tới** | **~6,740 dòng** |

### Tại sao bump major.minor (2.3 → 2.4)?

- **KHÔNG breaking change** — không phá frontmatter, không xoá skill, không restructure folder cũ
- **Minor bump** vì thêm sub-cluster mới (giống cách v2.1 thêm skill 20+21)
- Foundation skill 22 là pattern mới (3 variants) → đáng đánh dấu version riêng

### Nguyên tắc kiến trúc cốt lõi

1. **Backward compatible** — tất cả 22 skill cũ giữ nguyên hành vi mặc định
2. **Foundation isolation** — `personal-brand-context.md` SONG SONG với `product-marketing-context.md`, không thay thế
3. **Skill chain qua context** — không hard-code "đây là personal brand skill", mà skill 04/05 đọc context file rồi tự switch mode
4. **DRY** — 3 reference files dùng chung cho 7 skill, không duplicate trong từng skill
5. **Vietnam-first** — mọi tool, benchmark, ngôn ngữ đều VN 2025–2026

---

## Section 2 — Folder structure & Naming convention

### Cấu trúc folder sau khi build

```
fullstack-mkt-skills/
├── skills/
│   ├── product-marketing-context/         (giữ nguyên)
│   ├── 00-ke-hoach-mkt/ ... 21-audit-ads-performance/  (giữ nguyên)
│   │
│   ├── 22-personal-brand-context/         ★ NEW — Foundation cá nhân
│   │   ├── SKILL.md                       (~250 dòng — entrypoint)
│   │   ├── README.md                      (~100 dòng — hướng dẫn variants)
│   │   └── variants/
│   │       ├── 01-founder.md              (~200 dòng)
│   │       ├── 02-coach.md                (~200 dòng)
│   │       └── 03-creator.md              (~200 dòng)
│   │
│   ├── 23-personal-brand-strategy/        ★ NEW (~400 dòng)
│   ├── 24-ai-avatar-production/           ★ NEW — DEEP DIVE (~480 dòng)
│   ├── 25-voice-clone-podcast/            ★ NEW (~350 dòng)
│   ├── 26-thought-leadership-content/     ★ NEW (~400 dòng)
│   ├── 27-personal-brand-monetize/        ★ NEW (~380 dòng)
│   ├── 28-community-building/             ★ NEW (~340 dòng)
│   │
│   └── references/                        (folder chia sẻ)
│       ├── copy-frameworks-vn.md          (giữ nguyên)
│       ├── hook-formulas-vn.md            (giữ nguyên)
│       ├── mcp-ads-integration.md         (giữ nguyên)
│       ├── quality-gates-vn.md            (giữ nguyên)
│       ├── ai-avatar-tools-vn.md          ★ NEW (~280 dòng)
│       ├── voice-clone-prompts-vn.md      ★ NEW (~220 dòng)
│       └── ai-video-disclosure-vn.md      ★ NEW (~200 dòng)
│
├── workflows/
│   ├── client-onboard.md, campaign-launch.md, monthly-cycle.md, content-production.md  (giữ nguyên)
│   ├── personal-brand-launch.md           ★ NEW (~180 dòng — 30 ngày từ 0)
│   ├── ai-avatar-batch.md                 ★ NEW (~140 dòng — 30 video/lần record)
│   └── personal-brand-monthly.md          ★ NEW (~120 dòng — review + adjust)
│
├── agents/
│   ├── mkt-strategist.md, content-producer.md, performance-analyst.md, channel-operator.md  (giữ nguyên + thêm dòng "Phan biet voi personal-brand-builder")
│   └── personal-brand-builder.md          ★ NEW (~80 dòng)
│
├── docs/
│   ├── skill-map.md                       (cập nhật)
│   ├── workflow-guide.md                  (cập nhật)
│   ├── faq.md                             (thêm Q&A)
│   ├── personal-brand-guide.md            ★ NEW (~600 dòng — 8 chương cẩm nang đầy đủ)
│   ├── getting-started-personal-brand.md  ★ NEW (~200 dòng — 5-phút quickstart cho newbie)
│   └── release-notes/
│       └── v2.4.0.md                      ★ NEW (~250 dòng, bilingual)
│
├── examples/
│   └── personal-brand-coach.md            ★ NEW (~180 dòng)
│
└── (root files cập nhật)
    ├── README.md, README.vi.md            (banner v2.4 + section + bảng)
    ├── CLAUDE.md                          (thêm skills + agent + workflow)
    ├── AGENTS.md                          (note pattern variants)
    ├── CHANGELOG.md                       (entry v2.4.0)
    ├── VERSIONS.md                        (7 skill mới + bump 04/05)
    └── .claude-plugin/marketplace.json    (7 skill paths + bump version)
```

### Naming convention

| Loại | Pattern | Ví dụ |
|------|---------|-------|
| Skill folder | `<NN>-<kebab-case>` | `22-personal-brand-context` |
| Variant file | `<NN>-<short-noun>.md` | `01-founder.md`, `02-coach.md`, `03-creator.md` |
| Reference | `<topic>-vn.md` | `ai-avatar-tools-vn.md` |
| Workflow | `<verb-noun>.md` | `personal-brand-launch.md` |
| Agent | `<role>.md` | `personal-brand-builder.md` |
| Output file mặc định | `<skill-short>-<product>-<YYYYMMDD>.md` | `personal-brand-strategy-luna-spa-20260508.md` |

### Quyết định naming quan trọng

1. **Dùng prefix số (22, 23, ...) tiếp theo từ 21** — KHÔNG dùng folder con `personal-brand/`
2. **Foundation 22 dùng pattern subfolder `variants/`** — giống skill 20
3. **Reference suffix `-vn`** — phân biệt rõ với reference quốc tế
4. **Skill 24 đặt `24-ai-avatar-production`** (không phải `24-ai-avatar`) — vì là pipeline production, không chỉ avatar generator
5. **Skill 25 gộp `voice-clone-podcast`** — cùng tool stack (ElevenLabs, Descript)

### Trade-off đã chốt

Nếu skill 24 vượt 500 dòng khi viết → chuyển 1 phần (vd: workflow translate đa ngôn ngữ) sang reference `ai-avatar-tools-vn.md`.

---

## Section 3 — Chi tiết 7 skills mới

### Skill 22 — `personal-brand-context` (FOUNDATION)

**Frontmatter:**
```yaml
name: 22-personal-brand-context
version: 1.0.0
category: foundation
triggers:
  - "thiet lap personal brand"
  - "context thuong hieu ca nhan"
  - "ho so ca nhan"
  - "dinh vi ca nhan"
  - "founder context"
  - "creator context"
  - "ICP cho ca nhan"
related: [product-marketing-context, 23-personal-brand-strategy]
```

**Mục đích:** Tạo file `.agents/personal-brand-context.md` (song song với `product-marketing-context.md`) — đọc trước mọi skill 23–28.

**12 sections trong template:**

1. Profile cá nhân
2. Niche & lĩnh vực authority
3. North Star của personal brand ("Sau 12 tháng, người ta nhớ tôi vì ___")
4. Audience cá nhân (khác audience công ty)
5. Story arc (3 chương: nguồn gốc → khúc quanh → hiện tại)
6. Content pillars (4 cột)
7. Brand voice cá nhân
8. Visual identity (outfit, background, color, lighting)
9. Anti-personas
10. Authority assets (sách, podcast, chứng chỉ, KOL endorse)
11. Monetization mục tiêu (founder: leads B2B / coach: course / creator: sponsorship + own product)
12. KPI cá nhân (inbound DM, follow growth, mention rate, lead inbound)

**3 variants:**

| Variant | File | Khác biệt chính |
|---------|------|----------------|
| Founder | `variants/01-founder.md` | Thêm sections "Công ty đang làm", "Conflict brand cá nhân vs công ty"; KPI = lead B2B |
| Coach | `variants/02-coach.md` | Thêm sections "Phương pháp dạy độc quyền", "Học viên thành công"; KPI = course conversion |
| Creator | `variants/03-creator.md` | Thêm sections "Niche giải trí/giáo dục/lifestyle", "Brand deal floor price"; KPI = view, follower growth |

**Output:** File `.agents/personal-brand-context.md` (~200 dòng sau khi điền)

---

### Skill 23 — `personal-brand-strategy`

**Frontmatter:**
```yaml
name: 23-personal-brand-strategy
version: 1.0.0
category: strategy
triggers:
  - "chien luoc personal brand"
  - "dinh vi ca nhan"
  - "niche selection"
  - "content pillar ca nhan"
  - "story arc"
  - "founder positioning"
related: [22-personal-brand-context, 26-thought-leadership-content, 09-insight-khach-hang]
```

**Mục đích:** Tạo file chiến lược 12 tháng: niche → positioning → content engine → growth plan.

**Sections (~400 dòng):**

1. Đọc context (skill 22 trước) — nếu chưa có → trigger 22
2. Niche selection framework (Ikigai cá nhân + 3×3 grid: passion × skill × demand)
3. Positioning statement: "Tôi giúp [audience] đạt [outcome] thông qua [unique method] trong [timeline]"
4. Story arc 3 chương (Hero's Journey adapt VN)
5. Content pillars (4 cột × 7 chủ đề = 28 chủ đề/12 tháng)
6. Authority ladder 5 nấc: có người biết → được mời nói → media tham vấn → industry voice → category creator
7. 12-month growth plan: Q1 foundation → Q2 amplify → Q3 monetize → Q4 scale
8. Risk & ethics (boundary personal/company, conflict of interest, AI disclosure)

**Output:** `personal-brand-strategy-[ten]-[YYYYMMDD].md` (~1500 từ)

---

### Skill 24 — `ai-avatar-production` (FLAGSHIP DEEP DIVE)

**Frontmatter:**
```yaml
name: 24-ai-avatar-production
version: 1.0.0
category: content
triggers:
  - "tao avatar AI"
  - "video AI HeyGen"
  - "voice clone ElevenLabs"
  - "lipsync Captions"
  - "AI video translate"
  - "talking head AI"
  - "batch video AI"
related: [25-voice-clone-podcast, 04-script-video, 26-thought-leadership-content, references/ai-avatar-tools-vn, references/ai-video-disclosure-vn]
```

**Sections (~480 dòng):**

1. Thu thập thông tin (4 câu): mục đích / nền tảng / ngân sách tier / số lượng/tháng
2. Quyết định tier — ma trận chọn tool:

| Tier | Ngân sách/tháng | Stack đại diện | Phù hợp |
|------|----------------|---------------|---------|
| Free | 0–500K VND | HeyGen Free + ElevenLabs Free + CapCut | Test ý tưởng, <5 video/tháng |
| Pro | 1–3M VND | HeyGen Creator ($29) + ElevenLabs Starter ($5) + Captions Pro ($16) | 10–30 video/tháng |
| Enterprise | 5M+ VND | HeyGen Team + Synthesia Pro + ElevenLabs Pro + Heygen Translate | Agency, multi-language, 50+ video/tháng |

3. **Workflow 1:** Single avatar production (script → voice → upload avatar → render → caption → publish)
4. **Workflow 2:** Translate đa ngôn ngữ (1 video VN → 5–10 ngôn ngữ với HeyGen Translate / Rask AI)
5. **Workflow 3:** Batch production (1 lần record 60 phút → 30 video/tháng)
6. **Workflow 4:** Hybrid real + AI (quay thật + AI lip-sync với Captions Edit)
7. Voice clone protocol (1–3 phút sample → ElevenLabs / Resemble / HeyGen Voice)
8. Avatar setup checklist (outfit, background, lighting, camera angle, gestures)
9. Anti-detection cho FB/IG/TikTok VN (caption thật, B-roll xen kẽ, micro-expression, thay đổi tốc độ)
10. Ethics & disclosure VN (Nghị định 147/2024, Luật QC 2012 sửa đổi 2024, FTC)
11. QA Score 100 điểm: lip-sync (20), tone tự nhiên (20), gesture (15), background (10), caption (10), CTA (10), thumbnail (10), audio quality (5)
12. Reference links → đẩy chi tiết tool sang `references/ai-avatar-tools-vn.md`

**Output:**
- `ai-avatar-pipeline-[ten]-[YYYYMMDD].md` (kế hoạch batch)
- `ai-avatar-single-[ten-video]-[YYYYMMDD].md` (1 video cụ thể)

---

### Skill 25 — `voice-clone-podcast`

**Frontmatter:**
```yaml
name: 25-voice-clone-podcast
version: 1.0.0
category: content
triggers:
  - "voice clone"
  - "ElevenLabs giong noi"
  - "podcast AI"
  - "audio AI"
  - "Descript voice"
  - "Riverside podcast"
related: [24-ai-avatar-production, 26-thought-leadership-content, references/voice-clone-prompts-vn]
```

**Sections (~350 dòng):**

1. Thu thập (4 câu): mục đích / nền tảng (Spotify/Apple/Voiz FM/Fonos) / ngân sách / format
2. Voice clone setup (record sample chuẩn 1–3 phút, môi trường acoustic, emotion range)
3. 3 use case riêng:
   - Voiceover video TikTok/Reels (ngắn, energetic)
   - Podcast 30–60 phút (chậm, conversational)
   - Audio book/course (mid-tempo, structured)
4. Tool comparison VN: ElevenLabs (đa ngôn ngữ) vs PlayHT (rẻ) vs HeyGen Voice (gắn avatar) vs Vbee (giọng VN tự nhiên nhất 2026)
5. Workflow 1-on-1 podcast với AI co-host (NotebookLM, Descript Underlord)
6. Repurpose pipeline: 1 podcast 60' → 10 short clip + 5 quote card + 1 newsletter
7. QA audio: noise floor, dynamic range, voice consistency, emotion check
8. Disclosure: khi nào nói "đây là AI voice"

**Output:** `voice-production-[ten]-[YYYYMMDD].md`

---

### Skill 26 — `thought-leadership-content`

**Frontmatter:**
```yaml
name: 26-thought-leadership-content
version: 1.0.0
category: content
triggers:
  - "viet bai LinkedIn ca nhan"
  - "thought leadership"
  - "long form post"
  - "newsletter"
  - "FB thread ca nhan"
  - "viet bai chuyen sau"
related: [22-personal-brand-context, 23-personal-brand-strategy, 04-script-video, references/hook-formulas-vn]
```

**Sections (~400 dòng):**

1. Thu thập (4 câu): pillar / nền tảng (LinkedIn/FB/newsletter/Substack/Medium VN) / độ dài / mục tiêu
2. 3 cấu trúc chuẩn cho VN:
   - **PAS-Insight** (Problem-Agitate-Solution + insight cá nhân) — founder
   - **Story-Lesson-CTA** — coach
   - **Hook-List-Reveal** — creator/KOL
3. 6 hook formulas long-form (khác hook video): câu hỏi controversial, contrarian opinion, mini-confession, framework drop, data drop, character-driven story
4. Sentence rhythm engineering (câu ngắn–dài–ngắn theo Justin Welsh)
5. Format đặc biệt theo platform:
   - LinkedIn: 1300–3000 ký tự, hook 200 ký tự đầu, CTA mềm
   - FB: 500–1500 từ, story-driven, emoji selective
   - Newsletter: 800–2000 từ, có TL;DR, structured headers
6. Repurpose matrix 1:5 — 1 long-form → 1 carousel + 1 video script + 1 podcast outline + 1 quote card + 1 community discussion
7. Authority signal injection (khi nào "tôi đã từng…", khi nào số liệu, khi nào câu chuyện 3rd party)
8. QA Score 100 điểm: hook (20), độ dày insight (25), readability (15), authenticity (15), CTA (10), authority signal (10), formatting (5)

**Output:** `thought-leadership-[topic]-[YYYYMMDD].md`

---

### Skill 27 — `personal-brand-monetize`

**Frontmatter:**
```yaml
name: 27-personal-brand-monetize
version: 1.0.0
category: strategy
triggers:
  - "kiem tien personal brand"
  - "offer ladder ca nhan"
  - "course launch"
  - "1-on-1 coaching"
  - "affiliate ca nhan"
  - "sponsorship deal"
  - "founder lead gen"
related: [22-personal-brand-context, 17-pricing-strategy, 14-email-marketing, 18-referral-program]
```

**Sections (~380 dòng):**

1. Thu thập (4 câu): nhóm / audience size / monetization stage / target revenue
2. Offer ladder template — 3 phiên bản:

| Tầng | Founder | Coach | Creator |
|------|---------|-------|---------|
| Free | LinkedIn post + DM mở | Lead magnet PDF | TikTok content |
| Low | Workshop trả phí ($50) | Course self-paced ($200–500) | Affiliate / digital product ($20–100) |
| Mid | Consulting ngắn ($1k–5k) | Cohort course ($1k–3k) | Brand deal / sponsored content |
| High | Retainer / advisory ($10k+/mo) | 1-on-1 coaching ($5k–20k) | Own brand / merchandise / SaaS |

3. Funnel cụ thể từng nhóm:
   - **Founder:** LinkedIn → Profile → DM "muốn nói chuyện" → Discovery call → Proposal → Retainer (4–8 tuần)
   - **Coach:** Long-form → Lead magnet → Email 7 ngày → Webinar/VSL → Course (14–30 ngày)
   - **Creator:** Short-form viral → Bio link → Email/Discord/Skool → Low-ticket → Recurring (7–14 ngày)
4. Pricing psychology cá nhân (anchor effect cho expert, premium signaling, tham chiếu skill 17)
5. Outreach inbound vs outbound (khi nào reactive, khi nào proactive)
6. Brand deal negotiation cho creator (floor price/1k follower, deliverables, exclusivity, usage rights)
7. Lead inbound tracking (Google Sheet template + funnel metrics)
8. Tax & legal VN 2026 (thuế cá nhân, hộ kinh doanh vs công ty, hợp đồng brand deal)

**Output:** `personal-brand-monetize-[ten]-[YYYYMMDD].md`

---

### Skill 28 — `community-building`

**Frontmatter:**
```yaml
name: 28-community-building
version: 1.0.0
category: operations
triggers:
  - "xay cong dong"
  - "Zalo group"
  - "Telegram cong dong"
  - "Skool community"
  - "Mighty Networks"
  - "Discord server"
  - "FB group rieng"
related: [22-personal-brand-context, 27-personal-brand-monetize, 14-email-marketing, 18-referral-program]
```

**Sections (~340 dòng):**

1. Thu thập (4 câu): mục đích / nền tảng / size mục tiêu / mức độ moderation
2. Platform comparison VN 2026:

| Platform | Phù hợp | Pros | Cons |
|----------|---------|------|------|
| Zalo OA + Zalo Group | Founder/Coach VN local | Native VN, 80M users | Limit moderation |
| Telegram Channel + Group | Creator/community lớn | Free, không limit, bot mạnh | Demographic trẻ |
| FB Group | Mass audience | Reach lớn nhất | Reach giảm, không own data |
| Skool | Coach trả phí | Course + community 1 chỗ | $99/mo, tiếng Anh |
| Mighty Networks | Coach premium | Branded experience | $39+/mo |
| Discord | Creator/gamer/tech | Highly engaged | Khó cho audience không tech |

3. Community blueprint 3 lớp: Public (free) → Member (mid, opt-in) → Inner (high, paid)
4. Onboarding flow 7 ngày (welcome, intro thread, expectation, first activation)
5. Engagement rituals: Daily prompt / Weekly AMA / Monthly celebration
6. Moderation playbook (rules, escalation ladder, banhammer criteria)
7. Activation metrics: % active 7/30 ngày, post-to-comment ratio, retention 90 ngày
8. Anti-pattern VN: spam Zalo group, share link ngày đầu, force engagement

**Output:** `community-blueprint-[ten]-[YYYYMMDD].md`

---

### Quan hệ giữa 7 skills

```
22 context (variants 3 nhóm)
    ↓ (output: .agents/personal-brand-context.md)
23 strategy ────────┬────→ 26 thought-leadership ──┐
    ↓               │                                ↓
    ↓               └────→ 24 ai-avatar     ──→  Distribution
    ↓                          ↓                     ↓
    ↓                       25 voice-clone           ↓
    ↓                                                ↓
    └────────────────────→ 27 monetize ────→ 28 community
                              ↓                     ↓
                              └─────── revenue ─────┘
```

---

## Section 4 — Mở rộng skill 04, 05 với "Personal Brand Mode"

### Cơ chế phát hiện context (chung cho 04 và 05)

Thêm vào **Bước 0: Kiem tra context file** ở mỗi skill:

```
1. Đọc cả 2 file (nếu tồn tại):
   - .agents/product-marketing-context.md   (marketing SP)
   - .agents/personal-brand-context.md      (personal brand)

2. Quyết định mode:
   ├─ Chỉ có product-marketing-context     → MODE A (mặc định, hành vi cũ)
   ├─ Chỉ có personal-brand-context        → MODE B (personal brand) — TỰ động
   ├─ Có CẢ HAI                            → HỎI 1 câu: bán SP hay personal brand
   └─ Không có context nào                 → Đề xuất tạo
```

**Nguyên tắc backward compat:** User cũ chỉ có `product-marketing-context.md` → skill 04/05 chạy y hệt.

### Skill 04 — `script-video` (2.1.0 → 2.2.0)

**Thêm 1 section "Personal Brand Mode" (~80 dòng):**

| Yếu tố | Mode SP (mặc định) | Personal Brand Mode |
|--------|-------------------|---------------------|
| Funnel | TOFU/MOFU/BOFU | Awareness / Trust / Authority / Soft sell |
| Hook | 6 hook bán hàng | 4 hook cá nhân (story-driven, contrarian, mini-confession, behind-the-scene) |
| Tone | Chuyên nghiệp về SP | Cá nhân, có cảm xúc, có quan điểm |
| CTA | "Nhắn tin", "Comment đặt hàng" | "Follow để nghe tiếp", "Save để đọc lại" — KHÔNG bán trực tiếp |
| 1 ý chính | 1 USP của SP | 1 insight/quan điểm/câu chuyện của người |

**4 hook personal brand:**

| # | Tên | Công thức | Ví dụ VN |
|---|-----|-----------|----------|
| 1 | Mini-confession | Thừa nhận sai lầm/yếu kém | "3 năm trước tôi nghĩ tôi giỏi marketing. Tôi đã sai." |
| 2 | Contrarian opinion | Nói ngược dòng | "Đa số founder nghĩ phải có công ty trước rồi mới build personal brand. Tôi làm ngược lại." |
| 3 | Behind-the-scene | Show cái không ai thấy | "Đây là cách tôi viết 1 bài LinkedIn 30 phút thay vì 3 tiếng." |
| 4 | Story hook | Mở bằng cảnh cụ thể | "8 giờ tối thứ 6. Tôi nhìn vào màn hình. CEO vừa nhắn từ chối deal." |

**Cấu trúc script Personal Brand (30s):**

| Timestamp | Phần | Khác mode SP |
|-----------|------|--------------|
| [0–3s] | Hook cá nhân | Hook story-driven, không hook bán |
| [3–10s] | Setup story | Phải có "Tôi" hoặc "Một khách hàng tôi" |
| [10–22s] | Insight/Lesson | Đây là phần dài nhất — KHÁC mode SP |
| [22–28s] | Soft proof | KHÔNG show số liệu kiểu ad |
| [28–30s] | Soft CTA | KHÔNG "Nhắn tin đặt hàng" |

**Triggers thêm:** "viet script personal brand", "script ca nhan TikTok", "story video", "viet video LinkedIn ca nhan"

### Skill 05 — `copy-quang-cao` (2.2.0 → 2.3.0)

**Thêm section "Personal Brand Mode" (~70 dòng):**

| Yếu tố | Mode SP | Personal Brand Mode |
|--------|---------|---------------------|
| Mục tiêu | Conversion (đặt hàng) | Inbound DM / Profile visit / Follow |
| Đối tượng | Cold/Warm/Hot persona SP | Awareness/Trust/Authority |
| Headline | "Giảm 50% — chỉ hôm nay" | "Tôi đã từ chối deal $50k vì 1 lý do" |
| Body | USP + benefit + proof | Story + insight + soft signal |
| CTA | "Đặt ngay" "Mua ngay" | "Theo dõi để xem tiếp" "DM tôi nếu bạn cũng thấy vậy" |

**6 biến thể copy Personal Brand:**
- 2 Awareness — kéo follow (story hook + curiosity gap)
- 2 Trust — show authority qua case study cá nhân (không phô trương)
- 2 Soft Sell — chỉ chạy khi user đã warm

**3 điều kiện bắt buộc cảnh báo trước khi viết copy ads cho personal brand:**
1. Profile chưa có tối thiểu 20 bài organic chất lượng
2. Chưa có lead magnet hoặc destination rõ
3. USP cá nhân chưa khác biệt đủ với 5 KOL cùng niche

**Triggers thêm:** "ads personal brand", "promote LinkedIn profile", "boost personal post", "quang cao tang follow ca nhan"

---

## Section 5 — 3 Reference Files mới

### Reference 1: `references/ai-avatar-tools-vn.md` (~280 dòng)

**Dùng bởi:** Skill 24, 25

**Sections:**

1. **Decision tree chọn tool** — flowchart "Bạn muốn gì?" → tool gợi ý
2. **3 tier × 5 use case = 15 ô** — ma trận:

| Use case | Free | Pro ($30–100/mo) | Enterprise ($500+/mo) |
|----------|------|------------------|----------------------|
| Avatar talking head | HeyGen Free, D-ID Free | HeyGen Creator, Synthesia Starter | HeyGen Team, Synthesia Pro |
| Voice clone | ElevenLabs Free, PlayHT Free | ElevenLabs Starter, ElevenLabs Creator | ElevenLabs Pro, Resemble Pro |
| Lip-sync | CapCut, Captions Free | Captions Pro, Hedra | Runway Act-One Enterprise |
| Translate đa ngôn ngữ | — | HeyGen Translate, Rask AI Starter | HeyGen Translate Team, Rask AI Pro |
| Batch production | — | Pictory, Opus Clip | Synthesia Pro + custom workflow |

3. **Tool deep dive (15 tools, mỗi tool ~12–15 dòng)** — pricing, VN access, best for, pitfall:
   HeyGen, Synthesia, D-ID, Captions, Hedra, Runway Gen-3, Pika Labs, ElevenLabs, PlayHT, Vbee, Murf, Descript, Riverside, Rask AI, Pictory

4. **VN-specific notes:**
   - Tool có UI tiếng Việt
   - Tool có giọng VN native
   - Thanh toán bằng MoMo/ZaloPay (gần như không có — phần lớn cần Visa/MasterCard)
   - Workaround mua sub: dùng Stripe-friendly card, hoặc dịch vụ mua hộ VN

5. **Cập nhật log** — bảng changelog reference: ai cập nhật, ngày, thay đổi gì

**Lưu ý:** File này có rủi ro lỗi thời cao nhất → cảnh báo top file: "Cập nhật cuối: YYYY-MM-DD. Giá có thể đã thay đổi — kiểm tra trang chính thức trước khi mua."

### Reference 2: `references/voice-clone-prompts-vn.md` (~220 dòng)

**Dùng bởi:** Skill 24, 25

**Sections:**

1. Nguyên tắc record sample chuẩn (môi trường, mic, format, độ dài tối thiểu)
2. **3 sample script chuẩn theo vùng giọng:**
   - Sample A — Giọng Bắc (Hà Nội) ~120 từ — bao phủ thanh điệu, phụ âm khó (tr/ch, s/x, r/d/gi)
   - Sample B — Giọng Nam (TP.HCM) ~120 từ — adapt thanh điệu giọng Nam (hỏi/ngã không phân biệt)
   - Sample C — Giọng Trung (Huế/Đà Nẵng) ~120 từ — cẩn trọng vì AI tool ít train
3. Emotion range script (4 đoạn × 30s): trung tính / vui mừng / trầm tư / quyết liệt
4. Tool-specific prompt:
   - ElevenLabs Voice Design — 6 kiểu giọng mẫu (founder confident, coach warm, creator casual...)
   - HeyGen Custom Voice — workflow upload + retrain
   - Vbee Voice Studio — tip cho giọng VN tự nhiên
5. Common pitfalls (đọc đều, background noise, đọc nhanh/chậm, có nhạc nền)
6. Voice consistency check — sau khi clone, test 5 câu mới → so với sample → score 0–10

### Reference 3: `references/ai-video-disclosure-vn.md` (~200 dòng)

**Dùng bởi:** Skill 24, 25

**Sections:**

1. Bối cảnh pháp lý VN 2025–2026:
   - Nghị định 147/2024/NĐ-CP về quản lý nội dung số
   - Luật Quảng cáo 2012 + sửa đổi 2024
   - Hướng dẫn Cục Phát thanh Truyền hình & Thông tin điện tử về deepfake
   - FTC Guidelines (Mỹ) — áp dụng nếu phục vụ user Mỹ qua YouTube/TikTok

2. **Quy tắc 3 tầng disclose:**

| Tầng | Khi nào | Cách disclose | Ví dụ |
|------|---------|---------------|-------|
| BẮT BUỘC | Quảng cáo SP/dịch vụ + AI avatar khác mặt người thật | Disclaimer rõ trên video + caption | "Video sử dụng công nghệ AI Avatar — speaker không phải người thật" |
| NÊN | Educational + AI giọng/avatar | Mention 1 lần ở mô tả/comment cố định | "Nội dung này được tạo với hỗ trợ của AI" |
| TÙY CHỌN | Personal brand + AI repurpose voice của chính mình | Có thể không disclose | (Voice clone của chính mình thì là extension) |

3. **Khi nào TUYỆT ĐỐI KHÔNG dùng AI Avatar:**
   - Mạo danh người thật khác (deepfake)
   - Testimonial giả (avatar nói "tôi đã dùng SP X")
   - Nội dung y tế/tài chính sensitive
   - Trẻ em (dù xin phép)

4. Template disclosure cho từng nền tảng (TikTok, YouTube, Facebook/Instagram, LinkedIn, personal website)
5. Case study VN 2025 (3 case)
6. Decision tree: "Tôi có cần disclose không?" — flowchart 5 câu hỏi
7. Disclosure copy template — 5 mẫu sẵn dùng

---

## Section 6 — 3 Workflows mới (NEWBIE-FRIENDLY)

> **QUAN TRỌNG (cập nhật 2026-05-08):** Workflow files là entrypoint chính cho người mới. Mỗi file phải đủ chi tiết để newbie chưa từng dùng skill có thể follow từ A-Z. Mỗi workflow có **8 sections bắt buộc** (xem template chuẩn dưới).

### Template chuẩn cho mỗi workflow file (~350-400 dòng)

```markdown
# [Tên workflow]

## 0. Workflow này dành cho ai?
- Đối tượng cụ thể
- Stage đang ở đâu
- Output sẽ đạt được sau khi xong

## 1. Pre-flight Checklist (cho newbie)
- [ ] Plugin đã cài chưa (link cài đặt)
- [ ] Đã có context file chưa (`.agents/personal-brand-context.md`)
- [ ] Tài khoản nào cần sẵn (LinkedIn, FB, Zalo OA, HeyGen, ...)
- [ ] Ngân sách tool tier (Free/Pro/Enterprise)
- [ ] Thời gian rảnh tối thiểu

## 2. Step-by-step (tính theo giờ/ngày)
[Chi tiết từng giờ — gõ command gì, AI hỏi gì, mong đợi output gì,
KIỂM TRA gì sau khi xong]

## 3. Skills chain & Timeline (high-level)
[Diagram + bảng]

## 4. Success Criteria
- ✅ Tiêu chí 1
- ✅ Tiêu chí 2
...

## 5. Common Pitfalls (10 lỗi newbie hay gặp)
[Liệt kê 10 pitfalls + fix cho mỗi cái]

## 6. AI Research Prompts (5 prompt)
[5 prompt cụ thể user paste vào ChatGPT/Claude/Gemini để
đào sâu hơn về workflow này]

## 7. Glossary (thuật ngữ)
[15-20 terms quan trọng + giải thích ngắn]

## 8. Resources & Next Steps
- Link tới skill chi tiết
- Link tới docs/personal-brand-guide.md chương liên quan
- Video demo: [TBD YouTube link — sẽ quay sau khi release v2.4.0]
```

---

### Workflow 1: `personal-brand-launch.md` (~380 dòng)

**Mục đích:** Xây personal brand từ 0 đến vận hành ổn trong 30 ngày.

**Đối tượng:** Founder/Coach/Creator vừa quyết định build personal brand, chưa có content lịch sử.

**Timeline 4 tuần:**

```
TUẦN 1 — FOUNDATION (2-3 ngày active work)
Day 1-2: Skill 22 personal-brand-context (chọn variant)
Day 3:   Skill 23 personal-brand-strategy

TUẦN 2 — PRODUCTION SETUP (3-4 ngày active work)
Day 4-5: Skill 24 ai-avatar-production
Day 6:   Skill 25 voice-clone-podcast (nếu có plan podcast/audio)
Day 7:   Skill 26 thought-leadership-content (4 long-form draft)

TUẦN 3 — DISTRIBUTION (3 ngày)
Day 8:   Skill 04 (mode personal) — script video pillar 1+2
Day 9:   Skill 04 (mode personal) — script video pillar 3+4
Day 10:  Produce 4 video AI + đăng 4 long-form

TUẦN 4 — MONETIZATION + COMMUNITY (3-5 ngày)
Day 11-12: Skill 27 personal-brand-monetize
Day 13:    Skill 28 community-building
Day 14:    Skill 14 email-marketing
```

**Skills chain:** `22 → 23 → 24 → 25 → 26 → 04(personal) → 27 → 28 → 14`

**Success criteria sau 30 ngày:**
- ✅ 8 long-form post + 8 short video
- ✅ 1 lead magnet + landing page
- ✅ Cộng đồng riêng ≥ 30 người
- ✅ Email automation 7 ngày
- ✅ Baseline metrics: profile visit/tuần, DM inbound/tuần, follow growth

### Workflow 2: `ai-avatar-batch.md` (~140 dòng)

**Mục đích:** Sản xuất 30 video AI Avatar trong 3-5 ngày từ 1 lần record.

**Timeline 5 ngày:**

```
NGÀY 1 — CONTENT PLANNING (4 giờ): 30 chủ đề × pillar × hook × CTA
NGÀY 2 — SCRIPT BATCH (6 giờ): 30 script 30s
NGÀY 3 — VOICE BATCH (3-4 giờ): voice clone hoặc record studio
NGÀY 4 — AVATAR RENDER + EDIT (8 giờ): HeyGen + CapCut/Captions
NGÀY 5 — TRANSLATE + PUBLISH SCHEDULE (4 giờ): translate optional, lên lịch 30 ngày × 4 nền tảng
```

**Skills chain:** `23 → 26 → 04(personal) → 25 → 24(batch) → 24(translate optional) → 01`

**Success criteria:**
- ✅ 30 video × 30s sản xuất xong
- ✅ Tổng < 25 giờ → cost/video < 50 phút
- ✅ QA Score TB ≥ 80/100
- ✅ Lịch đăng 30 ngày × ≥ 2 nền tảng

### Workflow 3: `personal-brand-monthly.md` (~120 dòng)

**Mục đích:** Review hiệu suất + adjust chiến lược tháng sau.

**Timeline 3-5 ngày cuối tháng:**

```
NGÀY 1 — DATA PULL + AUDIT (3-4 giờ): Skill 13 + 03 (mode personal)
NGÀY 2 — INSIGHT EXTRACTION (2-3 giờ): 5 Whys + 3 patterns
NGÀY 3-4 — ADJUST + PLAN (4-6 giờ): Skill 23 + 27 + 26 + 04 + 24 batch prep
NGÀY 5 — REPORT (1-2 giờ): Skill 07 (mode personal)
```

**Skills chain:** `13 → 03(personal) → 23 → 27 → 26 → 04(personal) → 07(personal)`

**5 dimensions chấm điểm:**
- Authority signals (mention, share, save)
- Trust signals (DM, comment depth)
- Reach (follow growth, view, impression)
- Conversion (lead inbound, application, sales)
- Community health (active rate, retention)

### So sánh 3 workflows mới với 4 workflows cũ

| Workflow | Chu kỳ | Skills | Thời gian active |
|----------|--------|--------|------------------|
| Cũ: client-onboard | 1 lần | 7 skill | 5-7 ngày |
| Cũ: campaign-launch | 1 lần | 9 skill | 14-21 ngày |
| Cũ: monthly-cycle | Hàng tháng | 5 skill | 3-5 ngày |
| Cũ: content-production | Hàng tuần | 4 skill | 5 ngày |
| MỚI: personal-brand-launch | 1 lần | 9 skill | 30 ngày (active 12-15) |
| MỚI: ai-avatar-batch | Hàng tháng | 6 skill | 3-5 ngày |
| MỚI: personal-brand-monthly | Hàng tháng | 7 skill | 3-5 ngày |

**Chú ý:** 2 workflow chu kỳ "Hàng tháng" (cũ `monthly-cycle` + mới `personal-brand-monthly`) — KHÁC nhau, không conflict.

---

## Section 7 — Agent persona mới `personal-brand-builder`

**File `agents/personal-brand-builder.md` (~80 dòng):**

```yaml
---
name: personal-brand-builder
description: Agent xay dung thuong hieu ca nhan voi AI Avatar — chien luoc, content engine, monetization, community cho founder/coach/creator
role: Personal Brand Strategist + AI Avatar Producer + Community Architect
skills: [22-personal-brand-context, 23-personal-brand-strategy, 24-ai-avatar-production, 25-voice-clone-podcast, 26-thought-leadership-content, 27-personal-brand-monetize, 28-community-building]
references: [ai-avatar-tools-vn, voice-clone-prompts-vn, ai-video-disclosure-vn, hook-formulas-vn]
---
```

**5 nguyên tắc làm việc:**

1. **Authentic > Polished** — từ chối viết content "đỡ hộ", luôn insist user contribute ít nhất 1 anecdote/insight cá nhân
2. **Soft sell only** — không cho phép skill 04/05 chuyển sang aggressive sales mode khi context là personal brand
3. **Avatar = extension, không phải mask** — voice clone phải của chính user, không dùng voice người khác. Avatar phải disclose theo skill 24 ethics rule
4. **3 nhóm — 3 phiên bản** — Founder, Coach, Creator cần output khác hẳn. Đọc variant trong skill 22 trước khi quyết định tone/funnel
5. **Vietnam-first** — ưu tiên Zalo, FB, TikTok VN. Disclosure theo Nghị định 147/2024

**Khi nào kích hoạt:**
- User nói "build personal brand", "thương hiệu cá nhân"
- User hỏi về AI Avatar (HeyGen, Synthesia, ElevenLabs)
- User là founder/coach/creator hỏi về content engine
- User cần launch course / coaching / consulting funnel
- User cần xây cộng đồng riêng

**Phân biệt với `mkt-strategist`:**
- `mkt-strategist` = thương hiệu doanh nghiệp / sản phẩm
- `personal-brand-builder` = thương hiệu cá nhân
- Nếu user có CẢ HAI mục tiêu → kích hoạt cả 2 agent, hỏi user ưu tiên

**Luồng xử lý:**

```
1. Kiểm tra context: nếu chưa có personal-brand-context.md → đề xuất chạy skill 22
2. Hỏi 4 câu: stage hiện tại / mục tiêu / time commitment / budget
3. Route theo stage:
   - Chưa bắt đầu → workflow personal-brand-launch
   - Có content nhưng muốn scale → workflow ai-avatar-batch
   - Đã chạy >1 tháng → workflow personal-brand-monthly
4. Trong xử lý: chuyển đến skill cụ thể (22-28) hoặc mode personal của skill 04/05
5. Cuối: tạo file output, commit context update
```

**Cross-agent collaboration:**
- Skill 14 email-marketing → handover sang `channel-operator`
- Skill 12 brief-landing-page → handover sang `channel-operator`
- Skill 17 pricing-strategy + 09 insight → tham chiếu `mkt-strategist`
- Skill 13 data-analysis monthly → tham chiếu `performance-analyst`

**Giới hạn:**
- Không tự động publish content
- Không setup Zalo OA / Telegram bot — chỉ blueprint
- Không tạo avatar fake danh người khác (deepfake)
- Không viết nội dung y tế/tài chính bằng AI voice/avatar
- Không thay thế "skill 22 context" — luôn yêu cầu user xác nhận

**Updates tới agent cũ:**
Thêm 1 dòng "Phan biet voi `personal-brand-builder`" vào:
- `mkt-strategist.md`
- `content-producer.md`
- `performance-analyst.md`
- (`channel-operator.md` không cần vì ít overlap)

---

## Section 8 — Updates root files + Rollout strategy (Approach 2)

### A. 8 file root cần update

| File | Thay đổi | Dòng thêm |
|------|----------|-----------|
| `README.md` | Banner v2.4 + bảng skills 22-28 + section riêng + badge "29 Skills" | ~80 |
| `README.vi.md` | Đồng bộ 100% với README.md | ~80 |
| `CLAUDE.md` | + 7 skill + agent personal-brand-builder + 3 workflow + note Personal Brand Mode | ~30 |
| `AGENTS.md` | Note pattern variants ở skill 22 | ~15 |
| `CHANGELOG.md` | Entry v2.4.0 đầy đủ | ~50 |
| `VERSIONS.md` | 7 skill mới + bump 04→2.2.0, 05→2.3.0 | ~25 |
| `.claude-plugin/marketplace.json` | + 7 skill paths + bump version 2.4.0 | ~10 |
| `docs/skill-map.md` | Update sơ đồ + bảng tra nhanh + decision tree personal brand | ~60 |

**Plus 4 file documentation mới:**

| File | Mục đích | Dòng |
|------|----------|------|
| `docs/personal-brand-guide.md` | Guide riêng cho cụm | ~250 |
| `docs/release-notes/v2.4.0.md` | Release notes bilingual | ~250 |
| `docs/faq.md` | Thêm 7 Q&A personal brand | +80 |
| `examples/personal-brand-coach.md` | Sample output đầy đủ | ~180 |

### B. CHANGELOG.md entry mẫu

```markdown
## [2.4.0] — 2026-MM-DD

### Added — Personal Brand + AI Avatar Cluster

7 New Skills (22–28):
- 22-personal-brand-context — Foundation, 3 variants (founder/coach/creator)
- 23-personal-brand-strategy
- 24-ai-avatar-production — Deep dive 3-tier tools, 4 workflows
- 25-voice-clone-podcast
- 26-thought-leadership-content
- 27-personal-brand-monetize
- 28-community-building

3 New Reference Files:
- ai-avatar-tools-vn.md
- voice-clone-prompts-vn.md
- ai-video-disclosure-vn.md

3 New Workflows:
- personal-brand-launch (30 ngày)
- ai-avatar-batch (3-5 ngày)
- personal-brand-monthly (3-5 ngày)

1 New Agent:
- personal-brand-builder

### Changed
- 04-script-video 2.1.0 → 2.2.0: Personal Brand Mode
- 05-copy-quang-cao 2.2.0 → 2.3.0: Personal Brand Mode
- 3 agents cũ thêm dòng phân biệt với personal-brand-builder

### Backward Compatibility
- KHÔNG breaking changes — tất cả 22 skill cũ giữ nguyên hành vi
- User chỉ có product-marketing-context.md → không thay đổi gì
- Skill 04/05 mặc định vẫn là mode SP, chỉ switch khi có personal-brand-context.md
```

### C. Rollout — Approach 2 (CHỌN)

**Branch strategy:** `feature/v2.4-personal-brand-cluster` (parent) + 3 sub-branches.

**Phase 1 (v2.4.0-rc1, ~3 ngày): Foundation + Strategy + Avatar**
- Skill 22 + 3 variants
- Skill 23
- Skill 24 + 3 references
- Workflow personal-brand-launch
- Update CLAUDE.md, README, marketplace.json
- 1 PR ~2,200 dòng → review 1-2 ngày
- Tag: `v2.4.0-rc1`

**Phase 2 (v2.4.0-rc2, ~2 ngày): Production + Content**
- Skill 25
- Skill 26
- Mở rộng skill 04 + 05
- Workflow ai-avatar-batch
- Update workflows guide
- 1 PR ~1,500 dòng → review 1 ngày
- Tag: `v2.4.0-rc2`

**Phase 3 (v2.4.0 final, ~2 ngày): Monetize + Community + Polish**
- Skill 27
- Skill 28
- Workflow personal-brand-monthly
- Agent personal-brand-builder
- docs/personal-brand-guide.md
- examples/personal-brand-coach.md
- docs/release-notes/v2.4.0.md
- CHANGELOG release v2.4.0
- 1 PR ~1,300 dòng → review 1 ngày
- Tag: `v2.4.0`

**Total:** ~9 ngày dev + ~2 ngày docs polish = ~11–12 ngày.

### D. 10 Quality Gates trước release final

| Gate | Check | Pass criteria |
|------|-------|---------------|
| 1. Validate scripts | `./validate-skills.sh` | All 29 skills pass |
| 2. Line count | `wc -l skills/22-28/*` | Không file > 500 dòng |
| 3. Frontmatter | All `name` match folder | 100% match |
| 4. Cross-reference | All `related:` skills exist | 0 broken refs |
| 5. README sync | README.md vs README.vi.md | 100% nội dung khớp |
| 6. CHANGELOG | Có entry v2.4.0 đầy đủ | ✓ |
| 7. Backward compat | User chỉ có product-marketing-context → skill 04 | Output y hệt v2.3 |
| 8. Forward test | Tạo personal-brand-context → skill 04 | Mode personal đúng |
| 9. End-to-end | Workflow personal-brand-launch cho 1 founder mẫu | Đủ output, không error |
| 10. Plugin install | `/plugin install` trên Claude Code fresh | Load 29 skills không error |

**KHÔNG release nếu bất kỳ gate nào fail.**

---

## Section 9 — Documentation & Communication strategy

### A. Release notes file

`docs/release-notes/v2.4.0.md` (~250 dòng, bilingual VN+EN):
- TL;DR 30 giây
- What's New (7 skills, pattern variants, mode mới)
- Migration Guide ("không cần làm gì")
- Quick Start: Build Personal Brand 30 ngày
- 10 FAQs
- Credits

### B. README banner v2.4.0

```markdown
> **🆕 v2.4.0 (2026-MM-DD)** — Personal Brand + AI Avatar Cluster.
> 7 new skills, 1 agent, 3 workflows. Zero breaking changes.
> [Read release notes →](docs/release-notes/v2.4.0.md)
```

Banner sẽ remove khi v2.5 ra (pattern Next.js, Tailwind).

### C. README section "Personal Brand + AI Avatar"

Thêm giữa "22 Skills" và "4 Agents":
- Diagram cluster Personal Brand (Mermaid)
- 30-day launch timeline (Mermaid Gantt)
- 3-tier tools matrix
- Link sang examples/personal-brand-coach.md

### D. Visual Assets

Dùng **Mermaid diagrams** (GitHub native render, version control friendly) — KHÔNG dùng PNG/JPG.

### E. Conventional Commits cho v2.4.0

Áp dụng nghiêm:
```
feat(skill-22): add personal-brand-context foundation skill with 3 variants
feat(skill-23): add personal-brand-strategy skill
feat(skill-24): add ai-avatar-production skill (deep dive 3-tier)
feat(refs): add ai-avatar-tools-vn reference
feat(workflow): add personal-brand-launch workflow
docs(release-notes): add v2.4.0 release notes
chore(version): bump to v2.4.0
```

### F. GitHub Release page checklist

Trước tag v2.4.0:
- [ ] CHANGELOG.md cập nhật, ngày cụ thể
- [ ] CHANGELOG link `[2.4.0]: ...compare/v2.3.0...v2.4.0`
- [ ] VERSIONS.md đồng bộ
- [ ] marketplace.json version = "2.4.0"
- [ ] README badge "Skills-29", "Agents-5", "Workflows-7"
- [ ] README banner v2.4.0
- [ ] README.vi.md đồng bộ 100%
- [ ] release-notes/v2.4.0.md đầy đủ (bilingual)
- [ ] validate-skills.sh pass
- [ ] CI green trên master
- [ ] Tag git: `git tag -a v2.4.0 -m "v2.4.0 - Personal Brand + AI Avatar"`
- [ ] GitHub Release page paste body từ release-notes
- [ ] Pinned Discussion Issue: "v2.4.0 Discussion + Feedback"

### G. Communication beyond Git

1. **Pinned Issue trên GitHub:** "v2.4.0 Discussion + Feedback" cho feedback tracking
2. **Badge thêm:** GitHub Discussions
3. **Optional video demo (~3 phút):** "Build personal brand trong 5 phút" — embed YouTube link

---

## Section 10 — Future Roadmap (Approach 3 path)

> **Mục đích:** Ghi chú để future-proof — nếu sau v2.4.0 release, user feedback đề xuất nâng cấp theo hướng MVP iterate (Approach 3 modular), thì có sẵn roadmap.
> Section này là **OPTIONAL**, KHÔNG thực thi trong v2.4.0.

### Khi nào cân nhắc Approach 3

Sau v2.4.0 release ~30–60 ngày, đánh giá:
- User feedback nói cluster quá lớn / không dùng hết
- Có user nhóm mới (vd: politician, athlete, B2B SaaS founder) cần variant riêng
- Có nhu cầu i18n (English version)
- Skill 24 cần upgrade lớn (HeyGen API mới ra, tool mới chiếm thị phần)

### Roadmap nếu theo Approach 3

**v2.5.0 — Variant expansion (~30 ngày sau v2.4)**
- Thêm 2 variants nữa cho skill 22:
  - `04-politician.md` (chính trị gia / public figure)
  - `05-athlete.md` (vận động viên / esport pro)
- Hoặc thêm domain-specific variants cho skill 23, 27 nếu feedback đòi
- Có thể tách `personal-brand-cluster` thành plugin riêng (modular)

**v2.6.0 — i18n & EN version (~60 ngày sau v2.4)**
- Translate 7 skills + 3 references sang tiếng Anh
- Tách thành 2 plugin: `fullstack-mkt-skills` (VN) + `fullstack-mkt-skills-en` (EN)
- Update marketplace.json để hỗ trợ multi-language

**v2.7.0 — Tool upgrade (~90 ngày sau v2.4)**
- Update skill 24 + reference `ai-avatar-tools-vn.md` cho tool mới (Sora 2, Veo 3, HeyGen v5...)
- Thêm reference `ai-avatar-tools-en.md` (international)
- Anti-detection update theo platform mới (TikTok AI label 2027...)

**v3.0.0 — Cluster restructure (BREAKING — chỉ làm nếu thực sự cần)**
- Tách 7 skill personal brand thành sub-folder `skills/personal-brand/` (folder con)
- Numbering reset: `pb-01-context`, `pb-02-strategy`, ...
- Chỉ làm nếu cluster > 15 skills (hiện tại 7 → còn xa)

### Quyết định trigger

Sau v2.4.0 release 30 ngày, review:
1. Số star/fork tăng bao nhiêu?
2. Số issue/discussion về cluster bao nhiêu?
3. Top 3 feature request là gì?
4. Có user nhóm mới ngoài 3 nhóm hiện tại không?

→ Nếu **2/4 trigger trên dương** → bắt đầu v2.5 theo Approach 3.
→ Nếu **3/4 trigger trên âm** → cluster đã đủ, tập trung skill khác.

### Lý do KHÔNG làm Approach 3 ngay từ đầu

(đã thảo luận trong brainstorm 2026-05-08, ghi lại để future reference)

1. User context: 1 maintainer, repo public, cộng đồng đang theo dõi
2. Yêu cầu "tỉ mỉ chỉn chu khi push lên git" mâu thuẫn với release fragment 3 lần
3. Đã design kỹ ở 5 câu hỏi → ít cần "ship nhỏ để học" như SaaS startup
4. Skill 24 release 2 lần (rút gọn → đầy đủ) vi phạm UX
5. Approach 2 đã có rc1, rc2 — đủ "ship sớm" mà không tốn 60+ ngày

---

## Open Questions / Risks

### Open Questions (cần xác nhận trước implementation)

| # | Câu hỏi | Mặc định | Cần user confirm? |
|---|---------|---------|-------------------|
| 1 | Skill 24 vượt 500 dòng → có chuyển workflow translate sang reference không? | CÓ — chuyển | Không, theo nguyên tắc |
| 2 | Tên agent là `personal-brand-builder` — đổi không? | Giữ | Đã confirm |
| 3 | 3 variants foundation đủ chưa, có cần variant 4 (politician, athlete)? | Đủ cho v2.4 | Đã confirm theo YAGNI |
| 4 | Tag rc1, rc2 có public không, hay chỉ internal beta? | Public (giúp marketing) | Cần user confirm |
| 5 | README.vi.md viết trước hay README.md trước? | EN (README.md) trước, VN sau (đồng bộ) | Đã confirm |

### Risks

| # | Rủi ro | Mức độ | Mitigation |
|---|--------|--------|------------|
| 1 | Skill 24 quá lớn, vượt 500 dòng | Trung | Chuyển workflow translate sang reference |
| 2 | Tool ai-avatar-tools-vn lỗi thời nhanh (giá tool đổi mỗi quý) | Cao | Cảnh báo top file + cập nhật quý/lần |
| 3 | Skill 04/05 Personal Brand Mode có thể conflict với hành vi cũ | Trung | Backward compat test (Quality Gate 7) |
| 4 | User mới confused giữa skill 04 (mode SP) và skill 04 (mode personal) | Trung | Document rõ trong skill 04 + FAQ |
| 5 | 3 PRs phased → có thể bị bỏ giữa chừng nếu busy | Thấp | Branch strategy + checklist từng phase |
| 6 | Disclosure VN luật thay đổi | Trung | Reference riêng `ai-video-disclosure-vn.md` dễ update |
| 7 | Pattern variants (3 variants foundation 22) khó maintain nếu sau thêm | Thấp | Pattern đã thành công ở skill 20 (20 variants) |
| 8 | English audience chờ EN version | Thấp | Đã có roadmap v2.6.0 i18n |

---

## Approval Log

| Date | Reviewer | Status | Notes |
|------|----------|--------|-------|
| 2026-05-08 | @minhnv0807 | Approved (brainstorming) | All 5 questions + 9 design sections approved verbally; rollout Approach 2 chosen with future Approach 3 path noted |
| 2026-05-08 | @minhnv0807 | Approved (spec review v1) | Spec written approved. Added 4 newbie-friendly enhancements: workflow 350-400 dòng × 8 sections / personal-brand-guide 600 dòng × 8 chương / getting-started-personal-brand.md mới / "Cho người mới" section trong mỗi SKILL.md (50 dòng) / 5 AI research prompts/workflow / YouTube placeholder. Branch: 3 sub-branches confirmed. NO rc tags — chỉ tag v2.4.0 final. |
| 2026-05-08 | Self-review | Passed | Fixed file count inconsistency (27→32). No TBD/TODO placeholders except 2 intentional in this Approval Log + YouTube TBD link. |
| TBD | Implementation | Pending | Awaiting writing-plans skill output |

---

## Implementation Next Steps

After user approves THIS written spec:

1. Invoke `superpowers:writing-plans` skill to create detailed implementation plan
2. Plan will break this design into atomic tasks for `gsd-executor` or `superpowers:executing-plans`
3. Implementation follows 3 PRs (Phase 1 → Phase 2 → Phase 3)
4. Each phase passes 10 Quality Gates before merge to master
5. Final tag `v2.4.0` after all 3 phases merged

---

**End of design spec.**
