---
name: 25-voice-clone-podcast
description: "Audio AI cho personal brand — voice clone (ElevenLabs/HeyGen Voice/Vbee), podcast workflow, audiobook, voiceover video. 3 use case: voiceover ngan TikTok/Reels (energetic), podcast 30-60 phut (conversational), audiobook (mid-tempo). Repurpose 1:10 (1 podcast → 10 short clip). Trigger: 'voice clone', 'ElevenLabs giong noi', 'podcast AI', 'audio AI', 'Descript voice', 'Riverside podcast', 'voiceover AI'."
metadata:
  version: 1.0.0
  category: content
license: MIT
triggers:
  - "voice clone"
  - "ElevenLabs giong noi"
  - "podcast AI"
  - "audio AI"
  - "Descript voice"
  - "Riverside podcast"
  - "voiceover AI"
related:
  - 24-ai-avatar-production
  - 26-thought-leadership-content
  - references/voice-clone-prompts-vn
  - references/ai-video-disclosure-vn
---

# Voice Clone & Podcast — Audio AI cho Personal Brand

> **Skill nay tap trung vao audio AI** — voice clone, podcast, audiobook, voiceover.
> Bo sung cho `24-ai-avatar-production` (video) — ket hop ca 2 de phu het content stack.

---

## 1. Cho nguoi moi (Newbie Guide)

### Audio AI la gi va khac voi video AI?

Audio AI la cong nghe tao ra giong noi nhan tao gan giong nguoi that — tu sample
giong cua ban, AI hoc va tao ra giong nhan ban (voice clone). Ban viet text →
AI doc thay (Text-to-Speech).

**Khac biet voi video AI:**
- Video AI (skill 24): Tao video co hinh + giong → lam talking head, social video
- Audio AI (skill nay): Chi tao giong → lam podcast, audiobook, voiceover, narration

### Khi nao dung audio AI thay vi quay video?

| Tinh huong | Chon audio AI | Chon video AI |
|-----------|---------------|---------------|
| Noi dung dai (>10 phut) | YES — podcast format | NO — too long for video |
| Khong muon len hinh | YES | NO |
| Can tao volume content nhanh | YES — 1 podcast = 10 short | YES nhung ton hon |
| Audience nghe khi lai xe / tap gym | YES | NO |
| Can visual de demo | NO | YES |
| Personal brand thought leader | YES — podcast = authority | YES — neu da co face brand |

### Tools chinh

- **ElevenLabs:** Tot nhat the gioi cho voice clone — VN voice tot, EN voice xuat sac
- **Vbee:** Tot nhat tieng Viet — natural intonation, da giong vung mien
- **HeyGen Voice:** Combo voi avatar HeyGen — workflow lien tuc voice + video
- **Descript:** AI editing — cat audio bang text, voice clone (Overdub)
- **Riverside:** Podcast recording — chat luong studio, AI Magic Clips repurpose

### Mat bao lau / chi phi?

| Cong viec | Thoi gian | Chi phi (USD/thang) |
|-----------|-----------|----------------------|
| Voice clone setup | 30-60 phut | $5-22 (ElevenLabs Starter/Pro) |
| Voiceover 60s (TikTok) | 5-10 phut | $5-22 |
| Podcast 30 phut (solo) | 1-2 gio | $22-99 (ElevenLabs + Riverside) |
| Audiobook 1 chuong (15 phut) | 30-45 phut | $22-99 |
| Repurpose 1 podcast → 10 clip | 1-2 gio | $0-30 (Descript/Opus) |

### 5 loi thuong gap

1. **Giong AI nghe robot:** Sample qua ngan hoac don dieu. Fix: thu lai 3-5 phut, doc nhieu cam xuc khac nhau (vui, buon, nghiem tuc).
2. **Phat am sai tu tieng Viet:** ElevenLabs van con yeu vai tu Han-Viet. Fix: dung Vbee cho VN content, hoac sua tu bang phonetic spelling.
3. **Audio bi clipping (vo tieng):** Levels qua cao. Fix: target -3dB peak, -16 LUFS loudness.
4. **Bi noise/echo:** Phong khong tieu am. Fix: thu am phong nho co rem, treo chan, hoac dung NVIDIA Broadcast / Krisp khu noise.
5. **Podcast nghe chan:** Khong co edit, qua nhieu "um a". Fix: Descript auto-remove filler words, them background music nhe (-20dB).

---

## 2. Thu thap thong tin

Hoi toi da 4 cau truoc khi bat dau:

1. **Use case chinh?** Voiceover ngan (TikTok/Reels) / Podcast 30-60 phut / Audiobook?
2. **Ngon ngu?** Tieng Viet / Tieng Anh / Song ngu (VN-EN)?
3. **Thoi luong tong?** <60s / 5-30 phut / 30-60 phut / >60 phut (audiobook)?
4. **Ngan sach tier?** Free ($0) / Starter ($5-22) / Pro ($22-99) / Business ($99+)?

> Dua tren 4 cau tra loi, chon use case + tool stack phu hop.

---

## 3. Voice clone setup

### Yeu cau sample

| Tieu chi | Yeu cau toi thieu | Toi uu |
|----------|---------------------|--------|
| Thoi luong | 1 phut (Free tier) | 3-5 phut (Pro tier) |
| Phong | Yen tinh, khong vang | Treo chan, rem, sach hap thu am |
| Mic | iPhone + tai nghe co mic | Condenser mic (AT2020, $80-100) |
| Distance | 20-30cm | 15-20cm voi pop filter |
| Format | MP3 128kbps | WAV 44.1kHz |
| Noi dung | 1 doan van da chuan bi | 3 doan van: business / casual / emotional |

> **Reference day du:** `references/voice-clone-prompts-vn.md` — 3 sample script
> theo vung giong (Bac/Trung/Nam) va 3 topic (business/lifestyle/educational).

### Tool comparison

| Tool | VN voice clone | Gia/thang | Setup time | Best for |
|------|----------------|-----------|------------|----------|
| **ElevenLabs Pro** | Tot (8/10) | $22 | 30 phut | Multi-language, content creator |
| **HeyGen Voice** | Trung binh (6/10) | Bundle voi avatar | 15 phut | Combo voi video AI |
| **Vbee Pro** | Xuat sac (9.5/10) | 199K-499K VND | 45 phut | VN-only, broadcast TTS |
| **Descript Overdub** | Trung binh (6/10) | $24 (Hobbyist) | 30 phut | Podcast editing |
| **Resemble.ai** | Trung binh (7/10) | $30 | 1 gio | API integration, custom |

**Khuyen nghi:**
- **VN-only content:** Vbee Pro (tot nhat phat am tieng Viet)
- **Multi-lang (VN + EN):** ElevenLabs Pro
- **Combo voi video:** HeyGen (1 platform — voice + avatar)

### Consent form template

```
THOA THUAN SU DUNG VOICE CLONE

Toi, [Ho ten], CMND/CCCD: [so], dong y cho [Brand/Cong ty]:
1. Su dung sample giong noi cua toi de tao voice clone AI
2. Su dung voice clone trong [pham vi: noi bo / quang cao / podcast / etc.]
3. Thoi han: [tu DD/MM/YYYY den DD/MM/YYYY]
4. Quyen rut lai: Toi co quyen yeu cau xoa voice clone bat ky luc nao
   bang van ban, brand co 7 ngay de xoa hoan toan.
5. Cong khai: Brand cam ket disclose "AI voice" theo quy tac VN.

Ky ten: ____________  Ngay: ____________
```

---

## 4. 3 use case rieng

### Use case A: Voiceover ngan TikTok/Reels (Energetic)

**Spec:**
- Thoi luong: 15-60s
- Pace: Fast (180-220 words/phut) — gioi tre VN
- Tone: Energetic, high-pitch, exciting
- Audio levels: -14 LUFS (TikTok loudness), peak -1dB
- CTA: Ro rang trong 5s cuoi

**Script template (30s):**
```
[HOOK 0-3s] "Ban co biet [stat shocking]?"
[PROBLEM 3-10s] "Hau het moi nguoi van dang [vong xoay sai]"
[SOLUTION 10-22s] "Toi da thu [phuong phap], va day la 3 dieu..."
[PAYOFF 22-27s] "Ket qua: [so cu the]"
[CTA 27-30s] "Comment 'YES' de minh gui chi tiet"
```

**Voice settings (ElevenLabs):**
- Stability: 35-45 (low — cho phep variation)
- Similarity: 75-85
- Style: 50-65 (boost expressiveness)
- Speaker Boost: ON

### Use case B: Podcast 30-60 phut (Conversational)

**Cau truc:**
- **Intro (1-2 phut):** Hook + introduce topic + welcome listeners
- **Body (25-50 phut):** 3-5 main segments, moi segment 5-10 phut
- **Ad slot (optional):** Sau intro 3-5 phut, hoac giua body
- **Outro (1-2 phut):** Recap key points + CTA + thanks

**Pacing:**
- Conversational pace: 140-160 words/phut
- Pause 1-2s sau cau quan trong (cho audience tieu hoa)
- Doan chuyen segment: pause 2-3s + audio sting

**Sound design:**
- Background music: -25 to -30 dB (rat nhe, khong at giong)
- Stings/transitions: -15 dB, dai 1-2s
- Voice levels: -16 LUFS (podcast standard), peak -1dB

**Voice settings (ElevenLabs):**
- Stability: 60-75 (cao — consistent qua 30+ phut)
- Similarity: 85-95
- Style: 30-40 (natural, khong qua expressive)
- Speaker Boost: ON

### Use case C: Audiobook (Mid-tempo)

**Cau truc:**
- **Chapter intro:** "Chuong [X]: [Tieu de]" — pause 2s
- **Chapter body:** 10-20 phut/chuong, doan paragraph cach pause 1s
- **Chapter end:** Pause 3s truoc khi chuyen chapter

**Pacing:**
- Mid-tempo: 150-170 words/phut
- Breath control: pause tu nhien moi 2-3 cau
- Doan dialogue: thay doi tone giong nhan vat (neu fiction)

**Consistency check (quan trong nhat):**
- Render thu chapter 1 va chapter 5 → so sanh giong → phai giong nhau 95%+
- Neu khac biet: re-clone voi sample dai hon (5+ phut)
- Pronunciation guide: lap database ten rieng + cach phat am dac biet

**Voice settings (Vbee, neu VN):**
- Voice: "Nu mien Bac chuyen nghiep" hoac "Nam mien Bac am tinh"
- Speed: 0.95x (cham hon mot chut)
- Pitch: Default
- Pause length: 1.2x (dai hon mot chut)

---

## 5. Tool comparison VN

| Tool | Gia/thang | VN voice native | EN voice | Setup | Pros | Cons | Best for |
|------|-----------|-----------------|----------|-------|------|------|----------|
| **ElevenLabs** | $5-99 | 8/10 | 10/10 | 30 phut | Multi-lang, voice clone tot | VN phat am vai tu kho | Multi-lang creator |
| **Vbee** | 199K-1.5M VND | 9.5/10 | 6/10 | 45 phut | VN tot nhat, da giong vung | Khong manh EN | VN-only audio |
| **HeyGen Voice** | Bundle voi avatar | 6/10 | 8/10 | 15 phut | Combo voi avatar | Voice clone don dieu | Combo voi video |
| **Descript** | $24-30 | 6/10 | 9/10 | 30 phut | Audio editing manh | VN voice yeu | Podcast editing |
| **Riverside** | $19-29 | n/a (recording) | n/a | 5 phut | Studio quality recording | Khong phai TTS | Live podcast |
| **Murf** | $29-79 | 7/10 | 9/10 | 30 phut | 120+ voice library | Voice clone gioi han | Corporate voiceover |
| **PlayHT** | $39-99 | 7/10 | 9.5/10 | 30 phut | API tot, instant clone | UI kho | Developer/API |
| **Resemble.ai** | $30-99 | 7/10 | 9/10 | 1 gio | Custom emotion control | Hoc cao | Brand custom voice |

**Combo khuyen nghi 2025-2026:**
- **VN solo creator:** Vbee Pro (199K) + Riverside Free + Descript Hobbyist ($24)
- **Multi-lang creator:** ElevenLabs Pro ($22) + Riverside Standard ($19) + Descript Pro ($30)
- **Brand/Agency:** ElevenLabs Creator ($99) + Vbee Business + Riverside Pro ($29)

---

## 6. Workflow 1-on-1 podcast voi AI co-host

> **Use case:** Solo podcaster muon co conversation, khong tim duoc co-host that.
> AI co-host = giong AI thu 2 dong vai dong host, hoi cau + ban tra loi.

### Setup prompt engineering cho AI personality

**Buoc 1: Dinh nghia personality cua AI co-host**
```
Ten: [Ten AI co-host]
Tinh cach: Tro mo, hay hoi sau, doi khi hai huoc nhe
Vai tro: Dat cau hoi cho host, khong tu noi qua nhieu
Phong cach noi: Casual, tu nhien, dung "minh/ban" (khong "toi/anh")
Cap do kien thuc: Trung binh — dat cau hoi nhu listener
Cau cam thuong dung: "Wow, hay quoc!", "Vay nghia la sao?", "Cu the hon nha?"
```

**Buoc 2: Tao voice clone rieng cho AI co-host**
- Su dung giong khac voi host (vd: nu vs nam, hoac giong vung khac)
- Voice clone tu mot nguoi than dong y, hoac dung giong AI co san trong ElevenLabs

**Buoc 3: Tool stack**
- **ElevenLabs:** Tao giong AI co-host (voice clone)
- **Riverside:** Recording host noi (live)
- **Descript:** Edit + ghep AI co-host vao (text-to-audio)

### Script template (Q&A format)

```
[INTRO]
Host: Chao moi nguoi, hom nay minh va [AI co-host] se ban ve...
AI co-host: Chao cac ban, minh la [ten]. Hom nay minh muon hieu sau ve [topic]
            tu goc nhin cua [host]. Bat dau thoi!

[BODY — 5-7 cap Q&A]
AI co-host: [Hoi cau 1 — broad question]
Host: [Tra loi 2-3 phut]
AI co-host: [Hoi follow-up sau hon]
Host: [Tra loi voi vi du cu the]
... lap lai 5-7 lan ...

[OUTRO]
AI co-host: Cam on [host] da chia se. Toi nhat ma minh hoc duoc la...
Host: Cam on [AI co-host]. Cac ban con cau hoi gi, comment ben duoi...
```

**Tip:** Viet truoc 7-10 cau hoi cua AI co-host trong document, host tra loi luot.
Sau do generate audio cua AI co-host bang ElevenLabs, ghep vao bang Descript.

---

## 7. Repurpose pipeline 1:10 (1 podcast → 10 short clip)

### Workflow tong quan

```
[1] Record podcast 60 phut (Riverside)
        ↓
[2] Transcript tu dong (Descript / Riverside)
        ↓
[3] Identify hooks (10-15 cau hay)
        ↓
[4] Cut clips 30-60s moi cau (Opus Clip / Descript)
        ↓
[5] Add captions (auto-caption)
        ↓
[6] Distribute ra 4 nen tang
```

### Cach identify hooks (cau hay)

Tim trong transcript nhung cau co dac diem:
- **Bold statement:** "Toi nghi 90% nguoi VN dang lam sai dieu nay"
- **Counter-intuitive:** "Tang gia san pham thuc su lai tang doanh thu"
- **Specific number:** "Toi tu 0 len 1 ty trong 6 thang"
- **Personal story:** "Lan dau khoi nghiep toi mat 200 trieu"
- **Actionable tip:** "3 buoc cu the de bat dau ngay hom nay"

> **Target:** 10-15 hook cho 1 podcast 60 phut. Loc lai 10 clip ngon nhat.

### Tool stack

- **Descript:** Auto-clip — chon cau, cat ra clip ngon (free tier 1 gio/thang)
- **Opus Clip:** AI tu dong tim viral moments + auto-format dung/ngang ($19-99)
- **Riverside Magic Clips:** Built-in feature trong Riverside Pro ($29)
- **CapCut + ChatGPT:** Manual nhung mien phi — paste transcript, ChatGPT phan tich hooks

### Distribution 4 nen tang

| Nen tang | Format | Thoi luong | Caption | Bonus |
|----------|--------|------------|---------|-------|
| **TikTok** | 9:16 (1080×1920) | 30-60s | Bold caption tren | Trend audio overlay (volume thap) |
| **Instagram Reels** | 9:16 | 15-90s | Subtitle dep, font sans-serif | Cover image dep |
| **YouTube Shorts** | 9:16 | <60s | Auto-caption YouTube | Title chua keyword |
| **LinkedIn audio** | 1:1 (square video voi audio) | 60-120s | Caption ben duoi | Doc thread bai dai (carousel) |

**Pro tip:** Moi clip = 1 platform rieng, dung khac caption + cover image. Tang reach.

---

## 8. QA audio + Disclosure

### 5 QA criteria

1. **Clarity (10 diem):** Giong ro, khong bi ren, khong lap. Test: phat tren loa dien thoai → van nghe ro
2. **No clipping (10 diem):** Peak khong vuot -1dB. Tool check: Audacity, Adobe Audition, Reaper
3. **No background noise (10 diem):** Khong tieng quat, xe co, hang xom. Tool: Krisp, NVIDIA Broadcast, Adobe Enhance Speech
4. **Consistent volume (10 diem):** Loudness on dinh -16 LUFS (podcast) hoac -14 LUFS (TikTok). Tool: Loudness meter trong DAW
5. **Natural pauses (10 diem):** Pause hop ly, khong robot. Manual review: nghe lai 3 lan

> **Pass:** 40+/50 diem. <40 = re-render hoac re-record.

### VN disclosure — khi nao bat buoc

| Tinh huong | Disclosure | Vi tri |
|-----------|-----------|--------|
| Quang cao thuong mai | BAT BUOC | Caption + cuoi audio ("Audio nay su dung voice clone AI") |
| Podcast personal brand | NEN — minh bach | Episode description |
| Audiobook fiction | KHONG bat buoc | Optional — credits cuoi |
| Tin tuc/giao duc | BAT BUOC | Dau audio + caption |
| Noi dung noi bo cong ty | KHONG bat buoc | n/a |

**Template disclosure caption:**
```
Audio nay su dung cong nghe voice clone AI
(ElevenLabs / Vbee / [tool ten]). Noi dung do [Ten ban] viet va duyet.
```

> **Reference day du:** `references/ai-video-disclosure-vn.md` — Nghi dinh 147/2024,
> 3 tang disclose, va template cho tung tinh huong (cung ap dung cho audio).

---

## 9. Checklist chat luong

Truoc khi xuat ban audio:

- [ ] Sample voice clone 3-5 phut, phong yen tinh
- [ ] Consent form ky ten (neu clone giong nguoi khac)
- [ ] Use case dung: voiceover (energetic) / podcast (conversational) / audiobook (mid-tempo)
- [ ] Voice settings phu hop use case (Stability/Similarity/Style)
- [ ] Loudness chuan: -14 LUFS (TikTok) / -16 LUFS (podcast/audiobook)
- [ ] Peak khong vuot -1dB (no clipping)
- [ ] No background noise (Krisp/NVIDIA Broadcast pass)
- [ ] Pacing dung: 180-220 wpm (TikTok) / 140-160 wpm (podcast) / 150-170 wpm (audiobook)
- [ ] QA Score 40+/50
- [ ] Disclosure caption (neu commercial use)
- [ ] Repurpose plan: 1 podcast → 10 clip distribute 4 platform
