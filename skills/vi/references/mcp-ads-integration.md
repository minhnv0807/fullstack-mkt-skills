# MCP Ads Integration — Ket Noi AI Voi Nen Tang Quang Cao

> **Reference file** — Load khi dung `21-audit-ads-performance`, `03-danh-gia-hieu-suat`, `08-nghien-cuu-doi-thu`.
> Cap nhat: 2026-05-03. Review lai moi 3 thang vi ecosystem MCP thay doi nhanh.

---

## Tong Quan

MCP (Model Context Protocol) cho phep AI (Claude, ChatGPT, Gemini) ket noi truc tiep voi tai khoan quang cao — doc data, tao chien dich, toi uu — qua API chinh thuc cua tung nen tang.

```
AI Assistant (Claude Code / Claude Desktop)
    |
    MCP Protocol (stdio / HTTP)
    |
    MCP Server (chay local hoac remote)
    |
    Platform API (Meta Marketing API / Google Ads API / TikTok Business API)
    |
    Tai khoan quang cao cua ban
```

---

## 1. Meta / Facebook Ads — MCP Servers

### 1A. Meta Official MCP + CLI (Khuyen dung — CHINH THUC)

> Ra mat: 29/04/2026 (Open Beta). Day la MCP **CHINH THUC tu Meta** — "stamp of approval" cho AI ad management.
> Endpoint: `https://mcp.facebook.com/ads`

| Thong tin | Chi tiet |
|-----------|---------|
| **Endpoint** | `https://mcp.facebook.com/ads` |
| **CLI** | `@meta/ads-cli` (npm) |
| **Tools** | **29 tools** — 5 nhom (xem chi tiet ben duoi) |
| **Auth** | Meta Business OAuth — KHONG can Meta Developer App |
| **Permission** | 3 muc: `read-only` / `read-write` / `read-write-financial` |
| **Setup** | ~5 phut qua claude.ai/settings/integrations |
| **Read** | Campaigns, ad sets, ads, insights, catalogs, datasets, benchmarks |
| **Write** | Tao campaign/ad set/ad, cap nhat budget, quan ly catalog, activate entity |
| **Dac biet** | Industry benchmarks, anomaly detection, auction ranking, opportunity score |
| **Han che** | Chua co autonomous-agent, chua co multi-account auto-discovery, beta pricing |
| **Phu hop** | Moi user — setup nhanh nhat, khong can technical knowledge |

**29 Tools chinh thuc (5 nhom):**

```
CAMPAIGN MANAGEMENT (5 tools):
  ads_create_campaign          — Tao campaign voi objective, budget, special categories
  ads_create_ad_set            — Tao ad set voi targeting, placement, scheduling
  ads_create_ad                — Tao ad va gan creative
  ads_update_entity            — Cap nhat campaign/ad set/ad hien co
  ads_activate_entity          — Bat/Tat entity (pause/resume)

PRODUCT CATALOG (10 tools):
  ads_catalog_create           — Tao catalog moi
  ads_catalog_get_catalogs     — List tat ca catalogs
  ads_catalog_get_details      — Chi tiet 1 catalog
  ads_catalog_get_diagnostics  — Errors va warnings cua catalog
  ads_catalog_get_feed_rules   — Feed config rules (CSV, XML, API)
  ads_catalog_get_product_details      — Chi tiet 1 san pham
  ads_catalog_get_product_feed_details — Trang thai feed
  ads_catalog_get_product_set_products — San pham trong 1 set
  ads_catalog_get_product_sets         — List product sets
  ads_catalog_get_products             — List san pham (paginated)

ACCOUNTS & PAGES (3 tools):
  ads_get_ad_accounts          — List tai khoan quang cao
  ads_get_ad_entities          — List campaigns/ad sets/ads
  ads_get_pages_for_business   — List Facebook Pages ket noi

DATASETS & TRACKING (4 tools):
  ads_get_dataset_details      — Chi tiet dataset (pixel + CAPI)
  ads_get_dataset_quality      — Diem chat luong matching
  ads_get_dataset_stats        — Event stats (count, dedup)
  ads_get_errors               — Loi gan day cua dataset

INSIGHTS & BENCHMARKS (7 tools):          ← QUAN TRONG CHO SKILL 03, 21
  ads_insights_advertiser_context         — Data nganh va khu vuc
  ads_insights_anomaly_signal             — KPI bat thuong so voi baseline
  ads_insights_auction_ranking_benchmarks — So sanh CTR, CPM, quality voi dau gia
  ads_insights_industry_benchmark         — So sanh voi trung binh nganh
  ads_insights_performance_trend          — Xu huong metric theo thoi gian
  ads_get_opportunity_score               — Diem co hoi toi uu tu Meta
  ads_get_help_article                    — Bai huong dan lien quan
```

**Setup qua Claude.ai (Web — Nhanh nhat):**
1. Vao `claude.ai/settings/integrations`
2. Dan URL: `https://mcp.facebook.com/ads`
3. Claude tu lay tool manifest
4. Hoan thanh OAuth → Chon ad accounts + Pages → Chon permission tier
5. Test: "Show me my Meta ad accounts"

**Setup Claude Desktop:**
```json
{
  "mcpServers": {
    "meta-ads-official": {
      "url": "https://mcp.facebook.com/ads"
    }
  }
}
```

**Setup Claude Code (CLI):**
```bash
npm install -g @meta/ads-cli
meta auth login
# Auth qua Meta Business OAuth → agent tu detect 29 tools
```

**⚠️ Canh bao Write Operations:**
> MCP write co the tao chi phi THUC — "an ambiguous prompt or a model hallucination can generate real spend."
> Luon dung `read-only` permission truoc, chi cap `read-write` khi da quen.

---

### 1B. pipeboard-co/meta-ads-mcp (Remote MCP — Khuyen dung cho agency)

| Thong tin | Chi tiet |
|-----------|---------|
| **Repo** | github.com/pipeboard-co/meta-ads-mcp |
| **Tools** | 29 tools: account, campaign, ad set, ad, creative, insights, targeting |
| **Auth** | Pipeboard OAuth — hoac token truc tiep |
| **Setup** | Remote MCP URL: `https://mcp.pipeboard.co/meta-ads-mcp` |
| **Read** | Full insights voi breakdowns + attribution windows |
| **Write** | Tao campaign (ODAX only), ad set, ad, upload image, dynamic creative |
| **Dac biet** | Targeting research (interests, behaviors, demographics, geo), budget scheduling |
| **License** | Business Source License 1.1 (Apache 2.0 tu 01/2029) |

**Tools chinh:**
```
Account:     get_accounts, get_account_info, get_pages
Campaign:    create_campaign, get_campaigns, get_campaign_details
Ad Set:      create_ad_set, get_ad_sets, get_ad_set_details, update_ad_set
Ad:          create_ad, get_ads, get_ad_details, update_ad, get_ad_creative
Creative:    create_creative, update_creative, upload_images, get_images
Insights:    get_insights (breakdowns, attribution windows)
Targeting:   search_interests, search_behaviors, search_demographics, search_geo
Other:       budget_schedule, generic_search
```

**Setup Claude Desktop:**
```json
{
  "mcpServers": {
    "meta-ads": {
      "url": "https://mcp.pipeboard.co/meta-ads-mcp"
    }
  }
}
```

---

### 1C. brijr/meta-mcp (Self-hosted — Day du nhat cho dev)

| Thong tin | Chi tiet |
|-----------|---------|
| **Repo** | github.com/brijr/meta-mcp |
| **Tools** | 25 tools: analytics, campaign, ad set, ad, audience, creative, diagnostics |
| **Auth** | Meta access token (ads_read + ads_management) |
| **API** | Meta Marketing API v23.0 (configurable) |
| **Setup** | `npm install -g meta-ads-mcp` |
| **Dac biet** | Diagnostics (diagnose_campaign_readiness, check_account_setup), LAL audience, export CSV/JSON |

**Tools chinh:**
```
Analytics:   get_insights, compare_performance, export_insights
Campaign:    create_campaign, update_campaign, pause_campaign, resume_campaign
Ad Set:      create_ad_set, list_ad_sets
Ad:          create_ad, list_ads
Audience:    list_audiences, create_custom_audience, create_lookalike_audience, get_audience_info
Creative:    list_ad_creatives, create_ad_creative
Account:     health_check, get_ad_accounts, get_campaigns
Diagnostics: diagnose_campaign_readiness, check_account_setup
```

---

### 1D. oliverames/meta-mcp-server (200+ tools — Full Meta ecosystem)

| Thong tin | Chi tiet |
|-----------|---------|
| **Repo** | github.com/oliverames/meta-mcp-server |
| **Tools** | 200+ tools: Pages (52), Instagram (37), Ads Manager (62), Threads (22), Commerce (10), CAPI (2), Audiences (9) |
| **API** | Meta Graph API v21.0 + Threads API v1.0 |
| **Dac biet** | A/B testing, Advantage+ migration, pixel management, chart generation |
| **Phu hop** | Agency quan ly nhieu kenh Meta (Pages + IG + Ads + Threads) |

---

### 1E. facebook-ads-library-mcp (Chi NGHIEN CUU doi thu — Khong quan ly ads)

| Thong tin | Chi tiet |
|-----------|---------|
| **Repo** | github.com/RamsesAguirre777/facebook-ads-library-mcp |
| **Tools** | 15+ tools: search ads, competitor discovery, creative analysis, spend tracking |
| **Auth** | Facebook access token (ads_read) |
| **Dac biet** | AI-powered creative analysis, ML performance forecasting, market gap identification |
| **Phu hop** | Skill `08-nghien-cuu-doi-thu` — phan tich quang cao doi thu |

**⚠️ Luu y:** Day la MCP cho RESEARCH, khong phai management. Dung de xem quang cao doi thu dang chay, khong phai de tao/sua ads cua minh.

---

## 2. Google Ads — MCP Servers

### 2A. googleads/google-ads-mcp (Official — READ ONLY)

| Thong tin | Chi tiet |
|-----------|---------|
| **Repo** | github.com/googleads/google-ads-mcp |
| **Tools** | 3 tools: list_accessible_customers, search (GAQL), get_resource_metadata |
| **Auth** | OAuth 2.0 hoac Service Account |
| **Read** | Campaign metrics, budgets, status, resource metadata qua Google Ads Query Language |
| **Write** | KHONG — chi doc, khong sua/tao |
| **Phu hop** | Audit va bao cao — KHONG dung de quan ly chien dich |

**Setup:**
```json
{
  "mcpServers": {
    "google-ads-mcp": {
      "command": "pipx",
      "args": ["run", "--spec", "git+https://github.com/googleads/google-ads-mcp.git", "google-ads-mcp"],
      "env": {
        "GOOGLE_PROJECT_ID": "YOUR_PROJECT_ID",
        "GOOGLE_ADS_DEVELOPER_TOKEN": "YOUR_DEVELOPER_TOKEN"
      }
    }
  }
}
```

**Vi du GAQL query:**
```sql
SELECT campaign.name, metrics.impressions, metrics.clicks, metrics.cost_micros,
       metrics.conversions, metrics.cost_per_conversion
FROM campaign
WHERE segments.date DURING LAST_30_DAYS
ORDER BY metrics.cost_micros DESC
```

---

## 3. TikTok Ads — MCP Servers

### 3A. AdsMCP/tiktok-ads-mcp-server

| Thong tin | Chi tiet |
|-----------|---------|
| **Repo** | github.com/AdsMCP/tiktok-ads-mcp-server |
| **Auth** | TikTok Business API access token |
| **Read + Write** | Full lifecycle: list, get, create, pause, resume, update campaigns/ad groups/ads |
| **Dac biet** | Performance reports, Spark Ads, In-feed video/image/carousel |

### 3B. ysntony/tiktok-ads-mcp

| Thong tin | Chi tiet |
|-----------|---------|
| **Repo** | github.com/ysntony/tiktok-ads-mcp |
| **Dac biet** | AI-first design, pure MCP, TikTok Business API |

---

## 4. Cross-Platform — MCP Servers

### 4A. amekala/ads-mcp (Adspirer — Khuyen dung cho agency multi-platform)

| Thong tin | Chi tiet |
|-----------|---------|
| **Repo** | github.com/amekala/ads-mcp |
| **Tools** | 175+ tools: Google (75+), LinkedIn (45), Meta (36), TikTok (31) |
| **Auth** | OAuth 2.1 qua Adspirer |
| **Setup** | Remote MCP URL: `https://mcp.adspirer.com/mcp` |
| **Read** | Performance analysis, wasted spend, anomaly detection, creative fatigue, audience insights |
| **Write** | Campaign creation (Search, PMax, Display, Demand Gen, YouTube), budget optimization |
| **Dac biet** | Strategy-aware execution (STRATEGY.md persist across sessions), raw data mode, multi-account |
| **Phu hop** | Agency quan ly nhieu nen tang tu 1 interface |

### 4B. Flyweel (SaaS — Mien phi)

| Thong tin | Chi tiet |
|-----------|---------|
| **Website** | flyweel.co |
| **Tools** | 8 tools, 222 metrics, Google + Meta + TikTok |
| **Dac biet** | Free tier, Pipedrive CRM integration, unified cross-platform analytics |
| **Phu hop** | SME can overview nhanh, khong can quan ly chi tiet |

---

## 5. Mapping MCP → Skill System

### Bang anh xa: Skill nao dung MCP nao?

| Skill | Muc dich | MCP khuyen dung | Cach dung |
|-------|---------|----------------|-----------|
| **21-audit-ads-performance** | Audit Health Score 0-100 | Meta Official + Google Official + TikTok MCP | Pull data tu dong → chay 84 checkpoints |
| **03-danh-gia-hieu-suat** | Danh gia hieu suat | Meta Official / Pipeboard + Google Official | Pull insights → dien vao benchmark table |
| **08-nghien-cuu-doi-thu** | Phan tich doi thu | facebook-ads-library-mcp | Xem quang cao doi thu dang chay |
| **07-bao-cao-marketing** | Bao cao hang thang | Adspirer (cross-platform) hoac tung MCP rieng | Export data → tao bao cao |
| **10-tinh-kpi-nguoc** | Tinh KPI nguoc | Meta Official / Google Official | Lay data hien tai → so sanh voi target |
| **00-ke-hoach-mkt** | Ke hoach marketing | Khong truc tiep — dung data tu skill 03, 10 | Gian tiep qua output cua skill khac |
| **05-copy-quang-cao** | Viet copy | brijr/meta-mcp (create_ad_creative) | Tao creative truc tiep tu output copy |
| **02-brief-chien-dich** | Brief chien dich | pipeboard (create_campaign, create_ad_set) | Tao campaign structure tu brief |

### Workflow voi MCP

```
1. AUDIT (Skill 21)
   └─ MCP pull data → Health Score → Quality Gates check → Action Plan

2. DANH GIA (Skill 03)
   └─ MCP pull insights → Fill benchmark → Diagnostic tree → 5 Whys → 48h plan

3. NGHIEN CUU DOI THU (Skill 08)
   └─ Ads Library MCP → Xem creative doi thu → Phan tich strategy → Gap analysis

4. BAO CAO (Skill 07)
   └─ MCP export metrics → WoW/MoM analysis → Tong hop bao cao

5. LAUNCH CAMPAIGN (Skill 02 → 05 → MCP)
   └─ Brief → Copy → MCP create campaign + ad set + ad + creative
```

---

## 6. Khuyen Nghi Theo Quy Mo

### SME (Ngan sach ads < 30 trieu/thang)

```
Bat dau voi:
1. Meta Official MCP (mien phi, setup 5 phut)
2. Google Official MCP (mien phi, read-only)
3. facebook-ads-library-mcp (nghien cuu doi thu)

Tong chi phi: 0 VND
Thoi gian setup: 15–20 phut
```

### Agency nho (3–10 khach hang)

```
1. Pipeboard meta-ads-mcp (Remote MCP, multi-account)
2. Google Official MCP
3. TikTok Ads MCP
4. facebook-ads-library-mcp

Tong chi phi: Pipeboard co free tier
Thoi gian setup: 30–45 phut
```

### Agency lon (10+ khach hang, multi-platform)

```
1. Adspirer ads-mcp (175+ tools, 4 platforms, strategy-aware)
2. oliverames/meta-mcp-server (200+ tools, full Meta ecosystem)
3. facebook-ads-library-mcp

Tong chi phi: Adspirer co paid plan
Thoi gian setup: 1–2 gio
```

---

## 7. Bao Mat Va Luu Y

### Authentication best practices

- **KHONG BAO GIO** hardcode access token trong file config public
- Dung bien moi truong (environment variables) hoac 1Password CLI
- Meta token het han sau 60 ngay — can refresh
- Google dung OAuth 2.0 voi refresh token
- Review quyen truoc khi cap: chi cap `ads_read` neu chi can doc

### Rate Limits

| Platform | Limit | Luu y |
|----------|-------|-------|
| Meta Marketing API | Tiered (Standard → Development → Basic) | Qua nhieu request = bi throttle |
| Google Ads API | 15,000 requests/ngay (basic) | GAQL query phuc tap ton nhieu quota |
| TikTok Business API | 10 requests/giay | Can caching cho bao cao lon |

### Rui ro

- MCP write operations co the **thay doi thuc** tai khoan quang cao — can than khi dung create/update/pause
- Luon test tren tai khoan test truoc khi chay tren tai khoan production
- Community MCP servers (khong phai official) co the thay doi API bat ky luc nao — pin version
- Business Source License (Pipeboard) khong cho phep cung cap hosted service canh tranh

---

## 8. Cap Nhat 2026

| Thay doi | Thoi gian | Anh huong |
|---------|----------|----------|
| Meta Official MCP + CLI ra mat (Open Beta) | 29/04/2026 | 29 tools, endpoint `mcp.facebook.com/ads`, khong can Dev App |
| AdKit MCP service (Singapore) ra mat | 04/2026 | AI agents quan ly Google + Meta ads |
| Meta giam attribution windows cho mot so metrics | 12/01/2026 | Insights API tra ve it data hon |
| `use_unified_attribution_setting` bi bo | 10/06/2025 | API response theo Ads Manager settings |
| Google Ads MCP official (read-only) | 2026 | Chi audit, khong quan ly |
| Adspirer 175+ tools cross-platform | 2026 | Giai phap all-in-one cho agency |
| Pipeboard CLI ra mat | 2026 | `brew install pipeboard-co/tap/pipeboard` — 1 binary cho Meta+Google+TikTok |

---

## Quick Reference — Chon MCP Nhanh

```
Ban chi can DOC data Meta?
  → Meta Official MCP (setup 5 phut)

Ban can TAO + SUA campaign Meta?
  → Pipeboard (agency) hoac brijr/meta-mcp (dev)

Ban can NGHIEN CUU doi thu?
  → facebook-ads-library-mcp

Ban can DOC data Google Ads?
  → Google Official MCP (read-only)

Ban chay NHIEU nen tang (Meta + Google + TikTok)?
  → Adspirer ads-mcp (175+ tools)

Ban quan ly FULL Meta ecosystem (Pages + IG + Ads + Threads)?
  → oliverames/meta-mcp-server (200+ tools)
```
