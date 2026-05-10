# FAQ & Troubleshooting — Cau Hoi Thuong Gap

---

## Cau hoi chung

### Q: Toi chua biet gi ve marketing, co dung duoc khong?

**A:** Co. He thong nay thiet ke cho nguoi DUNG marketing (chu doanh nghiep, nhan vien MKT), khong phai giao trinh hoc marketing. Ban chi can:
1. Biet san pham/dich vu cua minh
2. Co tai khoan ads (neu can chay quang cao)
3. Biet dung AI (Claude, ChatGPT)

Skill se huong dan ban hoi gi, lam gi, theo thu tu nao.

### Q: Toi dung ChatGPT/Gemini, khong dung Claude Code. Co duoc khong?

**A:** Duoc. Moi file SKILL.md la 1 prompt doc lap. Copy noi dung paste vao Custom Instructions hoac system prompt. Tuy nhien:
- **Claude Code:** Full features (auto-trigger, skill chain, workflow)
- **ChatGPT/Gemini:** Manual trigger (ban phai paste skill vao)
- **Cursor/Windsurf:** Paste vao `.cursorrules`

### Q: Skills nay chi cho thi truong Viet Nam?

**A:** Dung. Benchmarks, kenh (Zalo, Shopee, TikTok Shop), tam ly khach hang, compliance — tat ca toi uu cho VN 2025-2026. Neu ban lam marketing cho thi truong khac, fork repo va doi:
- Benchmarks theo thi truong moi
- Kenh phan phoi (bo Zalo, them WhatsApp)
- Ngon ngu output

Cau truc va framework (AIDA, PAS, Quality Gates) la pho quat — dung duoc moi noi.

### Q: Co bao nhieu skill?

**A:** 22 skills (0-21) + 1 foundation skill (product-marketing-context) + 3 reference files + 4 workflows. Xem ban do day du tai `docs/skill-map.md`.

### Q: Skill nao nen chay dau tien?

**A:** `product-marketing-context` — foundation skill. Chay 1 lan, moi skill sau doc file nay tu dong. Tiet kiem ~70% thoi gian moi cuoc hoi thoai.

```
> Set up product marketing context for [ten san pham]
```

---

## Cau hoi ve workflow

### Q: Toi chi muon viet copy quang cao, khong can ca workflow

**A:** Hoan toan duoc. Chay truc tiep:
```
> Viet 6 bien the copy quang cao cho [san pham], chay tren Meta Ads, muc tieu tin nhan
```
Workflow chi can khi lam nhieu viec lien tuc (launch, bao cao thang).

### Q: Client-onboard va campaign-launch khac gi?

**A:**
- **client-onboard:** BAT DAU tu brief khach hang (skill 20) — thu thap thong tin tu khach → plan. Dung cho agency.
- **campaign-launch:** BAT DAU tu nghien cuu doi thu (skill 08) — da co thong tin → thang den san xuat. Dung khi tu lam.

### Q: Monthly-cycle bao lau?

**A:** 3-5 ngay lam viec, trai qua cuoi thang cu va dau thang moi:
- Ngay 28: Thu thap data
- Ngay 29: Danh gia hieu suat
- Ngay 30: Bao cao
- Ngay 1-2: KPI moi
- Ngay 2-3: Lich noi dung moi

---

## Cau hoi ve MCP

### Q: MCP la gi? Co bat buoc khong?

**A:** MCP (Model Context Protocol) cho phep AI ket noi truc tiep voi tai khoan ads de pull data tu dong. **KHONG bat buoc** — tat ca skill van dung duoc bang cach paste so lieu thu cong. MCP chi lam nhanh hon.

### Q: Setup MCP co mat tien khong?

**A:** Hau het MCP servers mien phi:
- Meta Official MCP: Mien phi
- Google Official MCP: Mien phi
- facebook-ads-library-mcp: Mien phi
- Pipeboard: Free tier
- Adspirer: Co paid plan cho agency lon

Xem chi tiet: `docs/mcp-setup-guide.md`

### Q: MCP co an toan khong? AI co the sua ads cua toi khong?

**A:** 
- **Meta Official MCP:** Co kha nang ghi (tao campaign, doi budget) — nhung AI luon HOI TRUOC khi thay doi.
- **Google Official MCP:** Chi doc (read-only) — khong sua duoc gi.
- Luon review de xuat cua AI truoc khi chap nhan thay doi tren tai khoan that.

---

## Cau hoi ve output

### Q: Output dai qua, toi khong doc het

**A:** Moi output co cau truc:
1. **Bang tong ket** o cuoi — doc 2 phut biet ket qua
2. **Top 3 uu tien** — 3 viec can lam NGAY
3. **Chi tiet** — doc khi can di sau

Goi y: Doc bang tong ket + Top 3 uu tien truoc. Chi doc chi tiet phan nao lien quan.

### Q: So lieu AI dua ra co chinh xac khong?

**A:** AI dung benchmarks VN 2025-2026 de tinh. So lieu la **uoc tinh dua tren trung binh nganh**, khong phai cam ket. Luon:
- So sanh voi data thuc te cua ban
- Dieu chinh benchmark theo mua (Tet, 11.11 se chenh)
- Dung lam tham khao, khong phai su that tuyet doi

### Q: Output file luu o dau?

**A:** AI tao file `.md` theo format: `[ten-skill]-[ten-san-pham]-[YYYYMMDD].md`

Vi du: `ke-hoach-mkt-spa-luna-20260501.md`

Luu vao thu muc hien tai hoac thu muc ban chi dinh.

---

## Troubleshooting

### Loi: "Skill khong tu dong kich hoat"

**Nguyen nhan:** Skill chua duoc cai dung path.

**Fix:**
```bash
# Kiem tra path
ls ~/.claude/skills/marketing/

# Neu trong → cai lai
cd fullstack-mkt-skills
./install.sh --global    # macOS/Linux
.\install.ps1 -Global    # Windows

# Restart Claude Code
```

### Loi: "Output qua chung chung, khong cu the"

**Nguyen nhan:** Chua co product-marketing-context.

**Fix:**
```
> Set up product marketing context for [ten san pham cua ban]
```
Tra loi du 12 cau hoi → AI se viet cu the hon tu dong.

### Loi: "Benchmark khong khop voi nganh cua toi"

**Nguyen nhan:** Benchmark la trung binh chung. Mot so nganh chenh nhieu (BDS vs F&B).

**Fix:**
- Xem bang "Benchmark theo nganh" trong skill 03 — co benchmark rieng
- Neu nganh cua ban khong co → dung data thuc te cua ban lam baseline
- Cap nhat `references/benchmarks-vietnam.md` voi data nganh cua ban

### Loi: "Skill chain bi dut — skill sau khong doc output skill truoc"

**Nguyen nhan:** AI khong tu dong link output. Can chi ro.

**Fix:**
```
> Day la output tu skill 08 (nghien cuu doi thu):
> [paste hoac tro den file]
> Bay gio chay skill 09 dua tren ket qua tren.
```

Hoac dung workflow (chay tu dong):
```
> Chay campaign-launch workflow cho [san pham]
```

### Loi: "MCP khong ket noi"

Xem troubleshooting chi tiet tai `docs/mcp-setup-guide.md` section "Loi thuong gap".

Quick check:
1. File config dung duong dan?
2. Token con hieu luc? (Meta: 60 ngay)
3. Da restart Claude Desktop?
4. Internet co on dinh?

---

## Tips nang cao

### Tip 1: Dung skill ket hop voi tinh nang AI khac

```
> [Upload file CSV data Meta Ads]
> Phan tich data nay bang skill 03-danh-gia-hieu-suat
```

### Tip 2: So sanh output 2 lan chay

Chay cung skill 2 lan voi goc do khac → so sanh → chon tot nhat:
```
Lan 1: > Viet copy quang cao goc Pain (noi dau)
Lan 2: > Viet copy quang cao goc Aspiration (khat vong)
→ So sanh → Chon hook manh nhat tu ca 2
```

### Tip 3: Cap nhat product-marketing-context moi quy

```
> Cap nhat product-marketing-context — them insight moi tu Q1:
> - Khach hang moi phan khuc 25-30 tuoi tang 40%
> - Doi thu X vua launch dich vu tuong tu
> - Review Shopee trung binh 4.6/5
```

### Tip 4: Tao shortcut cho skill thuong dung

Luu cac prompt hay dung nhat de paste nhanh:
```
# Copy nhanh
"Viet 6 copy Meta Ads cho [SP], TOFU cold audience nu 25-35, muc tieu CPMess <30K"

# Report nhanh  
"Thang nay: Spend 15M, 450 mess, CPMess 33K, ROAS 3.2x. Danh gia va de xuat."

# Audit nhanh
"Audit tai khoan Meta Ads. Health score cho 84 checkpoints."
```

---

## Personal Brand + AI Avatar (v2.4.0)

### Q1: Cum personal brand khac gi marketing SP cu?

A: Cum cu (skills 00-21) la marketing thuong hieu DOANH NGHIEP — ban hang san pham/dich vu. Cum moi (skills 22-28) la xay thuong hieu CA NHAN — founder/coach/creator build authority de monetize. Foundation file rieng (`.agents/personal-brand-context.md` thay vi `product-marketing-context.md`).

### Q2: Skills 04, 05 hoat dong the nao trong Personal Brand Mode?

A: Tu dong chuyen mode khi doc context file:
- Co `.agents/product-marketing-context.md` only → Mode A (mac dinh, ban hang)
- Co `.agents/personal-brand-context.md` only → Mode B (authority/trust)
- Co ca 2 → skill HOI 1 cau de chon
- Khong co file nao → skill goi y tao context file phu hop

### Q3: Voice clone co an toan cho privacy khong?

A: Co va khong:
- Co: neu ban giu key + chi clone giong CHINH MINH + co consent form
- Khong: neu clone giong nguoi khac, hoac key bi leak, hoac dung cho deepfake
- Recommendation: dung tool co privacy-by-design (ElevenLabs Pro+, HeyGen Enterprise) thay vi free tier shared

### Q4: Disclosure AI o VN bat buoc khi nao?

A: Theo Nghi dinh 147/2024/ND-CP — BAT BUOC khi:
1. Quang cao thuong mai (paid ads, sponsored, affiliate co tra tien)
2. Content lien quan y te / tai chinh / phap luat
3. Impersonate hoac tao impression la nguoi that nguoi noi
NEN (khong bat buoc) cho content thuong khong tra tien.
KHONG can cho test noi bo / draft / private group.
Reference: `skills/references/ai-video-disclosure-vn.md`

### Q5: ROI cua personal brand sau 30 ngay — ky vong gi?

A: Realistic 30-day expectations:
- Followers: 500-1500 (depends on niche + posting frequency)
- Engagement: 3-5% rate
- First offer: 1-3 sales (Founder/Coach), 0-1 brand deal (Creator)
- Trust signal: 5-10 inbound DMs
KHONG nen ky vong: viral, 10K followers, 6-figure revenue. Personal brand la marathon, khong phai sprint.

### Q6: Time commitment thuc te — 1h/tuan du khong?

A: Khong, 1h/tuan khong du. Realistic minimum:
- Phase Foundation (tuan 1-2): 2-3 gio/ngay
- Steady state: 5-10 gio/tuan (3-4 posts + engagement)
- Power user: 10-20 gio/tuan (multi-platform + AI avatar batch)
Neu ban co < 5 gio/tuan, focus 1 platform + 1-2 posts/tuan, khong scale.

### Q7: Founder vs Creator strategy — overlap khong?

A: Co overlap, nhung primary la khac:
- Founder: build to bring B2B leads to COMPANY (output: deal pipeline)
- Creator: build to monetize CONTENT directly (output: ads revenue + brand deals)
- Overlap: ca 2 deu can content, story arc, audience growth
- Recommendation: chon 1 PRIMARY identity (founder/creator/coach), secondary la output cua primary

---

## Global Cluster (v2.5.0)

### Q1: How is global cluster different from VN cluster?

A: VN cluster (`skills/`) for Vietnam market with VN benchmarks/platforms/regulations (Zalo, Shopee VN, Nghi dinh 147/2024). Global cluster (`skills-global/`) for international markets with USD/EUR currencies, US/EU/SEA/LATAM regions, GDPR/FTC compliance. Both clusters share the same skill structure but differ in content, references, and compliance rules.

### Q2: How do agents auto-detect which cluster to use?

A: They read `.agents/` directory:
- `product-marketing-context.md` → VN mode (skills/)
- `product-marketing-context-global.md` → Global mode (skills-global/)
- Both files → ask user to choose
- None → suggest creating foundation file

This is the new Universal Mode introduced in v2.5.0 — same 5 agents work for both clusters.

### Q3: Can I use both VN and Global clusters together?

A: Yes — useful for businesses operating in both markets (e.g., a Vietnamese SaaS expanding to SEA/US). Agents will ask which cluster when both `.agents/` context files exist. You can also run skill-by-skill from either cluster manually.

### Q4: Why did skill 22 use 4 region variants in global instead of 3 audience variants like VN?

A: Persona (founder/coach/creator) is universal globally — same archetype works in US/EU/SEA/LATAM. But currency, platforms, and regulations differ massively per region (e.g., GDPR vs CCPA, USD vs EUR, Discord vs Telegram). Region variants are higher-impact than audience variants for the global cluster.

### Q5: What is special about skill 29 dropshipping-mastery-global?

A: It is the FLAGSHIP skill of v2.5.0 — comprehensive 12-section dropshipping pipeline (product research → supplier sourcing → Shopify setup → ad creative → scaling). Dropshipping is huge in US (~$128B market 2025). Comes with a 30-day workflow (`dropshipping-launch-global`) and reference file `dropshipping-tools-global.md` covering Shopify/Spocket/AutoDS/CJ Dropshipping.

### Q6: Why no APAC region in v2.5.0?

A: YAGNI principle — start with 4 regions (US/EU/SEA/LATAM), validate market demand, then add APAC in v2.6.0 if confirmed (criteria: 5+ APAC issues OR 1000 stars). Detailed rationale in `docs/apac-roadmap.md`. SEA variant covers Singapore/Indonesia/Thailand/Vietnam/Philippines/Malaysia, which is the largest APAC sub-region.

### Q7: Are global skills bilingual?

A: Skills themselves are International English. Release notes are bilingual VN+EN (see `docs/release-notes/`). Project README is bilingual (`README.md` + `README.vi.md`). This keeps skills technically simple while making documentation accessible to VN users adopting global skills.

### Q8: How do I migrate from v2.4.0 to v2.5.0?

A: No migration needed. v2.5.0 is non-breaking:
- VN cluster (`skills/`) is unchanged
- Global cluster (`skills-global/`) is OPT-IN — create `.agents/product-marketing-context-global.md` to activate
- No existing skills modified, no APIs changed

Just `git pull` and start using global skills when you need them.

### Q9: Which region should I use if I sell to multiple regions?

A: Pick the largest market first (typically US for most products — biggest English-speaking, highest spend power). Add other regions over time. Use `docs/global-region-guide.md` for detailed market size, compliance, and benchmark comparison per region. Recommended order for most products: US → EU → SEA → LATAM.

### Q10: What about Vietnam market — still supported?

A: Yes! VN cluster is unchanged and continues to be the recommended choice for Vietnam-specific marketing. v2.5.0 adds Global as a SECOND option, not a replacement. VN cluster will continue to receive updates (e.g., new VN regulations, platform changes) independent of global cluster.
