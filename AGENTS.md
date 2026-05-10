# AGENTS.md — Fullstack Marketing Skills

> Huong dan cho bat ky AI agent nao (khong chi Claude) lam viec voi repo nay.

## Tong quan

Repo nay chua **Agent Skills** theo [Agent Skills Specification](https://agentskills.io) — cai dat duoc vao `.agents/skills/` (hoac `.claude/skills/` voi Claude Code).

Repo cung hoat dong nhu **Claude Code Plugin Marketplace** — cai dat bang `/plugin install minhnv0807/fullstack-mkt-skills`.

## Cau truc repo

```
.
├── .claude-plugin/
│   └── marketplace.json         # Claude Code plugin manifest
├── .github/
│   ├── ISSUE_TEMPLATE/           # Issue templates
│   └── PULL_REQUEST_TEMPLATE/    # PR templates
├── skills/
│   └── skill-name/
│       ├── SKILL.md              # Skill definition (required)
│       ├── references/           # Supporting docs (optional)
│       ├── scripts/              # Helper scripts (optional)
│       └── evals/                # Quality tests (optional)
├── references/                   # Shared references across skills
├── workflows/                    # Multi-skill workflows
├── agents/                       # Agent personas/roles
├── examples/                     # Sample outputs
├── AGENTS.md                     # This file
├── CLAUDE.md                     # Claude-specific instructions
├── VERSIONS.md                   # Version tracking
├── CONTRIBUTING.md               # Contribution guide
├── validate-skills.sh            # Spec validator (bash)
└── validate-skills.ps1           # Spec validator (PowerShell)
```

## Yeu cau skill

Moi `SKILL.md` phai co:

### 1. YAML Frontmatter

```yaml
---
name: skill-name                    # Required: 1-64 chars, lowercase + hyphens, match directory
description: "Mo ta cu the..."       # Required: 1-1024 chars, co trigger phrases
metadata:
  version: 1.0.0                    # Optional: semver
  category: strategy | content | performance | operations
license: MIT                        # Optional: default MIT
triggers:                           # Optional: keyword list for auto-activation
  - "trigger 1"
  - "trigger 2"
related:                            # Optional: skill cross-references
  - skill-1
  - skill-2
---
```

### 2. Noi dung

- **Duoi 500 dong** — chi tiet chuyen vao `references/`
- Ngon ngu ro rang, active voice
- Cau truc H2 va H3
- Co "Thu thap thong tin" section (toi da 4 cau)
- Co output template co cau truc
- Co quality checklist

## Foundation skill

**`product-marketing-context`** la skill goc — moi skill khac doc truoc khi hoat dong.

File `.agents/product-marketing-context.md` chua:
- Product overview
- Target audience
- Personas
- Pain points
- Competition
- Differentiation
- Objections
- Customer language
- Brand voice
- Proof points
- Goals

Skill khac kiem tra file nay truoc — neu co, lay thong tin san; neu khong, de xuat tao.

## Pattern variants (Skill 20 + Skill 22)

Skills su dung pattern variants:
- `20-brief-client-intake` — 20 variants theo nganh hang
- `22-personal-brand-context` — 3 variants theo nhom audience (founder/coach/creator)

Cau truc:

```
skills/22-personal-brand-context/
├── SKILL.md          ← Entrypoint + router
├── README.md         ← Variant guide (decision tree)
└── variants/
    ├── 01-founder.md
    ├── 02-coach.md
    └── 03-creator.md
```

User chay skill chinh, skill load README → user chon variant → skill load variant template.

### Pattern variants — Skill 22 Global (NEW)

Skill 22-personal-brand-context-global uses 4 REGION variants (US/EU/SEA/LATAM) instead of 3 audience variants like VN.

Cau truc:

```
skills-global/22-personal-brand-context-global/
├── SKILL.md          ← Entrypoint + router
├── README.md         ← Region variant guide
└── variants/
    ├── 01-us.md      ← Covers founder + coach + creator (US)
    ├── 02-eu.md      ← Covers founder + coach + creator (EU)
    ├── 03-sea.md     ← Covers founder + coach + creator (SEA)
    └── 04-latam.md   ← Covers founder + coach + creator (LATAM)
```

Difference from VN skill 22:
- VN: 3 audience variants (founder/coach/creator separately)
- Global: 4 region variants (each contains 3 audience inside)
- Reason: persona universal but currency/platforms/regulations differ per region

## Pattern Mode-Switching (Skills 04, 05)

Skill 04, 05 dung pattern context-aware mode:
- Doc 1 hoac nhieu file `.agents/*.md`
- Auto-detect mode dua tren context file ton tai
- Output adapt theo mode

Pattern dieu kien:
1. Read both context files (skill checks existence)
2. If only A → Mode A
3. If only B → Mode B
4. If both → Skill ASKS user
5. If neither → Skill SUGGESTS creating context first

## Pattern: Cluster Auto-Detect Mode (v2.5.0+)

Pattern used in v2.5.0 to handle 2 clusters (VN + Global) in same agents:

```
Agent reads `.agents/`:
- `product-marketing-context.md` → MODE VN
- `product-marketing-context-global.md` → MODE GLOBAL
- Both → ASK 1 question
- None → SUGGEST creating context
```

Same pattern for personal brand:
- `personal-brand-context.md` → MODE VN PB
- `personal-brand-context-global.md` → MODE GLOBAL PB

This pattern allows ONE agent to serve BOTH clusters without code duplication.

Used by: 5 agents (mkt-strategist, content-producer, performance-analyst, channel-operator, personal-brand-builder).

## Cai dat

### Claude Code (khuyen dung)

```bash
# Plugin marketplace
/plugin install minhnv0807/fullstack-mkt-skills

# Hoac clone + install script
git clone https://github.com/minhnv0807/fullstack-mkt-skills.git
cd fullstack-mkt-skills
./install.sh --global
```

### Agent khac (ChatGPT, Gemini, Cursor, v.v.)

- Copy cac file `.md` lam Custom Instructions / System Prompt
- Moi file la 1 prompt doc lap — khong can cai dat dac biet

## Validation

Truoc khi commit, chay:

```bash
./validate-skills.sh
```

Script kiem tra:
- Frontmatter dung spec (name, description, etc.)
- Name khop voi directory
- Duoi 500 dong
- Co trigger phrases trong description

## Versioning

- **Major** (X.0.0): Breaking change (doi frontmatter, doi folder structure)
- **Minor** (1.X.0): Them skill moi hoac them section quan trong
- **Patch** (1.0.X): Sua loi, cap nhat so lieu, chinh syntax

Xem `VERSIONS.md` de theo doi thay doi.

## Git & Contribution

### Branch naming

- `feature/skill-name` — skill moi
- `fix/skill-name` — sua skill hien co
- `docs/...` — cap nhat tai lieu

### Commit format (Conventional Commits)

```
feat: add X skill
fix: correct benchmark in Y skill
docs: update README installation
refactor: restructure Z skill
```

### PR process

1. Fork repo
2. Tao branch tu `master`
3. Chay `validate-skills.sh` truoc khi push
4. Tao PR voi mo ta ro rang
5. Chi ra anh huong (skill nao bi affected, breaking change?)

## Agent guidelines

### Khi dung repo nay

1. **Doc `product-marketing-context` truoc** — neu co file `.agents/product-marketing-context.md`, doc ngay truoc khi lam viec
2. **Doc skill tuong ung** — khi nguoi dung yeu cau cong viec marketing, chon skill phu hop tu `skills/`
3. **Kiem tra version** — doc `VERSIONS.md` 1 lan/session de biet ban cap nhat moi

### Khi update skill

1. Tang version trong `metadata.version`
2. Cap nhat `VERSIONS.md` voi ngay + thay doi
3. Giu frontmatter dung spec
4. Chay validator truoc khi commit

## Tuong thich

| Platform | Ho tro | Cach dung |
|----------|--------|----------|
| Claude Code | Full | `/plugin install` hoac `install.sh --global` |
| Claude Pro | Full | Upload vao Project Knowledge |
| ChatGPT | Partial | Upload `.md` lam Custom GPT config |
| Gemini | Partial | System prompt / context |
| Copilot | Partial | `.github/copilot-instructions.md` |
| Cursor | Partial | `.cursorrules` hoac MDC files |
| Windsurf | Partial | Global rules |
| Agent khac | Partial | Doc `.md` nhu plain text context |

## Resources

- [Agent Skills Spec](https://agentskills.io/specification.md)
- [Claude Code Docs](https://docs.claude.com/en/docs/claude-code)
- [Conventional Commits](https://www.conventionalcommits.org)
