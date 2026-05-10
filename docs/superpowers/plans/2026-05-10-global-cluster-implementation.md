# v2.5.0 — Global Cluster Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Mở rộng `fullstack-mkt-skills` từ v2.4.0 (29 skills VN) lên v2.5.0 với cụm 30 skills global song song. Phục vụ 4 regions (US/EU/SEA/LATAM) + flagship dropshipping skill. Zero breaking changes.

**Architecture:** Folder song song `skills-global/` + variants pattern E selective (11 skills có region variants, 19 skills universal English). 5 agents extended với auto-detect mode (VN / Global / Both ASK). Plugin marketplace 1 entry list 60 skills.

**Tech Stack:**
- Markdown (.md) — toàn bộ skills, references, workflows, docs
- YAML frontmatter — Agent Skills Spec compliant
- Bash + PowerShell — validate-skills scripts updated
- Mermaid diagrams — region comparison + workflows
- Git — Conventional Commits + 3 sub-branches

**Source spec:** [docs/superpowers/specs/2026-05-10-global-cluster-design.md](../specs/2026-05-10-global-cluster-design.md)

**Rollout:** 3 PRs phased. Branch parent: `feature/v2.5-global-cluster`. Sub-branches: `phase-1-core-global`, `phase-2-personal-brand-global`, `phase-3-polish-release`. Tag `v2.5.0` final khi xong cả 3 phases.

**Total scope:** ~107 files, ~28,800 lines, ~13 ngày (parallel execution).

---

## File Structure Summary

| Category | Files | Phase |
|----------|-------|-------|
| Foundation skill (`product-marketing-context-global/`) | 6 (SKILL + README + 4 variants) | 1 |
| 15 universal marketing skills | 15 | 1 |
| 6 marketing skills with variants | 30 (1 SKILL + 4 variants × 6) | 1 |
| 4 references (platforms, legal, currency, dropshipping-tools) | 4 | 1 |
| 5 workflows (client-onboard, campaign-launch, monthly-cycle, content-production, dropshipping-launch) | 5 | 1 |
| Skill 29 dropshipping-mastery | 1 | 1 |
| **Phase 1 total** | **61** | **1** |
| Personal Brand foundation skill 22 | 6 (SKILL + README + 4 variants) | 2 |
| 4 universal PB skills (23, 25, 26, 28) | 4 | 2 |
| 2 PB skills with variants (24, 27) | 10 (1 SKILL + 4 variants × 2) | 2 |
| 3 references (ai-disclosure, voice-clone, hook-formulas global) | 3 | 2 |
| 3 workflows (PB launch, AI avatar batch, PB monthly global) | 3 | 2 |
| **Phase 2 total** | **26** | **2** |
| 5 agents extended (mkt-strategist, content-producer, performance-analyst, channel-operator, personal-brand-builder) | 5 | 3 |
| 5 docs (getting-started, region-guide, dropshipping-guide, apac-roadmap, release-notes) | 5 | 3 |
| 2 examples (coach + dropshipping store) | 2 | 3 |
| Root files updated (README × 2, CLAUDE, AGENTS, CHANGELOG, VERSIONS, marketplace, skill-map, faq, workflow-guide, validate scripts × 2) | 12 | 3 |
| **Phase 3 total** | **24** | **3** |
| **Grand Total** | **111** files | **3 phases** |

---

# PHASE 1 — Core Marketing Global (~5 days, ~12,000 lines)

> Branch: `phase-1-core-global`. PR target: `feature/v2.5-global-cluster`.

---

## Task 0: Setup branches

**Files:** N/A

- [ ] **Step 0.1: Verify branch state**

```bash
git branch --show-current
# Expected: phase-1-core-global
```

- [ ] **Step 0.2: Verify spec exists**

```bash
ls docs/superpowers/specs/2026-05-10-global-cluster-design.md
```

---

## Task 1: Foundation skill `product-marketing-context-global` (1 agent, 6 files)

**Files:**
- Create `skills-global/product-marketing-context-global/SKILL.md` (~150 lines)
- Create `skills-global/product-marketing-context-global/README.md` (~80 lines)
- Create `skills-global/product-marketing-context-global/variants/01-us.md` (~280 lines)
- Create `skills-global/product-marketing-context-global/variants/02-eu.md` (~280 lines)
- Create `skills-global/product-marketing-context-global/variants/03-sea.md` (~280 lines)
- Create `skills-global/product-marketing-context-global/variants/04-latam.md` (~280 lines)

- [ ] **Step 1.1**: Dispatch agent với context: "create foundation skill global cluster, 4 region variants, mirror VN product-marketing-context structure but adapt for region-specific currency/platforms/regulatory"
- [ ] **Step 1.2**: Verify line counts: SKILL ≤200, README ≤100, variants ≤350 each
- [ ] **Step 1.3**: Validate frontmatter
- [ ] **Step 1.4**: Commit `feat(foundation-global): add product-marketing-context-global with 4 region variants`

---

## Task 2: Universal marketing skills batch 1 (1 agent, 4 files)

Universal English skills, no variants.

**Files:**
- `skills-global/00-marketing-plan-global/SKILL.md`
- `skills-global/01-content-calendar-global/SKILL.md`
- `skills-global/02-campaign-brief-global/SKILL.md`
- `skills-global/04-script-video-global/SKILL.md`

- [ ] **Step 2.1**: Dispatch agent: translate VN skills 00, 01, 02, 04 to International English with global examples
- [ ] **Step 2.2**: Verify ≤500 lines each
- [ ] **Step 2.3**: Commit `feat(skills-global): add universal skills 00, 01, 02, 04 (marketing-plan, content-calendar, campaign-brief, script-video)`

---

## Task 3: Universal marketing skills batch 2 (1 agent, 4 files)

**Files:**
- `skills-global/05-ad-copy-global/SKILL.md` (with Dropshipping Mode section)
- `skills-global/06-ugc-egc-brief-global/SKILL.md`
- `skills-global/07-marketing-report-global/SKILL.md`
- `skills-global/08-competitor-research-global/SKILL.md`

- [ ] **Step 3.1**: Dispatch agent — note skill 05 has +60 line Dropshipping Mode section
- [ ] **Step 3.2**: Verify ≤500 lines
- [ ] **Step 3.3**: Commit `feat(skills-global): add universal skills 05, 06, 07, 08 (ad-copy with dropshipping mode, ugc, report, competitor)`

---

## Task 4: Universal marketing skills batch 3 (1 agent, 4 files)

**Files:**
- `skills-global/09-customer-insight-global/SKILL.md`
- `skills-global/12-landing-page-brief-global/SKILL.md` (with Dropshipping Mode section)
- `skills-global/13-data-analysis-global/SKILL.md`
- `skills-global/15-social-listening-global/SKILL.md`

- [ ] **Step 4.1**: Dispatch agent — skill 12 has +50 line dropshipping LP template
- [ ] **Step 4.2**: Verify ≤500 lines
- [ ] **Step 4.3**: Commit `feat(skills-global): add universal skills 09, 12, 13, 15 (insight, LP-brief with dropshipping, data, listening)`

---

## Task 5: Universal marketing skills batch 4 (1 agent, 3 files)

**Files:**
- `skills-global/16-marketing-psychology-global/SKILL.md`
- `skills-global/19-ab-test-setup-global/SKILL.md`
- `skills-global/20-client-intake-brief-global/SKILL.md` (no industry variants for v2.5)

- [ ] **Step 5.1**: Dispatch agent
- [ ] **Step 5.2**: Verify ≤500 lines
- [ ] **Step 5.3**: Commit `feat(skills-global): add universal skills 16, 19, 20 (psychology, ab-test, client-intake)`

---

## Task 6: Marketing skills with variants — batch 1 (1 agent, 15 files)

3 skills × 5 files each (1 SKILL + 4 variants).

**Files:**
- Skill 03 `performance-eval-global/`: SKILL.md + variants/{01-us,02-eu,03-sea,04-latam}.md
- Skill 10 `reverse-kpi-global/`: SKILL.md + variants/×4
- Skill 11 `channel-setup-global/`: SKILL.md + variants/×4

- [ ] **Step 6.1**: Dispatch agent — variants focus on benchmarks (skill 03), currency (skill 10), platforms (skill 11)
- [ ] **Step 6.2**: Verify SKILL ≤300 lines, variants ≤350 lines each
- [ ] **Step 6.3**: Commit `feat(skills-global): add 3 variant skills (03 perf-eval, 10 reverse-kpi, 11 channel-setup) — has Dropshipping KPI in skill 03`

---

## Task 7: Marketing skills with variants — batch 2 (1 agent, 15 files)

3 skills × 5 files each.

**Files:**
- Skill 14 `email-marketing-global/`: SKILL.md + variants/×4
- Skill 17 `pricing-strategy-global/`: SKILL.md + variants/×4 (+40 line dropshipping markup)
- Skill 18 `referral-program-global/`: SKILL.md + variants/×4

- [ ] **Step 7.1**: Dispatch agent — focus legal compliance (14), currency psychology (17 + dropshipping markup), anti-spam (18)
- [ ] **Step 7.2**: Verify line counts
- [ ] **Step 7.3**: Commit `feat(skills-global): add 3 variant skills (14 email-marketing, 17 pricing with dropshipping markup, 18 referral)`

---

## Task 8: Marketing skills with variants — batch 3 (1 agent, 5 files)

1 skill × 5 files.

**Files:**
- Skill 21 `ads-audit-global/`: SKILL.md + variants/×4 (+50 line dropshipping audit checklist)

- [ ] **Step 8.1**: Dispatch agent
- [ ] **Step 8.2**: Verify line counts
- [ ] **Step 8.3**: Commit `feat(skills-global): add skill 21 ads-audit-global (with dropshipping audit checklist)`

---

## Task 9: Skill 29 dropshipping-mastery FLAGSHIP (1 agent, 1 file)

**Files:**
- `skills-global/29-dropshipping-mastery-global/SKILL.md` (~500 lines)

- [ ] **Step 9.1**: Dispatch agent — 12-section deep dive (newbie, product research, supplier sourcing, Shopify setup, ad pipeline, targeting, pricing math, customer service, scaling, pitfalls, compliance)
- [ ] **Step 9.2**: Verify ≤500 lines
- [ ] **Step 9.3**: Commit `feat(skill-29): add dropshipping-mastery-global FLAGSHIP skill (12 sections, US/EU focus)`

---

## Task 10: References — batch 1 (1 agent, 4 files)

**Files:**
- `skills-global/references/global-platforms-comparison.md` (~280 lines)
- `skills-global/references/global-legal-compliance.md` (~320 lines)
- `skills-global/references/global-currency-pricing.md` (~240 lines)
- `skills-global/references/dropshipping-tools-global.md` (~280 lines)

- [ ] **Step 10.1**: Dispatch agent
- [ ] **Step 10.2**: Verify each ≤500 lines
- [ ] **Step 10.3**: Commit `feat(refs-global): add 4 references (platforms, legal, currency, dropshipping-tools)`

---

## Task 11: Workflows — batch 1 (1 agent, 5 files)

**Files:**
- `workflows-global/client-onboard-global.md` (~400 lines)
- `workflows-global/campaign-launch-global.md` (~400 lines)
- `workflows-global/monthly-cycle-global.md` (~400 lines)
- `workflows-global/content-production-global.md` (~400 lines)
- `workflows-global/dropshipping-launch-global.md` (~420 lines)

- [ ] **Step 11.1**: Dispatch agent — 8-section newbie-friendly format mỗi workflow
- [ ] **Step 11.2**: Verify ≤500 lines each
- [ ] **Step 11.3**: Commit `feat(workflows-global): add 5 workflows (client-onboard, campaign-launch, monthly-cycle, content-production, dropshipping-launch)`

---

## Task 12: Phase 1 Quality Gates + PR

- [ ] **Step 12.1**: Run validate-skills.sh (Gate 1)
- [ ] **Step 12.2**: Verify line counts (Gate 2)
- [ ] **Step 12.3**: Frontmatter consistency (Gate 3)
- [ ] **Step 12.4**: Cross-reference check (Gate 4)
- [ ] **Step 12.5**: Backward compat (Gate 7) — VN cluster unchanged
- [ ] **Step 12.6**: Push `phase-1-core-global` to origin
- [ ] **Step 12.7**: Create PR #1: `phase-1-core-global` → `feature/v2.5-global-cluster`
- [ ] **Step 12.8**: Merge PR #1 into feature branch
- [ ] **Step 12.9**: Push feature branch

---

# PHASE 2 — Personal Brand Global (~3 days, ~7,500 lines)

> Branch: `phase-2-personal-brand-global`.

---

## Task 13: Setup Phase 2 branch

- [ ] **Step 13.1**: `git checkout feature/v2.5-global-cluster && git pull && git checkout -b phase-2-personal-brand-global`

---

## Task 14: Personal Brand foundation skill 22 (1 agent, 6 files)

**Files:**
- `skills-global/22-personal-brand-context-global/SKILL.md`
- `skills-global/22-personal-brand-context-global/README.md`
- `skills-global/22-personal-brand-context-global/variants/{01-us,02-eu,03-sea,04-latam}.md`

**Note:** 4 region variants, mỗi variant cover 3 audience inside (founder/coach/creator). Khác VN structure.

- [ ] **Step 14.1**: Dispatch agent — 4 region variants, each contains founder/coach/creator sections
- [ ] **Step 14.2**: Verify line counts (variants ≤400 lines because cover 3 audience)
- [ ] **Step 14.3**: Commit `feat(skill-22-global): add personal-brand-context-global with 4 region variants (US/EU/SEA/LATAM)`

---

## Task 15: Universal personal brand skills (1 agent, 4 files)

**Files:**
- `skills-global/23-personal-brand-strategy-global/SKILL.md`
- `skills-global/25-voice-clone-podcast-global/SKILL.md`
- `skills-global/26-thought-leadership-content-global/SKILL.md`
- `skills-global/28-community-building-global/SKILL.md`

- [ ] **Step 15.1**: Dispatch agent — translate VN skills 23, 25, 26, 28 to global
- [ ] **Step 15.2**: Verify ≤500 lines
- [ ] **Step 15.3**: Commit `feat(skills-global-pb): add universal PB skills 23, 25, 26, 28`

---

## Task 16: PB skills with variants — skill 24 + 27 (1 agent, 10 files)

**Files:**
- Skill 24 `ai-avatar-production-global/`: SKILL.md + variants/×4 (disclosure law per region)
- Skill 27 `personal-brand-monetize-global/`: SKILL.md + variants/×4 (tax/legal per region)

- [ ] **Step 16.1**: Dispatch agent
- [ ] **Step 16.2**: Verify line counts
- [ ] **Step 16.3**: Commit `feat(skills-global-pb): add 2 variant skills (24 ai-avatar, 27 monetize)`

---

## Task 17: Personal Brand references (1 agent, 3 files)

**Files:**
- `skills-global/references/ai-video-disclosure-global.md` (~280 lines)
- `skills-global/references/voice-clone-prompts-global.md` (~220 lines)
- `skills-global/references/hook-formulas-global.md` (~300 lines)

- [ ] **Step 17.1**: Dispatch agent
- [ ] **Step 17.2**: Verify each ≤500 lines
- [ ] **Step 17.3**: Commit `feat(refs-global): add 3 PB references (ai-disclosure, voice-clone, hook-formulas)`

---

## Task 18: Personal Brand workflows (1 agent, 3 files)

**Files:**
- `workflows-global/personal-brand-launch-global.md` (~400 lines)
- `workflows-global/ai-avatar-batch-global.md` (~400 lines)
- `workflows-global/personal-brand-monthly-global.md` (~400 lines)

- [ ] **Step 18.1**: Dispatch agent — 8-section newbie-friendly each
- [ ] **Step 18.2**: Verify ≤500 lines
- [ ] **Step 18.3**: Commit `feat(workflows-global-pb): add 3 PB workflows (launch, avatar-batch, monthly)`

---

## Task 19: Phase 2 Quality Gates + PR

- [ ] **Step 19.1**: Run all validate scripts
- [ ] **Step 19.2**: Cross-reference check (skill 22-28 global all reference each other correctly)
- [ ] **Step 19.3**: Push + Create PR #2
- [ ] **Step 19.4**: Merge into feature branch

---

# PHASE 3 — Polish + Release (~5 days, ~9,300 lines)

> Branch: `phase-3-polish-release`. Final phase → tag v2.5.0.

---

## Task 20: Setup Phase 3 branch

- [ ] **Step 20.1**: `git checkout feature/v2.5-global-cluster && git pull && git checkout -b phase-3-polish-release`

---

## Task 21: Extend 5 agents — Universal Mode (1 agent, 5 files modified)

**Files:**
- Modify `agents/mkt-strategist.md` (+50 lines)
- Modify `agents/content-producer.md` (+50 lines)
- Modify `agents/performance-analyst.md` (+50 lines)
- Modify `agents/channel-operator.md` (+50 lines, if exists)
- Modify `agents/personal-brand-builder.md` (+50 lines)

Add "Cluster Auto-Detect Mode" section to each:
- Logic: read `.agents/*-context.md` files
- Map: VN context → skills/, Global context → skills-global/
- Both context files exist → ASK 1 question
- Skills mapping per cluster

- [ ] **Step 21.1**: Read all 5 agent files first
- [ ] **Step 21.2**: Dispatch agent
- [ ] **Step 21.3**: Verify each agent file ≤500 lines
- [ ] **Step 21.4**: Commit `feat(agents): add Cluster Auto-Detect Mode to 5 agents (universal VN+Global)`

---

## Task 22: Documentation — getting-started + region-guide + apac-roadmap (1 agent, 3 files)

**Files:**
- `docs/getting-started-global.md` (~220 lines)
- `docs/global-region-guide.md` (~280 lines)
- `docs/apac-roadmap.md` (~150 lines)

- [ ] **Step 22.1**: Dispatch agent
- [ ] **Step 22.2**: Verify ≤500 lines each
- [ ] **Step 22.3**: Commit `docs(global): add getting-started + region-guide + apac-roadmap`

---

## Task 23: Documentation — dropshipping-guide + release-notes (1 agent, 2 files)

**Files:**
- `docs/dropshipping-guide.md` (~600 lines, 8-chapter handbook — can go up to 800 lines)
- `docs/release-notes/v2.5.0.md` (~280 lines, bilingual)

- [ ] **Step 23.1**: Dispatch agent
- [ ] **Step 23.2**: Verify dropshipping-guide ≤800, release-notes ≤500
- [ ] **Step 23.3**: Commit `docs(global): add dropshipping-guide (8-chapter) + v2.5.0 release notes`

---

## Task 24: Examples (1 agent, 2 files)

**Files:**
- `examples/personal-brand-coach-global.md` (~200 lines, US-based coach)
- `examples/dropshipping-store-global.md` (~200 lines, winning product launch)

- [ ] **Step 24.1**: Dispatch agent
- [ ] **Step 24.2**: Verify ≤500 lines each
- [ ] **Step 24.3**: Commit `docs(examples): add personal-brand-coach-global + dropshipping-store-global samples`

---

## Task 25: Root files — README + CLAUDE.md + AGENTS.md (1 agent, 4 files)

**Files:**
- Modify `README.md` (+200 lines: v2.5.0 banner, badges 60 skills, global cluster section, structure tree update)
- Modify `README.vi.md` (+200 lines: sync VN version)
- Modify `CLAUDE.md` (+50 lines: register global cluster + agents mode)
- Modify `AGENTS.md` (+30 lines: pattern docs)

- [ ] **Step 25.1**: Read all 4 files first
- [ ] **Step 25.2**: Dispatch agent
- [ ] **Step 25.3**: Verify EN/VN README sync
- [ ] **Step 25.4**: Commit `docs(readme+claude+agents): v2.5.0 banner + global cluster section + agents universal mode (sync EN/VN)`

---

## Task 26: Versioning files — CHANGELOG + VERSIONS + marketplace.json (1 agent, 3 files)

**Files:**
- Modify `CHANGELOG.md` (+80 lines: v2.5.0 entry)
- Modify `VERSIONS.md` (+50 lines: 30 new + 5 agent bumps)
- Modify `.claude-plugin/marketplace.json` (+30 paths, version 2.4.0 → 2.5.0)

- [ ] **Step 26.1**: Dispatch agent
- [ ] **Step 26.2**: Validate JSON syntax
- [ ] **Step 26.3**: Verify marketplace.json has 60 skills total
- [ ] **Step 26.4**: Commit `chore(version): bump to v2.5.0 + register 30 global skills in marketplace`

---

## Task 27: Update docs — skill-map + faq + workflow-guide (1 agent, 3 files)

**Files:**
- Modify `docs/skill-map.md` (+60 lines: integrate global cluster, 60 skills total)
- Modify `docs/faq.md` (+80 lines: 10 Q&A about global)
- Modify `docs/workflow-guide.md` (+60 lines: 8 global workflows)

- [ ] **Step 27.1**: Dispatch agent
- [ ] **Step 27.2**: Commit `docs(skill-map+faq+workflow-guide): integrate global cluster (60 skills, 8 global workflows)`

---

## Task 28: Update validate scripts (1 agent, 2 files)

**Files:**
- Modify `validate-skills.sh` (+20 lines: check global cluster + variants)
- Modify `validate-skills.ps1` (+20 lines: PowerShell mirror)

Add checks:
- Variant pattern for: skill 22 global (4 region variants), foundation global, all variant skills
- Global cluster has frontmatter

- [ ] **Step 28.1**: Dispatch agent
- [ ] **Step 28.2**: Test: `bash validate-skills.sh` should pass for 60 skills
- [ ] **Step 28.3**: Commit `chore(validate): add global cluster checks + variant pattern verification`

---

## Task 29: 10 Quality Gates verification

- [ ] **Step 29.1**: Gate 1 — `bash validate-skills.sh` PASS
- [ ] **Step 29.2**: Gate 2 — Line count: skills ≤500, refs ≤500, docs ≤800, workflows ≤500
- [ ] **Step 29.3**: Gate 3 — Frontmatter consistency (all 30 new skills)
- [ ] **Step 29.4**: Gate 4 — Cross-reference check (all `related:` resolve)
- [ ] **Step 29.5**: Gate 5 — README EN/VN sync (same structure)
- [ ] **Step 29.6**: Gate 6 — CHANGELOG `[2.5.0]` + compare link
- [ ] **Step 29.7**: Gate 7 — Backward compat (VN cluster unchanged, agents Mode VN works)
- [ ] **Step 29.8**: Gate 8 — Forward compat (Global cluster activates with `-global` context)
- [ ] **Step 29.9**: Gate 9 — E2E workflow simulation (US founder using personal-brand-launch-global)
- [ ] **Step 29.10**: Gate 10 — Plugin manifest valid (60 skills, version 2.5.0)

---

## Task 30: Final PR + Release v2.5.0

- [ ] **Step 30.1**: Push phase-3-polish-release
- [ ] **Step 30.2**: Create PR #3: phase-3 → feature branch
- [ ] **Step 30.3**: Merge phase-3 into feature branch
- [ ] **Step 30.4**: Create PR final: feature → master
- [ ] **Step 30.5**: Merge to master via gh pr merge
- [ ] **Step 30.6**: Tag v2.5.0 with comprehensive message
- [ ] **Step 30.7**: Push tag
- [ ] **Step 30.8**: `gh release create v2.5.0` with bilingual notes
- [ ] **Step 30.9**: Create Discussion issue for v2.5.0 feedback
- [ ] **Step 30.10**: Cleanup branches (delete 4 temp branches)
- [ ] **Step 30.11**: Update repo description + topics on GitHub

---

# Self-Review (writer self-check)

## 1. Spec coverage check

| Spec section | Tasks covering it |
|--------------|-------------------|
| Section 1 (Architecture) | Task 0 (setup) + all create tasks reference structure |
| Section 2 (Variants pattern) | Tasks 1, 6, 7, 8, 14, 16 |
| Section 3 (Universal skills + Dropshipping) | Tasks 2-5, 9, 15, plus dropshipping mode in 3, 4, 6, 7, 8 |
| Section 4 (Agents auto-detect) | Task 21 |
| Section 5 (Documentation) | Tasks 22, 23, 24 |
| Section 6 (Phased rollout) | Phases structured exactly per spec |
| Section 7 (Backward compat) | Gate 7 (Step 29.7) + design choice (skills/ untouched) |
| Section 8 (10 QA gates) | Task 29 |
| Section 9 (Future roadmap) | Task 22 (apac-roadmap.md) |

✅ All spec sections covered.

## 2. Placeholder scan

- No "TBD" except YouTube placeholders (intentional, will be filled post-release)
- All file paths are concrete
- All line targets are specific

✅ No problematic placeholders.

## 3. Type/name consistency check

- Skill folder naming: `XX-name-global/` consistently
- Skill `name:` field: `XX-name-global` matches folder
- Foundation file: `.agents/product-marketing-context-global.md` (parallel VN)
- Personal Brand foundation: `.agents/personal-brand-context-global.md`
- Workflow naming: `*-global.md` in `workflows-global/`
- References naming: in `skills-global/references/`
- Branches: `phase-1-core-global`, `phase-2-personal-brand-global`, `phase-3-polish-release`

✅ All names consistent.

## 4. Dependency check

- Phase 1 → Phase 2 → Phase 3 (linear, foundation first)
- Within Phase 1: foundation skill (Task 1) should be built first before universal/variant skills reference it
- Within Phase 2: skill 22 PB foundation first, then 23-28
- Phase 3: agents and root files modify many existing files — last phase appropriate

✅ Dependencies clean.

## 5. Granularity check

- Phase 1: Tasks 1-12 (~12 batched tasks)
- Phase 2: Tasks 13-19 (~7 batched tasks)
- Phase 3: Tasks 20-30 (~11 tasks)
- Total: ~30 tasks for ~107 files (~3.5 files/task on average)

This batching enables 4-5 parallel agents per wave, cutting execution time ~50%.

✅ Bite-sized for parallel execution.

---

**End of plan.**
