# Versions

> Theo doi phien ban cua tat ca skills. Agent co the so sanh voi ban local de biet can cap nhat.

## Current versions

| Skill | Version | Last Updated | Category |
|-------|---------|--------------|----------|
| product-marketing-context | 1.1.0 | 2026-05-02 | foundation |
| 00-ke-hoach-mkt | 2.0.0 | 2026-04-24 | strategy |
| 01-lich-noi-dung | 2.1.0 | 2026-05-02 | content |
| 02-brief-chien-dich | 2.0.0 | 2026-04-24 | strategy |
| 03-danh-gia-hieu-suat | 2.2.0 | 2026-05-03 | performance |
| 04-script-video | 2.2.0 | 2026-05-08 | content |
| 05-copy-quang-cao | 2.3.0 | 2026-05-08 | content |
| 06-brief-ugc-egc | 2.0.0 | 2026-04-24 | content |
| 07-bao-cao-marketing | 2.0.0 | 2026-04-24 | performance |
| 08-nghien-cuu-doi-thu | 2.2.0 | 2026-05-03 | strategy |
| 09-insight-khach-hang | 2.0.0 | 2026-04-24 | strategy |
| 10-tinh-kpi-nguoc | 2.0.0 | 2026-04-24 | performance |
| 11-thiet-lap-kenh | 2.0.0 | 2026-04-24 | operations |
| 12-brief-landing-page | 2.0.0 | 2026-04-24 | operations |
| 13-phan-tich-du-lieu | 2.0.0 | 2026-04-24 | operations |
| 14-email-marketing | 2.0.0 | 2026-04-24 | operations |
| 15-social-listening | 2.1.0 | 2026-05-02 | content |
| 16-marketing-psychology | 1.0.0 | 2026-04-24 | strategy |
| 17-pricing-strategy | 1.0.0 | 2026-04-24 | strategy |
| 18-referral-program | 1.0.0 | 2026-04-24 | operations |
| 19-ab-test-setup | 1.0.0 | 2026-04-24 | performance |
| 20-brief-client-intake | 1.0.0 | 2026-04-24 | operations |
| 21-audit-ads-performance | 1.2.0 | 2026-05-03 | performance |
| 22-personal-brand-context | 1.0.0 | 2026-05-08 | foundation |
| 23-personal-brand-strategy | 1.0.0 | 2026-05-08 | strategy |
| 24-ai-avatar-production | 1.0.0 | 2026-05-08 | content |
| 25-voice-clone-podcast | 1.0.0 | 2026-05-08 | content |
| 26-thought-leadership-content | 1.0.0 | 2026-05-08 | content |
| 27-personal-brand-monetize | 1.0.0 | 2026-05-08 | strategy |
| 28-community-building | 1.0.0 | 2026-05-08 | operations |

## Changelog

### 2026-05-08 — v2.4.0

**Personal Brand + AI Avatar cluster (7 new skills)**

**New skills:**
- `22-personal-brand-context` 1.0.0: Foundation, 3 variants (founder/coach/creator)
- `23-personal-brand-strategy` 1.0.0: 12-month strategy + Ikigai niche + positioning
- `24-ai-avatar-production` 1.0.0: Deep dive flagship — 3-tier tools (Free/Pro/Enterprise), 4 workflows (single/translate/batch/hybrid), voice clone, anti-detection FB/IG/TikTok VN, ethics & disclosure VN (Nghi dinh 147/2024)
- `25-voice-clone-podcast` 1.0.0: Audio AI — voiceover/podcast/audiobook, repurpose 1:10
- `26-thought-leadership-content` 1.0.0: Long-form text — 3 structures, 6 hooks, sentence rhythm, repurpose 1:5
- `27-personal-brand-monetize` 1.0.0: 3 funnel versions, pricing psychology, outreach, brand deal, VN tax & legal 2026
- `28-community-building` 1.0.0: Platform comparison VN 2026 (Zalo/Telegram/FB/Skool/Mighty/Discord), 3-layer blueprint, onboarding 7-day

**Upgrades:**
- `04-script-video` 2.1.0 → 2.2.0: Personal Brand Mode auto-detect (4 personal brand hooks, 30s structure, 10-criteria QA)
- `05-copy-quang-cao` 2.2.0 → 2.3.0: Personal Brand Mode for ads (6 variants, 3 CANH BAO conditions)

**New references:**
- `references/ai-avatar-tools-vn.md` — 15 tools deep dive (HeyGen/Synthesia/D-ID/Captions/ElevenLabs/Vbee...)
- `references/voice-clone-prompts-vn.md` — 3 region samples (North/South/Central VN)
- `references/ai-video-disclosure-vn.md` — Nghi dinh 147/2024 compliance, 3-tier disclosure, 5 templates

**New workflows:**
- `personal-brand-launch.md` — 30-day launch (4 weeks)
- `ai-avatar-batch.md` — 30 videos in 5 days, <$2/video
- `personal-brand-monthly.md` — Monthly review + adjust

**New agent:**
- `personal-brand-builder` — Combines skills 22-28

**Backward compatibility:** Zero breaking changes. Existing 22 skills (00-21) unchanged. Skills 04, 05 mode-switching is auto-detect.

### 2026-05-03 — v2.3.0

**Meta Official MCP Integration (mcp.facebook.com/ads — 29 tools)**

**Upgrades:**
- `21-audit-ads-performance` 1.1.0 → 1.2.0: Full 29-tool Meta Official MCP audit workflow (anomaly signal, industry benchmark, opportunity score, dataset quality)
- `03-danh-gia-hieu-suat` 2.1.0 → 2.2.0: Meta Official MCP diagnostic + benchmark tools (performance trend, anomaly signal, industry benchmark, opportunity score)
- `08-nghien-cuu-doi-thu` 2.1.0 → 2.2.0: Dual-source research (Ads Library + Meta Official MCP industry benchmarks + auction ranking)

**Reference update:**
- `references/mcp-ads-integration.md` — Major update: confirmed endpoint `mcp.facebook.com/ads`, full 29 tools list (5 groups), 3 permission tiers, setup qua claude.ai, write operation warnings, Pipeboard CLI, AdKit

### 2026-05-02 — v2.2.0

**Inspired by:** [charlie947/social-media-skills](https://github.com/charlie947/social-media-skills) (Charlie Hills, 350K+ followers, 100M+ views/year)

**Upgrades:**
- `04-script-video` 2.0.0 → 2.1.0: Added 6 hook formulas + reverse-engineer viral video + QA Score gate (85/100)
- `05-copy-quang-cao` 2.1.0 → 2.2.0: Added 6 hook types for ads + Copy Scoring system (35/50 gate)
- `01-lich-noi-dung` 2.0.0 → 2.1.0: Added Content Matrix (8 formats × pillars = auto-generated ideas)
- `15-social-listening` 2.0.0 → 2.1.0: Added Niche Research — 20 trending topics in 7 days from VN channels
- `product-marketing-context` 1.0.0 → 1.1.0: Enhanced Brand Voice section with voice signals + absence signals analysis

**New reference:**
- `references/hook-formulas-vn.md` — 6 hook types, funnel mapping, platform char limits, anti-patterns

### 2026-05-01 — v2.1.0

**Upgrades:**
- `03-danh-gia-hieu-suat` 2.0.0 → 2.1.0: Added Health Score (0-100) + 10 Quality Gates + MCP auto-pull
- `05-copy-quang-cao` 2.0.0 → 2.1.0: Added 6 copy frameworks (AIDA/PAS/BAB/4P/FAB/SSS) + Andromeda warning
- `08-nghien-cuu-doi-thu` 2.0.0 → 2.1.0: Added Facebook Ads Library MCP integration
- `21-audit-ads-performance` 1.0.0 → 1.1.0: Added MCP auto-pull section

**New references:**
- `references/mcp-ads-integration.md` — 8 MCP servers across Meta/Google/TikTok
- `references/copy-frameworks-vn.md` — 6 copy frameworks for VN market
- `references/quality-gates-vn.md` — 10 hard rules for ads quality

**New docs:**
- `docs/skill-map.md` — System visualization + decision tree
- `docs/mcp-setup-guide.md` — Step-by-step MCP setup
- `docs/workflow-guide.md` — Unified workflow guide
- `docs/update-guide.md` — Maintenance guide
- `docs/faq.md` — FAQ + troubleshooting

**New workflow:**
- `workflows/client-onboard.md` — Agency client onboarding (5-7 days, 7 skills)

**Workflow updates:**
- All 4 workflow files now include UML sequence diagrams

**CLAUDE.md:**
- Added MCP Ads Integration section with platform-to-skill mapping

### 2026-04-24 — v2.0.0 (Major release)

**BREAKING CHANGES:**
- Restructure skills: `skills/name.md` → `skills/name/SKILL.md`
- Update frontmatter spec to match [agentskills.io](https://agentskills.io)
- Path migration: references moved into per-skill folders (where applicable)

**New features:**
- Added foundation skill `product-marketing-context` — every skill reads this first
- Added `.claude-plugin/marketplace.json` — install via `/plugin install`
- Added `AGENTS.md` — universal agent compatibility spec
- Added `VERSIONS.md` — version tracking
- Added `validate-skills.sh` + `validate-skills.ps1` — spec validators
- Added `.github/` templates (issues, PRs)
- Added `CONTRIBUTING.md`

**New skills (4):**
- `16-marketing-psychology` — Nguyen ly tam ly trong marketing (Cialdini + VN cultural context)
- `17-pricing-strategy` — Chien luoc gia cho thi truong VN
- `18-referral-program` — He thong gioi thieu va hoa hong
- `19-ab-test-setup` — Thiet lap A/B test don gian

**Upgrades to existing skills:**
- Bump all 16 skills from 1.0.0 to 2.0.0
- Add `metadata.version` field to frontmatter
- Optimize descriptions for trigger phrase matching
- Add reference to `product-marketing-context` foundation

**Plugin compat:**
- Repo is now an official Claude Code Plugin Marketplace
- Install via: `/plugin install minhnv0807/fullstack-mkt-skills`

### 2026-04-23 — v1.1.0

- Rebrand: Run By Linh → Over Powers Agency
- Redesign README with badges, diagrams, visual tables
- Add star history chart

### 2026-04-23 — v1.0.0 (Initial release)

- 16 marketing skills (strategy, content, performance, operations)
- 5 reference files (benchmarks, channel system, KPI formulas, content angles, tool stack)
- 3 workflows (campaign-launch, monthly-cycle, content-production)
- 4 agents (mkt-strategist, content-producer, performance-analyst, channel-operator)
- 2 examples (spa-beauty, ecommerce-fashion)
- install.sh + install.ps1
- MIT License

## Versioning policy

- **Major** (X.0.0): Breaking change (frontmatter, folder structure, removed skill)
- **Minor** (1.X.0): New skill or new major section
- **Patch** (1.0.X): Bug fix, benchmark update, syntax correction

## How agents check for updates

```bash
# Check if local is outdated
curl -s https://raw.githubusercontent.com/minhnv0807/fullstack-mkt-skills/master/VERSIONS.md | head -30

# Update all skills
cd ~/.claude/skills/marketing && git pull
```
