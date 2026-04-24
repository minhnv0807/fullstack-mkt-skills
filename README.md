<p align="center">
  <a href="README.md"><img src="https://img.shields.io/badge/Language-English-blue?style=for-the-badge" alt="English"/></a>
  <a href="README.vi.md"><img src="https://img.shields.io/badge/Ng%C3%B4n%20ng%E1%BB%AF-Ti%E1%BA%BFng%20Vi%E1%BB%87t-red?style=for-the-badge" alt="Tieng Viet"/></a>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/v2.0-Plugin%20Ready-6d28d9?style=for-the-badge&labelColor=1e1033" alt="v2.0"/>
  <img src="https://img.shields.io/badge/Skills-20-6d28d9?style=for-the-badge&labelColor=1e1033" alt="20 Skills"/>
  <img src="https://img.shields.io/badge/Agents-4-be185d?style=for-the-badge&labelColor=1e1033" alt="4 Agents"/>
  <img src="https://img.shields.io/badge/Workflows-3-0f766e?style=for-the-badge&labelColor=1e1033" alt="3 Workflows"/>
  <img src="https://img.shields.io/badge/Market-Vietnam%202025--2026-f97316?style=for-the-badge&labelColor=1e1033" alt="Vietnam Market"/>
  <img src="https://img.shields.io/badge/License-MIT-22c55e?style=for-the-badge&labelColor=1e1033" alt="MIT License"/>
</p>

<p align="center">
  <a href="https://github.com/minhnv0807/fullstack-mkt-skills/stargazers"><img src="https://img.shields.io/github/stars/minhnv0807/fullstack-mkt-skills?style=flat-square&color=yellow" alt="Stars"/></a>
  <a href="https://github.com/minhnv0807/fullstack-mkt-skills/network/members"><img src="https://img.shields.io/github/forks/minhnv0807/fullstack-mkt-skills?style=flat-square&color=blue" alt="Forks"/></a>
  <a href="https://github.com/minhnv0807/fullstack-mkt-skills/issues"><img src="https://img.shields.io/github/issues/minhnv0807/fullstack-mkt-skills?style=flat-square&color=red" alt="Issues"/></a>
  <a href="https://github.com/minhnv0807/fullstack-mkt-skills/pulls"><img src="https://img.shields.io/github/issues-pr/minhnv0807/fullstack-mkt-skills?style=flat-square&color=green" alt="PRs"/></a>
  <a href="https://github.com/minhnv0807/fullstack-mkt-skills/commits/master"><img src="https://img.shields.io/github/last-commit/minhnv0807/fullstack-mkt-skills?style=flat-square&color=violet" alt="Last commit"/></a>
  <a href="https://github.com/minhnv0807/fullstack-mkt-skills/actions/workflows/validate.yml"><img src="https://img.shields.io/github/actions/workflow/status/minhnv0807/fullstack-mkt-skills/validate.yml?style=flat-square&label=validate" alt="CI"/></a>
</p>

<p align="center">
  <a href="docs/getting-started.md"><b>Getting Started</b></a> &middot;
  <a href="docs/best-practices.md"><b>Best Practices</b></a> &middot;
  <a href="CONTRIBUTING.md"><b>Contributing</b></a> &middot;
  <a href="CHANGELOG.md"><b>Changelog</b></a> &middot;
  <a href="VERSIONS.md"><b>Versions</b></a>
</p>

<h1 align="center">Fullstack Marketing Skills</h1>

<p align="center">
  <strong>Turn any AI into a professional marketing assistant — built for the Vietnamese market.</strong>
  <br/>
  <sub>Framework <b>Over Powers Agency</b> | Claude Code + ChatGPT + Gemini + Copilot + Cursor</sub>
</p>

<p align="center">
  <sub>
    Compliant with <a href="https://agentskills.io">Agent Skills Spec</a> |
    Claude Code Plugin Marketplace |
    Universal AI agent compatibility
  </sub>
</p>

> **Note:** Skills content is written in Vietnamese (target: VN market 2025-2026). Docs available in both English and Vietnamese. Perfect for Vietnamese businesses or anyone marketing TO Vietnamese consumers.

---

## The Problem

```
You:    "Plan marketing for my spa business"
AI:     *Generic 500-word response, no numbers, no KPIs, no timeline*

You:    "Write Facebook ad copy"
AI:     *One generic paragraph, no cold/warm/hot audience distinction*

You:    "Monthly report"
AI:     *Data dump, no insights, no action items*
```

## The Solution

```
You:    "Plan marketing for my spa"
AI:     *2000+ word .md file — 5 sections, tables, 3-scenario KPIs,
         budget allocation, weekly timeline, risk matrix*

You:    "Write ad copy"
AI:     *6 variations — 2 TOFU + 2 MOFU + 2 BOFU,
         each with headline + primary text + CTA*

You:    "Monthly report"
AI:     *Insights first, data as evidence, root-cause analysis,
         48h action plan + weekly plan + next month strategy*
```

---

## Foundation Skill — No Repeating Info

Every skill starts by reading: **`.agents/product-marketing-context.md`** first.

```
One-time setup per project:
> Set up product marketing context for [my product]
  → AI creates .agents/product-marketing-context.md
    with 12 sections (product, audience, persona,
    competitors, positioning, pain points, differentiation, ...)

Every time after:
> Write Facebook ad copy
  → AI reads context → writes immediately, no questions
> Plan marketing for next month
  → AI reads context → plans immediately, no questions
```

**Saves ~70% of time per conversation.**

---

## Quick Start

### Option 1: Claude Code Plugin (recommended)

```bash
# In Claude Code
/plugin marketplace add minhnv0807/fullstack-mkt-skills
/plugin install fullstack-mkt-skills
```

### Option 2: Clone + Install

```bash
git clone https://github.com/minhnv0807/fullstack-mkt-skills.git
cd fullstack-mkt-skills
```

<table>
<tr>
<td><b>macOS / Linux</b></td>
<td><b>Windows</b></td>
</tr>
<tr>
<td>

```bash
chmod +x install.sh
./install.sh --global
```

</td>
<td>

```powershell
.\install.ps1 -Global
```

</td>
</tr>
</table>

### Option 3: Other AI agents (ChatGPT, Gemini, Cursor)

Copy `.md` files as Custom Instructions or context. Each file is a standalone prompt.

### Use

```
# First time
> Set up product marketing context for Luna Spa

# Subsequent times — no need to repeat product info
> Plan fullstack marketing for May
> Write 30s TikTok script for new facial treatment
> CPMess is 45K, ROAS 1.8x — audit and suggest optimization
> Reverse-calculate budget for 200M VND revenue target
```

---

## 20 Skills

<table>
<tr><th>#</th><th>Skill</th><th>What it does</th><th>Category</th></tr>
<tr><td><b>★</b></td><td><a href="skills/product-marketing-context/SKILL.md"><b>Product Marketing Context</b></a></td><td><b>Foundation</b> — read first, avoids repeating info</td><td>

![Foundation](https://img.shields.io/badge/-Foundation-be185d?style=flat-square)

</td></tr>
<tr><td><code>00</code></td><td><a href="skills/00-ke-hoach-mkt/SKILL.md"><b>Marketing Plan</b></a></td><td>Fullstack 7-section plan + SAVE framework + risk matrix</td><td>

![Strategy](https://img.shields.io/badge/-Strategy-6d28d9?style=flat-square)

</td></tr>
<tr><td><code>01</code></td><td><a href="skills/01-lich-noi-dung/SKILL.md"><b>Content Calendar</b></a></td><td>Monthly calendar + 1:9 repurposing matrix + AI scoring</td><td>

![Content](https://img.shields.io/badge/-Content-b45309?style=flat-square)

</td></tr>
<tr><td><code>02</code></td><td><a href="skills/02-brief-chien-dich/SKILL.md"><b>Campaign Brief</b></a></td><td>9-section brief + RACI matrix + risk mitigation</td><td>

![Strategy](https://img.shields.io/badge/-Strategy-6d28d9?style=flat-square)

</td></tr>
<tr><td><code>03</code></td><td><a href="skills/03-danh-gia-hieu-suat/SKILL.md"><b>Performance Audit</b></a></td><td>Diagnostic tree + 5 Whys + 48h action plan</td><td>

![Performance](https://img.shields.io/badge/-Performance-c2410c?style=flat-square)

</td></tr>
<tr><td><code>04</code></td><td><a href="skills/04-script-video/SKILL.md"><b>Video Script</b></a></td><td>A/B scripts + 5 hook types + viral score + filming guide</td><td>

![Content](https://img.shields.io/badge/-Content-b45309?style=flat-square)

</td></tr>
<tr><td><code>05</code></td><td><a href="skills/05-copy-quang-cao/SKILL.md"><b>Ad Copy</b></a></td><td>6 variations, 3 funnel tiers + emotional triggers</td><td>

![Content](https://img.shields.io/badge/-Content-b45309?style=flat-square)

</td></tr>
<tr><td><code>06</code></td><td><a href="skills/06-brief-ugc-egc/SKILL.md"><b>UGC/EGC Brief</b></a></td><td>Creator brief + legal + payment + batch management</td><td>

![Content](https://img.shields.io/badge/-Content-b45309?style=flat-square)

</td></tr>
<tr><td><code>07</code></td><td><a href="skills/07-bao-cao-marketing/SKILL.md"><b>Marketing Report</b></a></td><td>5-min readable monthly report — insights first</td><td>

![Performance](https://img.shields.io/badge/-Performance-c2410c?style=flat-square)

</td></tr>
<tr><td><code>08</code></td><td><a href="skills/08-nghien-cuu-doi-thu/SKILL.md"><b>Competitor Research</b></a></td><td>3-tier competitor model + SWOT + positioning map + gaps</td><td>

![Strategy](https://img.shields.io/badge/-Strategy-6d28d9?style=flat-square)

</td></tr>
<tr><td><code>09</code></td><td><a href="skills/09-insight-khach-hang/SKILL.md"><b>Customer Insight</b></a></td><td>Persona + customer journey + JTBD + validation</td><td>

![Strategy](https://img.shields.io/badge/-Strategy-6d28d9?style=flat-square)

</td></tr>
<tr><td><code>10</code></td><td><a href="skills/10-tinh-kpi-nguoc/SKILL.md"><b>Reverse KPI Calculator</b></a></td><td>Revenue → budget + 3 scenarios + sensitivity analysis</td><td>

![Performance](https://img.shields.io/badge/-Performance-c2410c?style=flat-square)

</td></tr>
<tr><td><code>11</code></td><td><a href="skills/11-thiet-lap-kenh/SKILL.md"><b>Channel Setup A-Z</b></a></td><td>Setup 7 channels + 4-phase checklist + 30-day plan</td><td>

![Operations](https://img.shields.io/badge/-Operations-1d4ed8?style=flat-square)

</td></tr>
<tr><td><code>12</code></td><td><a href="skills/12-brief-landing-page/SKILL.md"><b>Landing Page Brief</b></a></td><td>7-section brief + conversion checklist + A/B plan</td><td>

![Operations](https://img.shields.io/badge/-Operations-1d4ed8?style=flat-square)

</td></tr>
<tr><td><code>13</code></td><td><a href="skills/13-phan-tich-du-lieu/SKILL.md"><b>Data Analysis</b></a></td><td>Meta/TikTok/GA4 → insights + trends + anomaly detection</td><td>

![Operations](https://img.shields.io/badge/-Operations-1d4ed8?style=flat-square)

</td></tr>
<tr><td><code>14</code></td><td><a href="skills/14-email-marketing/SKILL.md"><b>Email Marketing</b></a></td><td>Welcome/nurture/re-engage + automation + deliverability</td><td>

![Operations](https://img.shields.io/badge/-Operations-1d4ed8?style=flat-square)

</td></tr>
<tr><td><code>15</code></td><td><a href="skills/15-social-listening/SKILL.md"><b>Social Listening</b></a></td><td>Brand monitoring + sentiment + crisis protocol</td><td>

![Content](https://img.shields.io/badge/-Content-b45309?style=flat-square)

</td></tr>
<tr><td><code>16</code></td><td><a href="skills/16-marketing-psychology/SKILL.md"><b>Marketing Psychology</b></a> <sup>NEW</sup></td><td>7 Cialdini principles + VN cultural adaptation</td><td>

![Strategy](https://img.shields.io/badge/-Strategy-6d28d9?style=flat-square)

</td></tr>
<tr><td><code>17</code></td><td><a href="skills/17-pricing-strategy/SKILL.md"><b>Pricing Strategy</b></a> <sup>NEW</sup></td><td>Pricing tiers + charm/anchor/bundle + break-even</td><td>

![Strategy](https://img.shields.io/badge/-Strategy-6d28d9?style=flat-square)

</td></tr>
<tr><td><code>18</code></td><td><a href="skills/18-referral-program/SKILL.md"><b>Referral Program</b></a> <sup>NEW</sup></td><td>1-way/2-way/affiliate + VN channels + anti-fraud</td><td>

![Operations](https://img.shields.io/badge/-Operations-1d4ed8?style=flat-square)

</td></tr>
<tr><td><code>19</code></td><td><a href="skills/19-ab-test-setup/SKILL.md"><b>A/B Test Setup</b></a> <sup>NEW</sup></td><td>Sample size + 8 what-to-test + significance analysis</td><td>

![Performance](https://img.shields.io/badge/-Performance-c2410c?style=flat-square)

</td></tr>
</table>

---

## 4 Agents

```
                        ┌─────────────────────┐
                        │   MKT STRATEGIST    │
                        │ Planning + Strategy │
                        │ Skills: 00,02,08,09,│
                        │         16,17       │
                        └─────────┬───────────┘
                                  │
              ┌───────────────────┼───────────────────┐
              │                   │                   │
    ┌─────────▼─────────┐ ┌──────▼──────────┐ ┌──────▼──────────┐
    │ CONTENT PRODUCER  │ │ PERF. ANALYST   │ │ CHANNEL OPERATOR│
    │ Content + Scripts │ │ Data + Reports  │ │ Channels+Landing│
    │ 01, 04, 05, 06    │ │ 03,07,10,13,19  │ │ 11,12,14,15,18  │
    └───────────────────┘ └─────────────────┘ └─────────────────┘
```

---

## 3 Workflows

### Campaign Launch (14-21 days)
```
08 Competitors → 09 Insights → 00 Plan → 02 Brief → 01+04+05 Content → 06 UGC → 11+12 Channels
```

### Monthly Cycle (3-5 days)
```
13 Data → 03 Audit → 07 Report → 10 New KPIs → 01 New Calendar
```

### Content Production (weekly)
```
Review calendar → 04 Script → Film/Edit → 05 Ad copy → Schedule posts
```

---

## Vietnam Benchmarks 2025-2026

<table>
<tr><th>Metric</th><th>Poor</th><th>Average</th><th>Good</th><th>Excellent</th></tr>
<tr><td><b>Meta CPMess</b></td><td>>40K VND</td><td>25-40K</td><td>18-25K</td><td>&lt;18K</td></tr>
<tr><td><b>TikTok CPMess</b></td><td>>45K</td><td>28-45K</td><td>20-28K</td><td>&lt;20K</td></tr>
<tr><td><b>Lead→Booking</b></td><td>&lt;40%</td><td>40-60%</td><td>60-75%</td><td>>75%</td></tr>
<tr><td><b>Booking→Customer</b></td><td>&lt;25%</td><td>25-40%</td><td>40-55%</td><td>>55%</td></tr>
<tr><td><b>ROAS</b></td><td>&lt;2x</td><td>2-4x</td><td>4-7x</td><td>>7x</td></tr>
<tr><td><b>Email Open Rate</b></td><td>&lt;15%</td><td>15-25%</td><td>25-35%</td><td>>35%</td></tr>
</table>

> Full benchmarks by industry at [`references/benchmarks-vietnam.md`](references/benchmarks-vietnam.md)

---

## Platform Compatibility

| Platform | Support | How to use |
|----------|---------|-----------|
| **Claude Code** | Full | `/plugin install` or `install.sh --global` |
| **Claude Pro** | Full | Upload to Project Knowledge |
| **ChatGPT** | Partial | Upload `.md` as Custom GPT config |
| **Gemini** | Partial | System prompt / context |
| **Copilot** | Partial | `.github/copilot-instructions.md` |
| **Cursor / Windsurf** | Partial | `.cursorrules` |
| **Any AI agent** | Partial | Each `.md` is a standalone prompt |

---

## Project Structure

```
fullstack-mkt-skills/
│
├── .claude-plugin/
│   └── marketplace.json            # Claude Code plugin spec
│
├── .github/
│   ├── ISSUE_TEMPLATE/              # Bug report + skill request
│   └── PULL_REQUEST_TEMPLATE/       # New skill + skill update
│
├── skills/                          # 20 skills (folder per skill)
│   ├── product-marketing-context/   # Foundation skill (★)
│   │   └── SKILL.md
│   ├── 00-ke-hoach-mkt/
│   │   └── SKILL.md
│   └── ... (18 more)
│
├── references/                      # Shared references
│   ├── benchmarks-vietnam.md
│   ├── channel-system.md
│   ├── content-angles.md
│   ├── kpi-formulas.md
│   └── tool-stack.md
│
├── workflows/                       # Multi-skill workflows
├── agents/                          # Agent personas
├── examples/                        # Sample outputs
│
├── AGENTS.md                        # Universal agent spec
├── CLAUDE.md                        # Claude-specific config
├── CONTRIBUTING.md                  # How to contribute
├── VERSIONS.md                      # Version tracking
├── validate-skills.sh               # Bash validator
├── validate-skills.ps1              # PowerShell validator
├── install.sh                       # macOS/Linux installer
├── install.ps1                      # Windows installer
└── LICENSE                          # MIT
```

---

## Why Vietnamese content?

Skills are written in Vietnamese because:

1. **Target market is Vietnam** — benchmarks, channels (Zalo, Shopee, TikTok Shop), cultural psychology all specific to VN
2. **Better AI output** — when skill prompts match target market language, AI outputs match too
3. **Vietnamese customer language** — capturing exact phrases customers use makes copy resonate

**If you want English skills:** The structure is language-agnostic. Fork the repo and translate skills to your target market. Keep the framework, swap the language.

---

## Contributing

See [`CONTRIBUTING.md`](CONTRIBUTING.md) before starting.

```bash
# 1. Fork repo
# 2. Create branch
git checkout -b feature/new-skill

# 3. Run validator before committing
./validate-skills.sh

# 4. Conventional Commits
git commit -m "feat(skill): add new-skill"

# 5. Open PR with template
```

Contributions welcome in any language — just make sure to specify target market in the skill description.

---

## Credits

- **Inspired by:** [coreyhaines31/marketingskills](https://github.com/coreyhaines31/marketingskills) — foundation skill concept + plugin spec
- **Spec:** [Agent Skills Spec](https://agentskills.io)
- **Framework:** Over Powers Agency — VN market 2025-2026

---

## Star History

<a href="https://star-history.com/#minhnv0807/fullstack-mkt-skills&Date">
 <picture>
   <source media="(prefers-color-scheme: dark)" srcset="https://api.star-history.com/svg?repos=minhnv0807/fullstack-mkt-skills&type=Date&theme=dark" />
   <source media="(prefers-color-scheme: light)" srcset="https://api.star-history.com/svg?repos=minhnv0807/fullstack-mkt-skills&type=Date" />
   <img alt="Star History Chart" src="https://api.star-history.com/svg?repos=minhnv0807/fullstack-mkt-skills&type=Date" />
 </picture>
</a>

If you find this project useful, please star it — helps the repo appear in GitHub Trending.

---

## License

MIT — free to use, modify, distribute.

---

<p align="center">
  <strong>Framework:</strong> Over Powers Agency
  <br/>
  <strong>Benchmark:</strong> Vietnam Market 2025-2026
  <br/>
  <strong>Compatible with:</strong> Claude Code &middot; ChatGPT &middot; Gemini &middot; Copilot &middot; Cursor &middot; any AI that reads Markdown
</p>

<p align="center">
  <sub>Built with AI, for marketers who use AI.</sub>
</p>
