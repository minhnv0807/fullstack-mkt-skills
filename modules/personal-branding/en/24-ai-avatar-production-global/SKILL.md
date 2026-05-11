---
name: 24-ai-avatar-production-global
description: "AI Avatar production pipeline for global markets — 3-tier tools (Free/Pro/Enterprise), 4 workflows (single avatar, translate, batch, hybrid), voice clone, anti-detection, QA Score 100. Has 4 region variants for DISCLOSURE LAW (US FTC, EU AI Act, SEA per country, LATAM mixed). Tools: HeyGen, Synthesia, ElevenLabs, Captions, Rask AI. Trigger: 'AI avatar', 'HeyGen', 'Synthesia', 'avatar AI video', 'talking head AI', 'AI video translate', 'batch AI video'."
metadata:
  version: 1.0.0
  category: content
license: MIT
triggers:
  - "AI avatar"
  - "HeyGen"
  - "Synthesia"
  - "avatar AI video"
  - "talking head AI"
  - "AI video translate"
  - "batch AI video"
related:
  - 25-voice-clone-podcast-global
  - 04-script-video-global
  - 26-thought-leadership-content-global
  - references/ai-video-disclosure-global
  - references/voice-clone-prompts-global
---

# AI Avatar Production (Global) — Pipeline 3-Tier, 4 Workflows, QA Score 100

> Flagship skill of the AI Content cluster. Covers the full pipeline from zero to publish, voice clone, anti-detection, and region-specific disclosure law.

---

## For newbies

### What is an AI Avatar?

An AI Avatar is a video that shows your face (or a stand-in) but uses AI-generated voice and motion. You provide one photo or a short selfie video; the AI produces a final video with natural-looking speech, gestures, and expressions. No filming crew, no studio, no actor required.

### What do you need to start?

| Method | Requirement | Quality |
|--------|-------------|---------|
| Portrait photo | 1 forward-facing photo, clean background, 1024x1024+ | Medium — mouth less natural |
| Selfie video | 30s video, looking at the lens, speaking naturally | Good — better lipsync |
| Custom avatar | 2-5 min recording with teleprompter + lavalier mic | Excellent — near photo-real |

**Minimum gear:** Phone with HD front camera + lavalier mic (or headset mic).

### How long does it take?

- **One single video (60s):** 30-60 min (script + render)
- **Batch of 10:** 1-2 days
- **Batch of 30:** 4-5 days (with optimized process)

### What does it cost?

| Tier | USD/month | Output |
|------|-----------|--------|
| Free | $0 | 1-3 videos, watermark |
| Pro | $30-100 | 10-30 videos, no watermark |
| Enterprise | $200-500+ | 30+ videos, custom avatar, API |

### 5 common newbie mistakes

1. **Lipsync drift:** Script too fast or voice mismatch -> slow speech 10-15%, use voice clone instead of default voice.
2. **Voice doesn't sound like you:** Sample too short or noisy -> re-record 3-5 minutes in a quiet room with phonetically varied script.
3. **Video flagged as "AI content":** Platform pattern detection -> see Anti-detection section below.
4. **Blurry / pixelated output:** Low-quality input -> use 1024x1024+ photo, natural lighting, no filters.
5. **Slow render:** Free tier queue -> render off-peak (early morning in your timezone = US night) or upgrade to Pro.

---

## Information collection (4 questions max)

Ask up to 4 questions before starting:

1. **Primary use case?** Brand awareness / Sales / Education / Internal training?
2. **Primary platform?** TikTok / YouTube / Facebook / Instagram / LinkedIn / X / Threads?
3. **Budget tier?** Free ($0) / Pro ($30-100/mo) / Enterprise ($200+/mo)?
4. **Videos per month target?** 1-5 / 10-30 / 30+?

> Based on the 4 answers, auto-select Tier + Workflow.

---

## Tier decision — Tools and pricing

| Tier | Suggested tool | Price/month | Quality | Limit | Fits |
|------|----------------|-------------|---------|-------|------|
| **Free** | Captions Free, HeyGen Trial, D-ID Trial | $0 | 6/10 — watermark, limited duration | 1-5 videos, max 60s/video | Personal test, new freelancers |
| **Pro** | HeyGen Creator ($29), Synthesia Starter ($29), ElevenLabs Pro ($22) | $30-100 | 8/10 — no watermark, HD | 10-30 videos, max 5 min/video | SME, small agency, content creator |
| **Enterprise** | HeyGen Business ($89+), Synthesia Enterprise (custom) | $200-500+ | 9.5/10 — custom avatar, API, priority render | 30+ videos, unlimited | Large agency, large brand, e-learning |

**Quick recommendations:**
- **Just starting:** HeyGen Trial (1 video free, full experience)
- **Serious but budget-limited:** Captions Pro ($10/mo) for lipsync + ElevenLabs Starter ($5) for voice
- **Scale fast:** HeyGen Creator + ElevenLabs Pro = best price/quality combo
- **Enterprise:** Synthesia Enterprise + ElevenLabs Scale

---

## Workflow 1: Single Avatar Production

> One video, end-to-end in 30-60 minutes.

### 6-step process

| Step | Task | Tool | Time |
|------|------|------|------|
| 1. Script | 150-300 words for a 60s video | Skill `04-script-video-global` | 10 min |
| 2. Voice | Generate or use voice clone | ElevenLabs / HeyGen Voice | 5 min |
| 3. Avatar | Pick stock avatar or upload your media | HeyGen / Synthesia / D-ID | 3 min |
| 4. Render | Combine voice + avatar, choose background, gestures | Tool from step 3 | 5-15 min (render) |
| 5. QA | QA Score 100 review (see section below) | Manual review | 5 min |
| 6. Publish | Export MP4 -> post to platform | Manual / Scheduler | 2 min |

### Script template for AI Avatar (60s)

```
[HOOK — 3s] Curiosity hook, frame the problem
[PROBLEM — 10s] Describe the customer pain
[SOLUTION — 25s] Your solution, 2-3 key points
[PROOF — 12s] Numbers, testimonial, result
[CTA — 10s] Concrete action: "Link in bio for..."
```

---

## Workflow 2: Multi-language translate

> One source video -> many languages for global rollout. Use cases: DTC brand expanding markets, multi-language courses, multi-country agency work.

### Tool comparison

| Tool | Languages | Price | Notes |
|------|-----------|-------|-------|
| Rask AI | 130+ | $50/mo (Pro) | Best for translate today |
| HeyGen Translate | 40+ | Included Creator+ | Built-in, convenient |
| Synthesia Translate | 35+ | Included Enterprise | Best for e-learning |

### Process

1. Create source video (Workflow 1)
2. Upload to translate tool (Rask AI recommended)
3. Pick target language — tool auto-translates and lipsyncs
4. Review with a native speaker
5. Export and publish per market

**Caveat:** Tonal languages (Mandarin, Vietnamese, Thai) have weaker lipsync. Workaround: produce native voice clone + native avatar per language.

> **See full disclosure law per region in the variant files.**

---

## Workflow 3: Batch Production

> 30 videos in 5 days — assembly-line process.

### Detailed timeline

| Day | Task | Output | Tool |
|-----|------|--------|------|
| **Day 1** | Script batch — write 10 scripts from template | 10 scripts (.md) | Skill `04-script-video-global` + AI assist |
| **Day 2** | Voice batch — render 10 audio files | 10 audio (.mp3) | ElevenLabs API |
| **Day 3** | Avatar batch — upload audio + avatar, queue render | 10 videos rendering | HeyGen Batch / Synthesia |
| **Day 4** | QA batch — review 10 videos, fix issues, re-render | 10 QA'd videos | Manual + QA Score |
| **Day 5** | Publish batch — export, add captions, schedule | 10 videos published | Buffer / Later / Manual |

> Repeat 3 weeks = 30 videos. Or scale Days 1-2 to 15 scripts/week.

### Cost estimate batch 30 videos/month

| Tier | Tool combo | Monthly cost | Per-video cost |
|------|-----------|--------------|----------------|
| Free | HeyGen Trial + Captions Free | $0 (limited 3-5 videos) | $0 (watermark) |
| Pro | HeyGen Creator + ElevenLabs Pro | ~$51 | ~$1.70 |
| Enterprise | HeyGen Business + ElevenLabs Scale | ~$189 | ~$6.30 |

### Batch optimization tips

- **Templated scripts:** 3-5 frameworks, swap the core content
- **Voice consistency:** One voice clone for the entire series
- **Off-peak rendering:** Queue overnight to skip the queue
- **QA checklist:** Print the QA Score, check videos like an assembly line

---

## Workflow 4: Hybrid Real + AI

> Real face for trust + AI body for speed.

### Use cases

- Real face intro 5s + AI body 55s (save filming time)
- AI video weekdays + Real video weekly (balance quality/effort)
- Real talking head + AI B-roll (studio-grade output)

### Assembly + tools

1. Film real intro 5-10s (eye contact, natural greeting); use Captions for lipsync fixes
2. Create AI for the rest with same outfit/background (HeyGen / Synthesia)
3. Edit in CapCut / Premiere (precise cuts, smooth transitions)
4. Color match AI to real footage (LUT or DaVinci Resolve free)

> **Trust gain:** Real face up front -> 20-35% more engagement than full-AI.

---

## Voice Clone Protocol

### Voice sample requirements

| Criterion | Requirement |
|-----------|-------------|
| Duration | 3-5 minutes |
| Quality | WAV/FLAC, 44.1kHz+, mono, quiet room |
| Script content | Phonetically varied passages (all vowels, hard consonants) |
| Emotion | Read normal, natural, not acted |

### Tool comparison

| Tool | Price | Quality | Notes |
|------|-------|---------|-------|
| ElevenLabs | From $5/mo | 9/10 | Best overall, 30+ languages |
| HeyGen Voice | Included Creator+ | 6/10 | Convenient if using HeyGen |
| Resemble AI | From $99/mo | 7/10 | Strong API |
| PlayHT | From $39/mo | 7/10 | Good for narration |

### Consent form template

> **MANDATORY** before cloning anyone's voice.

```
VOICE USAGE CONSENT

I, [FULL NAME], consent to [COMPANY] using my voice for: [SPECIFIC PURPOSE].
Term: [X months / Until revoked]
Date: [YYYY-MM-DD]
Signature: _______________
```

> **Reference:** See `references/voice-clone-prompts-global.md`

---

## Avatar Setup Checklist

Before recording / uploading photo or video for an AI avatar:

- [ ] **Lighting:** Natural light or softbox; no harsh shadows on the face
- [ ] **Background:** Solid (white / gray) or real environment (office, store)
- [ ] **Wardrobe:** On-brand; avoid small busy patterns (AI moire)
- [ ] **Framing:** Chest up; eyes on the upper-third line
- [ ] **Eye contact:** Look directly at the lens (not the screen)
- [ ] **Gestures:** Natural; hands can rest or do light gestures
- [ ] **Resolution:** Minimum 1080p (1920x1080); 4K preferred
- [ ] **Aspect ratio:** 9:16 (TikTok / Reels), 16:9 (YouTube), 1:1 (Feed)
- [ ] **File format:** MP4 (H.264) for video, PNG / JPG for photo
- [ ] **Backup:** Keep originals on cloud (Google Drive / OneDrive) before uploading to the tool

---

## Anti-detection for FB / IG / TikTok / YouTube

### 5 detection signals and fixes

| Signal | Platforms flagging | Fix |
|--------|-------------------|-----|
| Stiff face, no natural blinking | FB, IG | Use selfie video over photo; pick avatars with micro-expressions |
| Monotone voice, no natural pauses | TikTok, FB | Use voice clone (natural pacing) over default TTS |
| Fully static background | FB, IG | Add slight noise/grain, or use real-world background |
| Isolated motion (only mouth moves) | TikTok | Pick avatars with gesture (hands, head); use HeyGen v3+ |
| Metadata flagged as AI tool | YouTube (monetize) | Re-export through CapCut (strips metadata); add color grade |

### Techniques to add "human feel"

1. **Add film grain / noise:** 2-5% in CapCut or Premiere
2. **Zoom and crop:** 5-10% crop with subtle motion (Ken Burns)
3. **Color grade:** Apply film LUT or manually grade — avoid "too clean"
4. **Text overlay:** Add subtitles, callouts, stickers to cover AI weak spots
5. **B-roll insert:** Drop 2-3 b-roll clips (product, lifestyle) every 15-20s
6. **Sound design:** Background music + light SFX (immersion + masks AI voice)

### Per platform

- **TikTok:** Most lenient — content quality wins over AI checks
- **Facebook / Instagram:** Moderate scrutiny — anti-detection matters
- **LinkedIn:** Practically no detection — best fit for AI avatars
- **YouTube:** Strict for monetized videos — must disclose per YPP policy

> **CRITICAL:** NEVER use AI avatars to impersonate real people without consent. This is illegal in most jurisdictions and grounds for permanent platform bans.

---

## Ethics and Disclosure — Region selector

Disclosure laws differ dramatically by region. Pick the matching variant:

| Region | Variant file | Key law |
|--------|-------------|---------|
| US / Canada | `variants/01-us.md` | FTC Endorsement Guides (16 CFR Part 255), 2023 update |
| EU / EEA / UK | `variants/02-eu.md` | **EU AI Act Article 50** (always disclose) + UCPD + GDPR |
| Southeast Asia | `variants/03-sea.md` | Per-country: ASAS (SG), AKARI (ID), DTI (PH), MCMC (MY), TH |
| Latin America | `variants/04-latam.md` | CONAR + LGPD (BR), PROFECO (MX), AAIP (AR), per-country |

> ALWAYS read the matching variant BEFORE publishing AI avatar content in that region. Penalties range from warning to multi-thousand-USD fines per influencer (US) and can stack under EU AI Act + GDPR.

### Universal disclosure rule of thumb

When in doubt, disclose. Disclosure is rarely penalized; non-disclosure can be.

```
"This video uses AI Avatar technology for visuals and voice."
```

Placement: video description, first 3 seconds on-screen text, OR platform "AI-generated" tag (where available — Meta, TikTok, YouTube all now support this).

---

## QA Score — 100 points

### Scorecard

| # | Criterion | Points | Description |
|---|-----------|--------|-------------|
| 1 | Lipsync | /10 | Mouth tracks speech within 0.2s |
| 2 | Voice match | /10 | Voice sounds like the speaker (if clone) or natural (if TTS) |
| 3 | Visual quality | /10 | Sharp image, no artifacts, no blur |
| 4 | Background | /10 | Background suits context, no render glitches |
| 5 | Lighting | /10 | Even light, no harsh shadows, matches background |
| 6 | Gesture | /10 | Natural, no jitters, hand/head movement present |
| 7 | Script flow | /10 | Hook -> Problem -> Solution -> CTA |
| 8 | Disclosure | /10 | AI disclosure compliant with region (see variant) |
| 9 | Platform fit | /10 | Correct aspect ratio, duration, format for platform |
| 10 | CTA | /10 | Clear call-to-action, easy to execute |

### Action thresholds

| Tier | Score | Action |
|------|-------|--------|
| **Excellent** | 90-100 | Publish now |
| **Good** | 70-89 | Publish, note improvements for next round |
| **Needs fix** | 50-69 | Fix items scoring under 7, then re-render |
| **Redo** | <50 | Rebuild from script + voice + avatar |

---

## Output template

```markdown
# AI Avatar Video — [Title] | [Region variant] | [Date]

1. Workflow used: [Single / Translate / Batch / Hybrid]
2. Script: [Content, 150-300 words]
3. Voice: [Tool] — [Voice ID / clone name] — Consent: [Yes / N/A]
4. Avatar: [Tool] — [Avatar ID / custom]
5. QA Score: [X]/100 (10 criteria)
6. Disclosure (per region variant): [Text + placement]
7. Publish: [Platform] — [Aspect ratio] — [Link]
```

---

## Quality checklist

- [ ] Information collection completed (4 questions)
- [ ] Tier picked (Free / Pro / Enterprise) and aligns with budget + volume
- [ ] Workflow picked (Single / Translate / Batch / Hybrid)
- [ ] Voice clone consent recorded (if cloning a real person)
- [ ] Avatar setup checklist completed before recording
- [ ] Anti-detection techniques applied for the target platform
- [ ] Region variant read and disclosure compliant
- [ ] QA Score >= 70 before publishing

---

## Related skills

- `25-voice-clone-podcast-global` — voice clone deep-dive + podcast pipeline
- `04-script-video-global` — script writing for AI avatar
- `26-thought-leadership-content-global` — content strategy for personal brand
- `references/ai-video-disclosure-global` — full legal reference
- `references/voice-clone-prompts-global` — voice clone training prompts

---

*Global Skill 24 (AI Avatar Production) | Over Powers Agency | v1.0.0*
