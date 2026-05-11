# Workflow: Client Onboard (Agency)

> Tu nhan khach hang den giao ke hoach day du — quy trinh chuan cho agency.

---

## Tong quan

```
Thoi gian: 5–7 ngay lam viec
Skills su dung: 7 skill
Output: 7+ file .md — tu brief khach hang den lich noi dung
Dung cho: Agency / Freelancer nhan project marketing moi
```

---

## Luong chay

```
Ngay 1          Ngay 2          Ngay 2-3        Ngay 3-4        Ngay 4-5        Ngay 5-6        Ngay 6-7
┌──────────┐   ┌──────────┐   ┌──────────┐   ┌──────────┐   ┌──────────┐   ┌──────────┐   ┌──────────┐
│ 20       │   │ 09       │   │ 08       │   │ 10       │   │ 00       │   │ 02       │   │ 01       │
│ Brief    │──▶│ Insight  │──▶│ Nghien   │──▶│ Tinh KPI │──▶│ Ke hoach │──▶│ Brief    │──▶│ Lich noi │
│ Client   │   │ khach    │   │ cuu doi  │   │ nguoc    │   │ MKT      │   │ chien    │   │ dung     │
│ Intake   │   │ hang     │   │ thu      │   │          │   │          │   │ dich     │   │          │
└──────────┘   └──────────┘   └──────────┘   └──────────┘   └──────────┘   └──────────┘   └──────────┘
  KH dien       AI + Agency    AI + Agency    AI + Agency    AI + Agency    AI + Agency    AI + Agency
```

---

## UML Sequence Diagram

```
┌─────┐        ┌──────┐        ┌──────────┐
│Khach│        │Agency│        │    AI     │
│ hang│        │      │        │(Skill hệ)│
└──┬──┘        └──┬───┘        └────┬──────┘
   │              │                  │
   │  Gui brief   │                  │
   │─────────────▶│                  │
   │              │                  │
   │              │  20: Brief       │
   │              │  Client Intake   │
   │              │─────────────────▶│
   │              │                  │
   │  Hoi them    │                  │
   │◀─────────────│                  │
   │  Tra loi     │                  │
   │─────────────▶│                  │
   │              │                  │
   │              │  09: Insight     │
   │              │  khach hang      │
   │              │─────────────────▶│
   │              │  Persona + JTBD  │
   │              │◀─────────────────│
   │              │                  │
   │              │  08: Nghien cuu  │
   │              │  doi thu         │
   │              │─────────────────▶│
   │              │  SWOT + Map      │
   │              │◀─────────────────│
   │              │                  │
   │              │  10: Tinh KPI    │
   │              │  nguoc           │
   │              │─────────────────▶│
   │              │  3 scenarios     │
   │              │◀─────────────────│
   │              │                  │
   │              │  00: Ke hoach    │
   │              │  MKT toan dien   │
   │              │─────────────────▶│
   │              │  Plan 7 phan     │
   │              │◀─────────────────│
   │              │                  │
   │  Trinh ke    │                  │
   │  hoach       │                  │
   │◀─────────────│                  │
   │  Duyet       │                  │
   │─────────────▶│                  │
   │              │                  │
   │              │  02: Brief       │
   │              │  chien dich      │
   │              │─────────────────▶│
   │              │  Brief 9 phan   │
   │              │◀─────────────────│
   │              │                  │
   │              │  01: Lich noi    │
   │              │  dung thang 1    │
   │              │─────────────────▶│
   │              │  Calendar        │
   │              │◀─────────────────│
   │              │                  │
   │  Ban giao    │                  │
   │  ke hoach    │                  │
   │◀═════════════│                  │
   │              │                  │
```

---

## Chi tiet tung buoc

### Buoc 1 — Brief Client Intake (Ngay 1)

**Skill:** `20-brief-client-intake`
**Nguoi lam:** Khach hang dien form, Agency review
**Input:** Chon variant phu hop nganh (20 nganh co san)

| Nganh | Variant |
|-------|---------|
| Spa / Beauty | `01-spa-beauty.md` |
| Nha hang / F&B | `02-fnb-restaurant.md` |
| Phong kham | `03-healthcare-clinic.md` |
| Gym / Yoga | `04-fitness-gym-yoga.md` |
| Giao duc | `05-education-center.md` |
| ... (20 nganh) | Xem `skills/20-brief-client-intake/README.md` |

**Output:** Brief 11 phan (A-K) day du thong tin khach hang
**Tieu chi chuyen buoc:** Khach hang da tra loi tat ca 11 phan, Agency da review

### Buoc 2 — Insight khach hang (Ngay 2)

**Skill:** `09-insight-khach-hang`
**Input:** Brief tu buoc 1 + data khach hang hien co
**Output:** `insight-khach-hang-[ten]-[date].md`
**Tieu chi chuyen buoc:** Co it nhat 1 insight THAT SU (khong phai observation)

> **Phan biet:**
> - Observation: "Khach hang nu 25-35 tuoi" (mo ta)
> - Insight: "Khach hang nu 25-35 dat lich spa vao Thu 5-6 vi cuoi tuan de thuong ban than sau 1 tuan lam viec cang thang" (dong luc + hanh vi + thoi diem)

### Buoc 3 — Nghien cuu doi thu (Ngay 2-3)

**Skill:** `08-nghien-cuu-doi-thu`
**Input:** Thong tin doi thu tu brief + research them
**Output:** `nghien-cuu-doi-thu-[ten]-[date].md`
**Tieu chi chuyen buoc:** Da xac dinh positioning map + khoang trong

> **MCP bonus:** Neu co `facebook-ads-library-mcp`, AI tu dong xem quang cao doi thu dang chay.

### Buoc 4 — Tinh KPI nguoc (Ngay 3-4)

**Skill:** `10-tinh-kpi-nguoc`
**Input:** Muc tieu doanh thu tu brief + benchmark nganh
**Output:** `kpi-[ten]-[date].md`
**Tieu chi chuyen buoc:** Co 3 kich ban (thap/TB/cao) voi budget cu the

### Buoc 5 — Ke hoach MKT toan dien (Ngay 4-5)

**Skill:** `00-ke-hoach-mkt`
**Input:** Tong hop tat ca output buoc 1-4
**Output:** `ke-hoach-mkt-[ten]-[date].md`
**Nguoi duyet:** Marketing Owner + Leadership cua khach hang
**Tieu chi chuyen buoc:** Ke hoach 7 phan day du, KPI 3 kich ban, budget phan bo

### Buoc 6 — Brief chien dich dau tien (Ngay 5-6)

**Skill:** `02-brief-chien-dich`
**Input:** Ke hoach MKT (da duyet) + timeline cu the
**Output:** `brief-chien-dich-[ten]-[date].md`
**Tieu chi chuyen buoc:** Brief 9 phan day du, deliverables co deadline, team biet ai lam gi

### Buoc 7 — Lich noi dung thang 1 (Ngay 6-7)

**Skill:** `01-lich-noi-dung`
**Input:** Brief chien dich + kenh + resources
**Output:** `lich-noi-dung-[ten]-thang1-[date].md`
**Tieu chi chuyen buoc:** Lich day du tung ngay, phan cong ro nguoi

---

## Deliverables ban giao cho khach

| # | File | Noi dung | Ai doc |
|---|------|---------|--------|
| 1 | Brief Client (input) | Thong tin khach cung cap | Agency luu tru |
| 2 | Insight khach hang | Persona + JTBD + hanh trinh | MKT team |
| 3 | Nghien cuu doi thu | SWOT + Map + Gap | MKT team + Leadership |
| 4 | KPI & Budget | 3 kich ban + sensitivity | Leadership (duyet budget) |
| 5 | **Ke hoach MKT** | Plan chinh thuc — QUAN TRONG NHAT | Leadership duyet |
| 6 | Brief chien dich | Brief cho team trien khai | MKT team + Creative |
| 7 | Lich noi dung | Calendar thang 1 | Content team |

---

## Timeline tong hop

```
         Ngay 1    Ngay 2    Ngay 3    Ngay 4    Ngay 5    Ngay 6    Ngay 7
         ║         ║         ║         ║         ║         ║         ║
Brief    ████████  ║         ║         ║         ║         ║         ║
Intake   ║         ║         ║         ║         ║         ║         ║
         ║         ║         ║         ║         ║         ║         ║
Insight  ║         ████████  ║         ║         ║         ║         ║
KH       ║         ║         ║         ║         ║         ║         ║
         ║         ║         ║         ║         ║         ║         ║
Doi thu  ║         ║ ████████████████  ║         ║         ║         ║
         ║         ║         ║         ║         ║         ║         ║
KPI      ║         ║         ║ ████████████████  ║         ║         ║
         ║         ║         ║         ║         ║         ║         ║
Ke hoach ║         ║         ║         ║ ████████████████  ║         ║
MKT      ║         ║         ║         ║         ║         ║         ║
         ║         ║         ║         ║         ║ ║       ║         ║
Brief CD ║         ║         ║         ║         ║ ████████████████  ║
         ║         ║         ║         ║         ║         ║         ║
Lich ND  ║         ║         ║         ║         ║         ║ ████████████
         ║         ║         ║         ║         ║         ║         ║
DUYET    ║         ║         ║         ║   ▲     ║         ║    ▲
         ║         ║         ║         ║   │     ║         ║    │
         ║         ║         ║         ║ Duyet   ║         ║  Ban giao
         ║         ║         ║         ║ plan    ║         ║  khach
```

---

## Sau khi onboard xong

| Thoi diem | Hanh dong tiep | Workflow |
|-----------|---------------|---------|
| Tuan 2-3 | Trien khai chien dich | campaign-launch |
| Moi tuan | San xuat noi dung | content-production |
| Cuoi thang | Bao cao + KPI moi | monthly-cycle |
| Moi quy | Review ke hoach tong | Chay lai skill 00 |

---

## Checklist truoc khi ban giao

- [ ] Brief khach hang day du 11 phan — khong thieu muc nao
- [ ] Insight co gia tri THAT SU — khong chi la mo ta demographic
- [ ] Doi thu phan tich 3 tang — co khoang trong ro rang
- [ ] KPI co 3 kich ban — budget da tinh nguoc day du
- [ ] Ke hoach MKT da duyet boi Leadership
- [ ] Brief chien dich co RACI — ai lam gi, deadline nao
- [ ] Lich noi dung thang 1 kha thi voi nguon luc hien tai
- [ ] Compliance da kiem tra (neu nganh dac biet: y te, TPCN, BDS)
- [ ] Tat ca file dung naming convention: `[skill]-[ten]-[date].md`
