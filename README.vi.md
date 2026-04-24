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

<h1 align="center">Fullstack Marketing Skills</h1>

<p align="center">
  <strong>Bien AI thanh tro ly marketing chuyen nghiep — thiet ke cho thi truong Viet Nam.</strong>
  <br/>
  <sub>Framework <b>Over Powers Agency</b> | Claude Code + ChatGPT + Gemini + Copilot + Cursor</sub>
</p>

<p align="center">
  <sub>
    Tuan thu <a href="https://agentskills.io">Agent Skills Spec</a> |
    Claude Code Plugin Marketplace |
    Universal AI agent compat
  </sub>
</p>

---

## The Problem

```
Ban:    "Lap ke hoach marketing cho spa di"
AI:     *Tra loi 500 tu chung chung, khong so lieu, khong KPI, khong timeline*

Ban:    "Viet copy quang cao Facebook"
AI:     *1 doan generic, khong phan biet cold/warm/hot audience*

Ban:    "Bao cao thang nay"
AI:     *Liet ke so lieu, khong co nhan dinh, khong de xuat hanh dong*
```

## The Solution

```
Ban:    "Lap ke hoach marketing cho spa"
AI:     *File .md 2000+ tu — 5 phan, bang bieu, KPI 3 kich ban,
         ngan sach phan bo, timeline tuan, risk matrix*

Ban:    "Viet copy quang cao"
AI:     *6 bien the — 2 TOFU + 2 MOFU + 2 BOFU,
         moi bien the co headline + primary text + CTA*

Ban:    "Bao cao thang"
AI:     *Nhan dinh truoc, so lieu minh hoa, nguyen nhan goc re,
         de xuat xu ly 48h + tuan nay, ke hoach thang sau*
```

---

## Foundation Skill — Khong phai hoi lai

Moi skill khac bat dau bang: **doc `.agents/product-marketing-context.md` truoc**.

```
Chay 1 lan dau du an:
> Thiet lap product marketing context cho [san pham]
  → AI tao file .agents/product-marketing-context.md
    chua 12 section (product, audience, persona, 
    doi thu, dinh vi, noi dau, differentiation, ...)

Moi lan sau:
> Viet copy quang cao Facebook
  → AI doc context → viet luon, khong hoi lai
> Lap ke hoach MKT tháng toi
  → AI doc context → lap luon, khong hoi lai
```

Tiet kiem **70% thoi gian** moi cuoc hoi thoai.

---

## Quick Start

### Option 1: Claude Code Plugin (khuyen dung)

```bash
# Trong Claude Code
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

### Option 3: Voi agent khac (ChatGPT, Gemini, Cursor)

Copy file `.md` lam Custom Instructions hoac context. Moi file la 1 prompt doc lap.

### Use

```
# Lan dau
> Thiet lap product marketing context cho spa Luna

# Cac lan sau — khong can nhac lai thong tin san pham
> Lap ke hoach fullstack marketing thang 5
> Viet script TikTok 30s cho facial moi
> CPMess dang 45K, ROAS 1.8x — danh gia va de xuat toi uu
> Tinh nguoc ngan sach de dat 200 trieu doanh thu/thang
```

---

## 20 Skills

<table>
<tr><th>#</th><th>Skill</th><th>Lam gi</th><th>Category</th></tr>
<tr><td><b>★</b></td><td><a href="skills/product-marketing-context/SKILL.md"><b>Product Marketing Context</b></a></td><td><b>Foundation</b> — doc truoc moi skill, tranh lap lai thong tin</td><td>

![Foundation](https://img.shields.io/badge/-Foundation-be185d?style=flat-square)

</td></tr>
<tr><td><code>00</code></td><td><a href="skills/00-ke-hoach-mkt/SKILL.md"><b>Ke Hoach MKT</b></a></td><td>Ke hoach toan dien 7 phan + SAVE framework + risk matrix</td><td>

![Strategy](https://img.shields.io/badge/-Strategy-6d28d9?style=flat-square)

</td></tr>
<tr><td><code>01</code></td><td><a href="skills/01-lich-noi-dung/SKILL.md"><b>Lich Noi Dung</b></a></td><td>Lich thang + repurposing matrix 1:9 + AI scoring</td><td>

![Content](https://img.shields.io/badge/-Content-b45309?style=flat-square)

</td></tr>
<tr><td><code>02</code></td><td><a href="skills/02-brief-chien-dich/SKILL.md"><b>Brief Chien Dich</b></a></td><td>Brief 9 phan + RACI matrix + risk mitigation</td><td>

![Strategy](https://img.shields.io/badge/-Strategy-6d28d9?style=flat-square)

</td></tr>
<tr><td><code>03</code></td><td><a href="skills/03-danh-gia-hieu-suat/SKILL.md"><b>Danh Gia Hieu Suat</b></a></td><td>Diagnostic tree + 5 Whys + 48h action plan</td><td>

![Performance](https://img.shields.io/badge/-Performance-c2410c?style=flat-square)

</td></tr>
<tr><td><code>04</code></td><td><a href="skills/04-script-video/SKILL.md"><b>Script Video</b></a></td><td>Script A/B + 5 hook types + viral score + filming guide</td><td>

![Content](https://img.shields.io/badge/-Content-b45309?style=flat-square)

</td></tr>
<tr><td><code>05</code></td><td><a href="skills/05-copy-quang-cao/SKILL.md"><b>Copy Quang Cao</b></a></td><td>6 variations 3 tang pheu + emotional triggers</td><td>

![Content](https://img.shields.io/badge/-Content-b45309?style=flat-square)

</td></tr>
<tr><td><code>06</code></td><td><a href="skills/06-brief-ugc-egc/SKILL.md"><b>Brief UGC/EGC</b></a></td><td>Brief creator + legal + payment + batch management</td><td>

![Content](https://img.shields.io/badge/-Content-b45309?style=flat-square)

</td></tr>
<tr><td><code>07</code></td><td><a href="skills/07-bao-cao-marketing/SKILL.md"><b>Bao Cao Marketing</b></a></td><td>Bao cao thang doc 5 phut — nhan dinh truoc, so lieu sau</td><td>

![Performance](https://img.shields.io/badge/-Performance-c2410c?style=flat-square)

</td></tr>
<tr><td><code>08</code></td><td><a href="skills/08-nghien-cuu-doi-thu/SKILL.md"><b>Nghien Cuu Doi Thu</b></a></td><td>3 tang doi thu + SWOT + positioning map + gaps</td><td>

![Strategy](https://img.shields.io/badge/-Strategy-6d28d9?style=flat-square)

</td></tr>
<tr><td><code>09</code></td><td><a href="skills/09-insight-khach-hang/SKILL.md"><b>Insight Khach Hang</b></a></td><td>Persona + customer journey + JTBD + validation</td><td>

![Strategy](https://img.shields.io/badge/-Strategy-6d28d9?style=flat-square)

</td></tr>
<tr><td><code>10</code></td><td><a href="skills/10-tinh-kpi-nguoc/SKILL.md"><b>Tinh KPI Nguoc</b></a></td><td>Doanh thu → ngan sach + 3 kich ban + sensitivity</td><td>

![Performance](https://img.shields.io/badge/-Performance-c2410c?style=flat-square)

</td></tr>
<tr><td><code>11</code></td><td><a href="skills/11-thiet-lap-kenh/SKILL.md"><b>Thiet Lap Kenh</b></a></td><td>Setup 7 kenh + checklist 4 phase + 30-day plan</td><td>

![Operations](https://img.shields.io/badge/-Operations-1d4ed8?style=flat-square)

</td></tr>
<tr><td><code>12</code></td><td><a href="skills/12-brief-landing-page/SKILL.md"><b>Brief Landing Page</b></a></td><td>Brief 7 section + conversion checklist + A/B plan</td><td>

![Operations](https://img.shields.io/badge/-Operations-1d4ed8?style=flat-square)

</td></tr>
<tr><td><code>13</code></td><td><a href="skills/13-phan-tich-du-lieu/SKILL.md"><b>Phan Tich Du Lieu</b></a></td><td>Meta/TikTok/GA4 → insight + trend + anomaly</td><td>

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
<tr><td><code>17</code></td><td><a href="skills/17-pricing-strategy/SKILL.md"><b>Pricing Strategy</b></a> <sup>NEW</sup></td><td>Pricing tier + charm/anchor/bundle + break-even</td><td>

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
                        │ Ke hoach + Chien luoc│
                        │ Skills: 00,02,08,09,16,17│
                        └─────────┬───────────┘
                                  │
              ┌───────────────────┼───────────────────┐
              │                   │                   │
    ┌─────────▼─────────┐ ┌──────▼──────────┐ ┌──────▼──────────┐
    │ CONTENT PRODUCER  │ │ PERF. ANALYST   │ │ CHANNEL OPERATOR│
    │ Noi dung + Script │ │ Data + Bao cao  │ │ Kenh + Landing  │
    │ Skills: 01,04,05,06│ │ 03,07,10,13,19 │ │ 11,12,14,15,18 │
    └───────────────────┘ └─────────────────┘ └─────────────────┘
```

| Agent | Skills chinh |
|-------|--------------|
| [MKT Strategist](agents/mkt-strategist.md) | 00, 02, 08, 09, 16, 17 |
| [Content Producer](agents/content-producer.md) | 01, 04, 05, 06 |
| [Performance Analyst](agents/performance-analyst.md) | 03, 07, 10, 13, 19 |
| [Channel Operator](agents/channel-operator.md) | 11, 12, 14, 15, 18 |

---

## 3 Workflows

### Campaign Launch (14-21 ngay)
```
08 Doi thu → 09 Insight → 00 Ke hoach → 02 Brief → 01+04+05 Content → 06 UGC → 11+12 Kenh
```

### Monthly Cycle (3-5 ngay)
```
13 Data → 03 Danh gia → 07 Bao cao → 10 KPI moi → 01 Lich moi
```

### Content Production (hang tuan)
```
Review lich → 04 Script → Quay/Dung → 05 Copy ads → Len lich dang
```

---

## Benchmark Vietnam 2025-2026

<table>
<tr><th>Chi so</th><th>Kem</th><th>Trung binh</th><th>Tot</th><th>Xuat sac</th></tr>
<tr><td><b>CPMess Meta</b></td><td>>40K</td><td>25-40K</td><td>18-25K</td><td>&lt;18K</td></tr>
<tr><td><b>CPMess TikTok</b></td><td>>45K</td><td>28-45K</td><td>20-28K</td><td>&lt;20K</td></tr>
<tr><td><b>Lead->Booking</b></td><td>&lt;40%</td><td>40-60%</td><td>60-75%</td><td>>75%</td></tr>
<tr><td><b>Booking->Customer</b></td><td>&lt;25%</td><td>25-40%</td><td>40-55%</td><td>>55%</td></tr>
<tr><td><b>ROAS</b></td><td>&lt;2x</td><td>2-4x</td><td>4-7x</td><td>>7x</td></tr>
<tr><td><b>Email Open Rate</b></td><td>&lt;15%</td><td>15-25%</td><td>25-35%</td><td>>35%</td></tr>
</table>

> Full benchmark theo nganh tai [`references/benchmarks-vietnam.md`](references/benchmarks-vietnam.md)

---

## Tuong thich

| Platform | Ho tro | Cach dung |
|----------|--------|----------|
| **Claude Code** | Full | `/plugin install` hoac `install.sh --global` |
| **Claude Pro** | Full | Upload vao Project Knowledge |
| **ChatGPT** | Partial | Upload `.md` lam Custom GPT config |
| **Gemini** | Partial | System prompt / context |
| **Copilot** | Partial | `.github/copilot-instructions.md` |
| **Cursor / Windsurf** | Partial | `.cursorrules` |
| **Bat ky AI agent** | Partial | Moi file `.md` la 1 prompt doc lap |

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
│   ├── 01-lich-noi-dung/
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

## Contributing

Doc [`CONTRIBUTING.md`](CONTRIBUTING.md) truoc khi bat dau.

```bash
# 1. Fork repo
# 2. Tao branch
git checkout -b feature/ten-skill-moi

# 3. Chay validator truoc khi commit
./validate-skills.sh

# 4. Conventional Commits
git commit -m "feat(skill): add ten-skill-moi"

# 5. Tao PR voi template
```

---

## Thanks & Credits

- **Inspired by:** [coreyhaines31/marketingskills](https://github.com/coreyhaines31/marketingskills) — foundation skill concept + plugin spec
- **Spec:** [Agent Skills Spec](https://agentskills.io)
- **Framework:** Over Powers Agency — thi truong VN 2025-2026

---

## Star History

<a href="https://star-history.com/#minhnv0807/fullstack-mkt-skills&Date">
 <picture>
   <source media="(prefers-color-scheme: dark)" srcset="https://api.star-history.com/svg?repos=minhnv0807/fullstack-mkt-skills&type=Date&theme=dark" />
   <source media="(prefers-color-scheme: light)" srcset="https://api.star-history.com/svg?repos=minhnv0807/fullstack-mkt-skills&type=Date" />
   <img alt="Star History Chart" src="https://api.star-history.com/svg?repos=minhnv0807/fullstack-mkt-skills&type=Date" />
 </picture>
</a>

Neu thay project huu ich, cho 1 sao de theo doi — giup repo xuat hien trong GitHub Trending.

---

## License

MIT — tu do su dung, chinh sua, phan phoi.

---

<p align="center">
  <strong>Framework:</strong> Over Powers Agency
  <br/>
  <strong>Benchmark:</strong> Thi truong Viet Nam 2025-2026
  <br/>
  <strong>Tuong thich:</strong> Claude Code &middot; ChatGPT &middot; Gemini &middot; Copilot &middot; Cursor &middot; bat ky AI nao doc Markdown
</p>

<p align="center">
  <sub>Built with AI, for marketers who use AI.</sub>
</p>
