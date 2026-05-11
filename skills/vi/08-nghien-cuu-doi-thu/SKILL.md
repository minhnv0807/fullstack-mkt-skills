---
name: 08-nghien-cuu-doi-thu
description: Phan tich doi thu canh tranh 3 tang (truc tiep, gian tiep, thu cap) — dinh vi, SWOT, content benchmark, tim khoang trong thi truong
metadata:
  version: 2.2.0
  category: strategy
triggers:
  - "nghien cuu doi thu"
  - "phan tich canh tranh"
  - "doi thu dang lam gi"
  - "competitive analysis"
  - "phan tich doi thu"
output: File .md gom ban do dinh vi, SWOT, content benchmark, khoang trong thi truong, va de xuat hanh dong
related:
  - 09-insight-khach-hang
  - 00-ke-hoach-mkt
  - 02-brief-chien-dich
  - 05-copy-quang-cao
  - references/mcp-ads-integration
---

# Nghien Cuu Doi Thu Canh Tranh

## Thu thap thong tin

Hoi user toi da 4 cau sau truoc khi bat dau:

1. **San pham / dich vu cua ban la gi?** (Nganh, phan khuc gia, doi tuong chinh)
2. **Ke ten 2–5 doi thu ma ban biet** (ten thuong hieu, link fanpage/TikTok/website neu co)
3. **Ban dang lo nhat dieu gi ve doi thu?** (Ho ban re hon? Content hay hon? Ads manh hon? Chiem thi phan?)
4. **Muc tieu cua ban sau khi co bao cao nay?** (Dinh vi lai? Lam content tot hon? Tim khoang trong? Chay ads hieu qua hon?)

### Auto-research qua MCP (neu co ket noi)

> Xem huong dan setup: `skills/references/mcp-ads-integration.md`
> **Meta Official MCP:** `https://mcp.facebook.com/ads` — setup 5 phut qua `claude.ai/settings/integrations`

#### A. Facebook Ads Library MCP (Nghien cuu quang cao doi thu)

**Facebook Ads Library MCP** (`facebook-ads-library-mcp`) cho phep tu dong:

| Chuc nang | Mo ta |
|-----------|-------|
| **Search quang cao doi thu** | Tim tat ca ads dang chay cua 1 brand theo ten page |
| **Phan tich creative** | AI phan tich hook, format, tone, CTA cua tung ad |
| **Competitor discovery** | Tu dong tim doi thu tuong tu trong nganh |
| **Spend estimation** | Uoc tinh ngan sach quang cao cua doi thu |
| **Trend monitoring** | Theo doi thay doi chien dich theo thoi gian thuc |
| **Market gap** | So sanh nhieu brand → tim khoang trong |

**Cach dung:**
1. Setup `facebook-ads-library-mcp` (can Facebook access token voi `ads_read`)
2. Nhap ten page doi thu → MCP tra ve danh sach ads dang active
3. Phan tich: format nao nhieu nhat? Hook gi? CTA gi? Chay bao lau?
4. So sanh voi ads cua minh → tim gap va co hoi

> **Luu y:** Ads Library MCP chi cho phep XEM quang cao cong khai cua doi thu — khong truy cap data noi bo (spend chinh xac, targeting, conversion). Spend chi la uoc tinh.

#### B. Meta Official MCP (Benchmarks va boi canh nganh)

Neu da ket noi Meta Official MCP (`mcp.facebook.com/ads`), co the bo sung nghien cuu doi thu bang data chinh thuc:

| Tool | Dung cho |
|------|---------|
| `ads_insights_advertiser_context` | Data boi canh nganh va khu vuc — biet "san choi" rong the nao |
| `ads_insights_industry_benchmark` | CPM, CTR, CPC trung binh nganh — benchmark de so sanh |
| `ads_insights_auction_ranking_benchmarks` | Quality ranking, engagement ranking cua MINH vs doi thu trong dau gia |

**Ket hop 2 nguon:**
```
Ads Library MCP → Xem creative + strategy doi thu (QUAN SAT)
Meta Official MCP → So sanh metrics cua minh vs nganh (DO LUONG)
→ Gap analysis chinh xac hon: biet doi thu lam gi + biet minh dang o dau so voi trung binh
```

---

## Mo hinh doi thu 3 tang

Phan loai doi thu thanh 3 nhom — khong chi nhin doi thu truc tiep:

| Tang | Dinh nghia | Tieu chi | Vi du (Spa trung cap) |
|------|-----------|----------|----------------------|
| **Truc tiep** | Cung phan khuc, cung loai hinh, cung doi tuong | Cung gia, cung dich vu, cung khu vuc | Spa B cung pho, gia tuong tu |
| **Gian tiep tiem nang** | Khac loai hinh nhung thay the duoc | Khach hang co the chon ho thay vi ban | Tham my vien, skincare tai nha, may lam dep gia dinh |
| **Thu cap** | Cung loai hinh nhung khac phan khuc gia | Canh tranh khi khach thay doi ngan sach | Spa cao cap (khach ha budget), spa binh dan (khach nang cap) |

### Nguyen tac phan loai

- Doi thu truc tiep: chon 3–5 doi thu chinh
- Gian tiep tiem nang: chon 2–3 loai hinh thay the
- Thu cap: chon 1–2 doi thu o phan khuc gia ke ben

---

## Cau truc phan tich moi doi thu

Voi moi doi thu, phan tich 8 khia canh:

### 1. Dinh vi thuong hieu

| Yeu to | Noi dung |
|--------|---------|
| Thong diep chinh | [Slogan, tagline, loi hua thuong hieu] |
| Phong cach hinh anh | [Tone mau, kieu anh, chat video] |
| Phan khuc gia | [Thap / Trung / Cao / Cao cap] |
| Doi tuong muc tieu | [Gioi tinh, tuoi, thu nhap, so thich] |
| USP tuyên bo | [Ho noi ho khac biet gi?] |

### 2. Diem manh va diem yeu

| Diem manh | Diem yeu |
|-----------|----------|
| [Liet ke 3–5 diem] | [Liet ke 3–5 diem] |

### 3. Chien luoc noi dung

| Chi so | Gia tri |
|--------|---------|
| Kenh chinh | [Facebook / TikTok / Instagram / YouTube / Zalo] |
| Tan suat dang | [X bai/tuan] |
| Dinh dang uu tien | [Video ngan / Carousel / Bai viet dai / Reels] |
| Tone of voice | [Chuyen nghiep / Than thien / Hai huoc / Giao duc] |
| Goc do noi dung | [TOFU X% / MOFU X% / BOFU X%] |
| Noi dung hieu qua nhat | [Top 3 bai/video cao tuong tac nhat] |

### 4. Kenh va platform

| Kenh | Co / Khong | Follower / Like | Danh gia hoat dong |
|------|-----------|----------------|-------------------|
| Facebook Page | | | |
| TikTok | | | |
| Instagram | | | |
| YouTube | | | |
| Zalo OA | | | |
| Website | | | |
| Email | | | |

### 5. Uoc tinh chi phi quang cao

Phuong phap uoc tinh (khong can chinh xac tuyet doi):

| Dau hieu | Cach doc |
|----------|---------|
| So bai sponsored/thang | Dem bai co nhan "Sponsored" trong Facebook Ad Library |
| Luong video ads tren TikTok | Dung TikTok Creative Center → Top Ads → loc theo nganh |
| Traffic website | Dung SimilarWeb (free tier) hoac Semrush |
| So luong KOL/UGC | Dem so video co ten thuong hieu tren TikTok |

| Chi so uoc tinh | Gia tri |
|-----------------|---------|
| So ads dang chay (Facebook Ad Library) | [X ads] |
| Ngan sach ads uoc tinh/thang | [X trieu — dua tren so ads x CPM trung binh] |
| Co UGC/KOL khong? | [Co/Khong — neu co, uoc tinh X nguoi] |

### 6. Doi tuong trung lap (Audience Overlap)

| Yeu to | Muc do trung lap |
|--------|-----------------|
| Dia ly | [Cao / Trung binh / Thap] |
| Do tuoi | [Cao / Trung binh / Thap] |
| Thu nhap | [Cao / Trung binh / Thap] |
| So thich | [Cao / Trung binh / Thap] |
| Kenh su dung | [Cao / Trung binh / Thap] |

### 7. Gia va mo hinh kinh doanh

| San pham/dich vu | Gia doi thu | Gia cua ban | Chenh lech |
|-----------------|------------|-------------|-----------|
| [SP 1] | | | |
| [SP 2] | | | |
| [SP 3] | | | |

### 8. Danh gia moi de doa

| Doi thu | Muc do de doa | Ly do |
|---------|--------------|-------|
| [Ten] | Cao / Trung binh / Thap | [1 cau ngan] |

---

## SWOT — Thuong hieu cua ban vs Doi thu

### Bang SWOT tong hop

| | **Tich cuc** | **Tieu cuc** |
|---|---|---|
| **Ben trong** | **STRENGTHS** — Diem manh cua ban ma doi thu khong co hoac yeu hon | **WEAKNESSES** — Diem yeu cua ban ma doi thu dang khai thac |
| **Ben ngoai** | **OPPORTUNITIES** — Khoang trong thi truong doi thu chua chiem | **THREATS** — Xu huong/hanh dong cua doi thu de doa ban |

### Chi tiet

**Strengths (Diem manh)**
| STT | Diem manh | Doi thu nao yeu o diem nay? | Cach phat huy |
|-----|----------|---------------------------|--------------|
| 1 | | | |
| 2 | | | |
| 3 | | | |

**Weaknesses (Diem yeu)**
| STT | Diem yeu | Doi thu nao manh o diem nay? | Cach khac phuc |
|-----|---------|---------------------------|---------------|
| 1 | | | |
| 2 | | | |
| 3 | | | |

**Opportunities (Co hoi)**
| STT | Co hoi | Tai sao doi thu chua lam? | Hanh dong de xuat |
|-----|--------|--------------------------|-------------------|
| 1 | | | |
| 2 | | | |
| 3 | | | |

**Threats (Moi de doa)**
| STT | De doa | Tu doi thu nao? | Cach phong thu |
|-----|--------|-----------------|---------------|
| 1 | | | |
| 2 | | | |
| 3 | | | |

---

## Ban do dinh vi (Positioning Map)

Ma tran 2x2 — chon 2 truc phu hop voi nganh:

### Truc mac dinh: Gia x Chat luong cam nhan

```
        CHAT LUONG CAO
             |
             |
  Doi thu C  |  [BAN]
  (gia re,   |  (gia vua,
   chat tot) |   chat tot)
             |
------- THAP -------- CAO ---- GIA
             |
  Doi thu A  |  Doi thu B
  (gia re,   |  (gia cao,
   chat thap)|   chat thap)
             |
        CHAT LUONG THAP
```

### Truc thay the (tuy nganh)

| Truc X (ngang) | Truc Y (doc) | Phu hop voi nganh |
|---------------|-------------|-------------------|
| Gia | Chat luong cam nhan | Spa, F&B, thoi trang |
| Truyen thong vs Hien dai | Dai chung vs Niche | Giao duc, cong nghe |
| Tien loi vs Trai nghiem | Binh dan vs Cao cap | F&B, ban le |
| Online vs Offline | Tu phuc vu vs Full service | Dich vu, SaaS |

**Huong dan doc ban do:**
- Goc ban o = vung canh tranh khoc liet, can tranh
- Goc trong = khoang trong co the chiem
- Goc dong = co nhieu doi thu, can yeu to khac biet manh

---

## Tim khoang trong thi truong (Market Gap)

### Framework 5 loai khoang trong

| Loai khoang trong | Cau hoi kiem tra | Phat hien |
|-------------------|-----------------|-----------|
| **Khoang trong san pham** | Co nhu cau nao khach dang tu giai quyet (DIY) ma chua ai phuc vu? | |
| **Khoang trong gia** | Co phan khuc gia nao chua co ai chiem? (giua binh dan va cao cap) | |
| **Khoang trong kenh** | Co kenh nao doi thu bo ngo? (Zalo? Email? TikTok Shop? SEO?) | |
| **Khoang trong noi dung** | Co goc do noi dung nao chua ai lam? (behind scenes? giao duc? data?) | |
| **Khoang trong trai nghiem** | Co buoc nao trong hanh trinh khach hang chua ai lam tot? | |

### Danh gia khoang trong

| Khoang trong | Muc do hap dan (1–5) | Kha thi (1–5) | Uu tien |
|-------------|---------------------|---------------|---------|
| [Gap 1] | | | Cao / Trung binh / Thap |
| [Gap 2] | | | |
| [Gap 3] | | | |

---

## Content Benchmark — Noi dung hieu qua nhat cua doi thu

### Phan tich top-performing content

Voi moi doi thu, chon 5 bai/video co tuong tac cao nhat trong 30 ngay gan nhat:

| STT | Doi thu | Dinh dang | Goc do | View/Reach | Engagement | Tai sao hieu qua? |
|-----|---------|----------|--------|-----------|------------|-------------------|
| 1 | | | | | | |
| 2 | | | | | | |
| 3 | | | | | | |
| 4 | | | | | | |
| 5 | | | | | | |

### Rut ra pattern

| Pattern | Mo ta | Ap dung cho ban |
|---------|-------|----------------|
| Hook pho bien | [Kieu hook doi thu hay dung] | [Ap dung / Khong ap dung — ly do] |
| Dinh dang manh | [Video/Carousel/Text nao hieu qua?] | |
| Thoi gian dang | [Gio nao, ngay nao?] | |
| CTA hay dung | [Loai CTA nao?] | |
| Yeu to viral | [Diem chung cua content hieu qua?] | |

---

## Hoc gi vs Khong copy gi

### NEN hoc tu doi thu

| Bai hoc | Tu doi thu nao | Ap dung the nao |
|---------|---------------|----------------|
| Format noi dung hieu qua | | [Mo ta cach adapt] |
| Kenh dang tot | | [Mo ta cach trien khai] |
| Cach xu ly khach hang | | [Mo ta cach cai tien] |
| Chien luoc gia | | [Mo ta cach dieu chinh] |

### KHONG NEN copy

| Dieu khong nen copy | Ly do | Lam gi thay the |
|--------------------|-------|----------------|
| Copy y nguyen noi dung | Mat ban sac, bi so sanh bat loi | Lay y tuong roi adapt theo brand voice cua ban |
| Chay theo gia thap | Cuoc dua ve day, khong ben vung | Canh tranh bang gia tri, khong bang gia |
| Bat chuoc dinh vi | Tro thanh "ban sao re hon" | Tim goc doc, dinh vi khac biet |
| Theo trend ho da lam | Di sau, mat hieu qua | Tim trend moi hoac goc do moi cho trend cu |

---

## Danh gia competitive moat (Hao bao ve)

| Loai moat | Doi thu co? | Ban co? | Hanh dong |
|-----------|-----------|--------|----------|
| **Brand recognition** — Khach nho den ho dau tien | | | |
| **Network effect** — Cang nhieu khach, cang hap dan | | | |
| **Switching cost** — Khach kho chuyen di | | | |
| **Data advantage** — Ho co du lieu khach hang lon | | | |
| **Content library** — Kho noi dung lon, SEO manh | | | |
| **Community** — Cong dong trung thanh | | | |
| **Distribution** — He thong phan phoi/kenh manh | | | |

---

## Bang hanh dong

### De xuat uu tien

| STT | Hanh dong | Dua tren phat hien | Muc do khan cap | Timeline |
|-----|----------|--------------------|-----------------|---------| 
| 1 | | | Cao / Trung binh | Tuan 1–2 |
| 2 | | | | Tuan 2–4 |
| 3 | | | | Thang 2 |
| 4 | | | | Thang 3 |
| 5 | | | | Dai han |

---

## Cross-reference

- Can hieu khach hang sau hon? → Dung `09-insight-khach-hang`
- Muon dinh vi lai va viet brief? → Dung `02-brief-chien-dich`
- Can viet copy khac biet doi thu? → Dung `05-copy-quang-cao`
- Can tinh ngan sach canh tranh? → Dung `10-tinh-kpi-nguoc`
- Can xay ke hoach MKT tong the? → Dung `00-ke-hoach-mkt`

---

## Checklist chat luong

Truoc khi giao bao cao, kiem tra:

- [ ] Da phan loai doi thu theo 3 tang (truc tiep, gian tiep, thu cap)
- [ ] Moi doi thu co du 8 khia canh phan tich
- [ ] SWOT co cu the, khong chung chung — moi diem co doi thu cu the di kem
- [ ] Ban do dinh vi co truc phu hop voi nganh
- [ ] Da tim it nhat 3 khoang trong thi truong
- [ ] Content benchmark co du lieu cu the (link, so lieu), khong phai nhan dinh suong
- [ ] Phan "Hoc gi vs Khong copy gi" co hanh dong cu the
- [ ] Competitive moat duoc danh gia ca doi thu va ban
- [ ] Bang hanh dong co timeline va muc do khan cap
- [ ] Khong co nhan dinh thieu co so — moi ket luan phai co du lieu hoac quan sat cu the
