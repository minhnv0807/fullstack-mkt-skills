# Workflow: Chu Ky Thang

> Quy trinh lap lai moi thang — tu phan tich ket qua den lap ke hoach thang moi.

---

## Tong quan

```
Thoi gian: 3–5 ngay lam viec (cuoi thang cu + dau thang moi)
Skills su dung: 5 skill
Output: Bao cao thang + Ke hoach thang moi
Tan suat: Moi thang 1 lan
```

---

## Luong chay

```
Ngay 28–30 thang cu                    Ngay 1–3 thang moi
┌──────────┐   ┌──────────┐          ┌──────────┐   ┌──────────┐   ┌──────────┐
│ 13       │   │ 03       │          │ 07       │   │ 10       │   │ 01       │
│ Phan     │──▶│ Danh gia │    ──▶   │ Bao cao  │──▶│ Tinh KPI │──▶│ Lich noi │
│ tich du  │   │ hieu     │          │ marketing│   │ nguoc    │   │ dung     │
│ lieu     │   │ suat     │          │ thang    │   │ thang    │   │ thang    │
│          │   │          │          │          │   │ moi      │   │ moi      │
└──────────┘   └──────────┘          └──────────┘   └──────────┘   └──────────┘
  Ngay 28        Ngay 29                Ngay 30       Ngay 1-2       Ngay 2-3
```

---

## UML Sequence Diagram

```
┌──────┐        ┌──────────┐        ┌──────────┐        ┌──────────┐
│ MKT  │        │ Content  │        │    AI     │        │Leadership│
│Owner │        │  Lead    │        │(Skill hệ)│        │          │
└──┬───┘        └────┬─────┘        └────┬──────┘        └────┬─────┘
   │                  │                   │                    │
   │  Thu thap data   │                   │                    │
   │  (Ngay 28)       │                   │                    │
   │──────┐           │                   │                    │
   │      │ Export Meta, TikTok, GA4      │                    │
   │◀─────┘           │                   │                    │
   │                  │                   │                    │
   │  13: Phan tich   │                   │                    │
   │  du lieu         │                   │                    │
   │─────────────────────────────────────▶│                    │
   │  Insights co cau truc               │                    │
   │◀─────────────────────────────────────│                    │
   │                  │                   │                    │
   │  03: Danh gia    │                   │                    │
   │  hieu suat       │                   │                    │
   │─────────────────────────────────────▶│                    │
   │  Diagnostic + Root cause            │                    │
   │◀─────────────────────────────────────│                    │
   │                  │                   │                    │
   │  07: Bao cao     │                   │                    │
   │  marketing thang │                   │                    │
   │─────────────────────────────────────▶│                    │
   │  Bao cao 5 phan  │                   │                    │
   │◀─────────────────────────────────────│                    │
   │                  │                   │                    │
   │  Trinh bao cao   │                   │                    │
   │─────────────────────────────────────────────────────────▶│
   │  Feedback + Duyet│                   │                    │
   │◀─────────────────────────────────────────────────────────│
   │                  │                   │                    │
   │  10: Tinh KPI    │                   │                    │
   │  thang moi       │                   │                    │
   │─────────────────────────────────────▶│                    │
   │  3 kich ban      │                   │                    │
   │◀─────────────────────────────────────│                    │
   │                  │                   │                    │
   │  01: Lich noi    │                   │                    │
   │  dung thang moi  │                   │                    │
   │─────────────────────────────────────▶│                    │
   │  Calendar thang  │                   │                    │
   │◀─────────────────────────────────────│                    │
   │                  │                   │                    │
   │  Chia se ke hoach│                   │                    │
   │─────────────────▶│                   │                    │
   │                  │                   │                    │
```

---

## Chi tiet tung buoc

### Buoc 1 — Phan tich du lieu (Ngay 28)
**Skill:** `13-phan-tich-du-lieu`
**Input:** Export data tu Meta Ads, TikTok Ads, GA4, Google Sheets
**Output:** `phan-tich-du-lieu-thang-[M]-[date].md`
**Muc dich:** Tong hop so lieu tho thanh insight co cau truc

### Buoc 2 — Danh gia hieu suat (Ngay 29)
**Skill:** `03-danh-gia-hieu-suat`
**Input:** Ket qua phan tich du lieu + KPI muc tieu thang
**Output:** `danh-gia-hieu-suat-thang-[M]-[date].md`
**Muc dich:** Chan doan van de, xac dinh nguyen nhan goc re

### Buoc 3 — Bao cao marketing (Ngay 30)
**Skill:** `07-bao-cao-marketing`
**Input:** Phan tich + danh gia + data thang
**Output:** `bao-cao-mkt-thang-[M]-[date].md`
**Nguoi duyet:** Marketing Owner → trinh Leadership
**Muc dich:** Bao cao chinh thuc — doc xong 5 phut, biet can lam gi

### Buoc 4 — Tinh KPI thang moi (Ngay 1–2)
**Skill:** `10-tinh-kpi-nguoc`
**Input:** Muc tieu doanh thu thang moi + ket qua thang cu (de dieu chinh benchmark)
**Output:** `kpi-thang-[M+1]-[date].md`
**Muc dich:** Xac dinh ngan sach va muc tieu cu the

### Buoc 5 — Lich noi dung thang moi (Ngay 2–3)
**Skill:** `01-lich-noi-dung`
**Input:** KPI moi + chien dich sap toi + su kien thang + bai hoc tu thang cu
**Output:** `lich-noi-dung-thang-[M+1]-[date].md`
**Muc dich:** Ke hoach content cu the tung ngay

---

## Lich co dinh hang thang

| Ngay | Hanh dong | Nguoi | Output |
|------|----------|-------|--------|
| 28 | Thu thap data tu tat ca kenh | MKT team | Raw data sheets |
| 29 | Chay skill 13 + 03 | AI + MKT Owner | Phan tich + Danh gia |
| 30 | Chay skill 07, duyet bao cao | AI + MKT Owner | Bao cao thang |
| 1 | Trinh bao cao Leadership | MKT Owner | Meeting notes |
| 1–2 | Chay skill 10, xac nhan KPI | AI + MKT Owner | KPI sheet |
| 2–3 | Chay skill 01, duyet lich | AI + Content Lead | Lich noi dung |
| 3 | Chia se ke hoach cho team | MKT Owner | Team briefing |

---

## Template du lieu can thu thap (Ngay 28)

### Tu Meta Ads Manager
- Tong chi phi, CPMess, CPL, CPA
- Reach, Impressions, Frequency
- Ket qua theo tung chien dich, tung ad set
- Top 5 creative tot nhat (theo ROAS hoac CPMess)

### Tu TikTok Ads Manager
- Tong chi phi, CPV, CPC, CPMess
- Video view, VCR, CTR
- Ket qua theo tung chien dich

### Tu GA4
- Traffic theo kenh (Organic, Paid, Social, Direct, Referral)
- Top pages, bounce rate, session duration
- Conversion events

### Tu CRM / Sheets noi bo
- Tong lead, booking, customer moi
- Ti le chuyen doi tung buoc
- Doanh thu theo kenh
- Re-purchase rate

---

## KPI dashboard mau

| Chi so | Muc tieu | Thuc te | % Dat | Xu huong | Ghi chu |
|--------|---------|---------|-------|---------|---------|
| Doanh thu | | | | ↑↓→ | |
| So don | | | | ↑↓→ | |
| Chi phi ads | | | | ↑↓→ | |
| ROAS | | | | ↑↓→ | |
| CPMess | | | | ↑↓→ | |
| Lead | | | | ↑↓→ | |
| Lead→Booking | | | | ↑↓→ | |
| Booking→Customer | | | | ↑↓→ | |
| Content published | | | | ↑↓→ | |
| Engagement rate | | | | ↑↓→ | |
