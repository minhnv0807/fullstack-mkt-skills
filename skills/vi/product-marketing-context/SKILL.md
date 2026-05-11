---
name: product-marketing-context
description: "Khi nguoi dung muon tao hoac cap nhat tai lieu goc ve san pham, khach hang, va dinh vi thuong hieu. Cung dung khi nguoi dung nhac 'product context', 'marketing context', 'thiet lap context', 'dinh vi', 'tep khach hang muc tieu', 'mo ta san pham', 'ICP', 'chan dung khach hang ly tuong', hoac muon tranh lap lai thong tin co ban cho moi task. Dung O DAU moi du an marketing truoc khi dung cac skill khac — skill nay tao file `.agents/product-marketing-context.md` ma tat ca skill khac doc truoc."
metadata:
  version: 1.1.0
  category: foundation
license: MIT
---

# Product Marketing Context (Foundation Skill)

> **Day la foundation skill** — chay TRUOC moi skill marketing khac. Tao file `.agents/product-marketing-context.md` chua thong tin goc ve san pham, khach hang, dinh vi — de cac skill khac khong phai hoi lai.

---

## Vi sao can skill nay?

Truoc khi co skill nay, moi lan dung 1 skill khac (lap ke hoach, viet copy, bao cao), AI phai hoi lai:
- San pham la gi?
- Khach hang la ai?
- Doi thu la ai?
- Dinh vi the nao?

=> Lap di lap lai, mat thoi gian.

Sau khi co file `product-marketing-context.md`:
- Tra loi cac cau hoi nay **1 lan duy nhat** tu dau du an
- Moi skill khac tu dong doc file nay → di thang vao cong viec
- Thong tin dong bo — khong co tinh trang skill nay noi A, skill khac noi B

---

## Luong hoat dong

### Buoc 1: Kiem tra file hien co

Dau tien, kiem tra co file `.agents/product-marketing-context.md` khong (hoac `.claude/product-marketing-context.md` voi setup cu).

**Neu co:**
- Doc file va tom tat noi dung hien co
- Hoi xem user muon cap nhat section nao
- Chi thu thap thong tin cho section do

**Neu khong co — de xuat 2 cach:**

1. **Auto-draft tu codebase/website** (khuyen dung, nhanh hon):
   - Doc README, landing page, trang "Ve chung toi", mo ta san pham san co
   - Draft V1 file context, user review + sua
   - Lap lai den khi du

2. **Thu thap tu dau:**
   - Hoi tung section — tung cai mot, khong hoi dau loat
   - Moi section giai thich ngan + hoi cau hoi + xac nhan

### Buoc 2: Thu thap thong tin (neu tu dau)

Di qua tung section duoi day — tung cai mot, KHONG hoi dau loat tat ca cau hoi cung luc.

Voi moi section:
1. Giai thich ngan gon: "Section nay ghi nhan X"
2. Hoi 1–3 cau hoi
3. Xac nhan chinh xac
4. Chuyen sang section tiep theo

**Uu tien ngon ngu khach hang noi thuc te** — nhung cau khach noi nguyen van co gia tri hon mo ta chuan chinh, vi no phan anh cach khach thuc su nghi va noi.

### Buoc 3: Tao file

Luu vao `.agents/product-marketing-context.md` (tao folder `.agents/` neu chua co).

Format file theo template ben duoi.

---

## Template file

```markdown
# Product Marketing Context — [Ten san pham]

> Cap nhat lan cuoi: [YYYY-MM-DD]
> Dung bang: Claude Code, ChatGPT, Gemini, bat ky AI agent nao

---

## 1. Tong quan san pham

- **Ten san pham/dich vu:**
- **Mo ta 1 cau:**
- **Mo ta 2-3 cau:**
- **Nganh hang (khach tim theo tu khoa nao?):**
- **Loai mo hinh:** (SaaS / E-commerce / Dich vu / Marketplace / Khoa hoc / v.v.)
- **Gia va cach tinh gia:**
- **Website:**
- **Dang o giai doan:** (Launch / Growth / Mature)

## 2. Tep khach hang muc tieu

- **Phan khuc khach hang:** (B2C / B2B / B2B2C)
- **Quy mo cong ty khach (B2B):** (Startup / SME / Enterprise)
- **Nganh cua khach (B2B):**
- **Nguoi quyet dinh mua:** (Chu doanh nghiep / MKT Manager / CTO / End user)
- **Cong viec chinh khach thue SP de lam (JTBD):**
- **Use case cu the:**

## 3. Chan dung khach hang (Persona)

### Persona chinh: [Ten mo ta]
- **Nhan khau hoc:** Tuoi, gioi tinh, khu vuc, thu nhap
- **Nghe nghiep:**
- **Hanh vi online:** (kenh nao, tan suat, gio nao)
- **Muc tieu ca nhan:**
- **Noi dau lon nhat:**
- **Cau noi noi tam:** (Khach hay nghi nhung khong noi ra)

### Persona phu: [Neu co]
[Tuong tu]

## 4. Noi dau & Van de

- **Van de cot loi khach gap truoc khi tim den ban:**
- **Tai sao giai phap hien tai khong hieu qua:**
- **Dieu do ton cho khach bao nhieu:** (thoi gian / tien / co hoi)
- **Cam xuc tieu cuc:** (stress, so, nghi ngo)

## 5. Doi thu canh tranh

### Truc tiep (cung giai phap, cung van de)
- [Doi thu 1]: [diem manh] / [diem yeu cho khach]
- [Doi thu 2]: ...

### Gian tiep (khac giai phap, cung van de)
- [Doi thu 1]: ...

### Thu cap (cung giai phap, khac phan khuc)
- [Doi thu 1]: ...

## 6. Khac biet hoa (Differentiation)

- **3 diem khac biet chinh so voi doi thu:**
  1.
  2.
  3.
- **Tai sao khach chon ban thay vi doi thu:**
- **Dieu doi thu KHONG co ma ban CO:**

## 7. Rao can & Anti-persona

### Top 3 rao can khach noi ra
1. "Gia cao qua" → Cach xu ly: ...
2. "Khong biet co hieu qua khong" → Cach xu ly: ...
3. "Dang dung giai phap khac roi" → Cach xu ly: ...

### Anti-persona (KHONG la khach hang cua ban)
- Ai KHONG nen mua san pham nay:
- Tai sao:

## 8. Dong luc chuyen doi (JTBD 4 Forces)

- **Push** (Cai dang day khach roi khoi giai phap hien tai):
- **Pull** (Cai gi hap dan khach den voi ban):
- **Anxiety** (Lo lang khi chuyen sang ban):
- **Habit** (Thoi quen giu khach o lai giai phap cu):

## 9. Ngon ngu khach hang (Voice of Customer)

Ghi lai cac cau khach noi NGUYEN VAN — khong paraphrase.

- "..."
- "..."
- "..."

**Nguon:**
- Review (Shopee, Google, TikTok Shop)
- Tin nhan inbox
- Ghi am cuoc goi ban hang
- Survey

## 10. Giong noi thuong hieu (Brand Voice)

> Ap dung tu `social-media-skills/voice-builder` — adapt cho brand VN.

### 10a. Brand voice co ban
- **3 tinh tu mo ta thuong hieu:**
- **Giong noi:** (Chuyen nghiep / Than thien / Hai huoc / Truyen cam hung)
- **KHONG dung giong:** (vi du: khong sap dat, khong xuong hang)
- **Vi du cau noi dung phong cach:**
- **Vi du cau KHONG nen dung:**

### 10b. Phan tich voice tu mau content (neu co)

Neu user cung cap 3–5 mau content da dang (bai post, email, video script), phan tich:

**Tin hieu voice:**
- Do dai cau trung binh
- Nhip doan van (cau ngan lien tuc hay doan dai?)
- Kieu hook thuong dung (cau hoi, con so, tinh huong, nguoc doi?)
- Goc nhin (ngoi thu nhat, thu hai, quan sat?)
- Tone (thuc te, am ap, thang than, vui ve, chuyen nghiep?)
- Cum tu dac trung hoac tu lap lai

**Tin hieu vang mat (Absence signals):**
- Tu/cu phap KHONG xuat hien o bat ky mau nao
- Kieu hook brand KHONG bao gio dung
- Tone brand KHONG bao gio cham

> **Quy tac:** Chi phan tich tu mau thuc te — khong tu nghi ra pattern. Neu mau it (<3), ghi ro la "can them mau de xac nhan pattern".

## 11. Bang chung xa hoi (Proof Points)

- **So lieu an tuong:** (khach, doanh thu, ket qua)
- **Review / Testimonial ngan:**
- **Logo khach hang lon / bao chi:**
- **Giai thuong / chung nhan:**
- **Case study noi bat:**

## 12. Muc tieu

- **Muc tieu 90 ngay toi:**
- **Muc tieu 12 thang:**
- **Chi so quan trong nhat (North Star Metric):**
- **Chi so phu:**
```

---

## Cach cac skill khac dung file nay

Trong moi skill (`00-ke-hoach-mkt`, `05-copy-quang-cao`, v.v.), them doan nay vao buoc "Thu thap thong tin":

```markdown
## Thu thap thong tin

### Buoc 0: Kiem tra context file

Kiem tra co file `.agents/product-marketing-context.md` khong:
- **Co** → Doc toan bo, lay thong tin san pham/khach hang/dinh vi. Khong hoi lai.
- **Khong** → De nghi user chay skill `product-marketing-context` truoc. 
  Neu user muon tiep tuc, hoi 2–3 cau toi thieu ve san pham.
```

---

## Checklist chat luong

Truoc khi ket thuc:

- [ ] File luu vao `.agents/product-marketing-context.md`
- [ ] Du 12 section (hoac it nhat 8 section chinh: 1,2,4,5,6,9,10,12)
- [ ] Co ngon ngu khach hang noi thuc te (section 9) — khong paraphrase
- [ ] Co anti-persona ro rang (section 7)
- [ ] Co 3 khac biet hoa cu the (section 6)
- [ ] Co North Star Metric (section 12)
- [ ] Da xac nhan voi user tat ca thong tin
- [ ] Co ngay cap nhat cuoi
