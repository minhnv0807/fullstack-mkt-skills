---
name: 25-voice-clone-podcast-global
description: "Audio AI for global personal brand — voice clone (ElevenLabs, Murf, PlayHT), podcast, audiobook, voiceover. 3 use cases: short voiceover (TikTok/Reels), podcast 30-60min, audiobook. 1:10 repurpose (1 podcast → 10 short clips). English (US/UK/AU/SG accents available). Trigger: 'voice clone global', 'ElevenLabs', 'podcast AI', 'audiobook AI', 'voiceover AI'."
metadata:
  version: 1.0.0
  category: content
license: MIT
triggers:
  - "voice clone global"
  - "ElevenLabs"
  - "podcast AI"
  - "audiobook AI"
  - "voiceover AI"
related:
  - 24-ai-avatar-production-global
  - 26-thought-leadership-content-global
  - references/voice-clone-prompts-global
  - references/ai-video-disclosure-global
---

# Voice Clone & Podcast — Audio AI for Personal Brand (Global)

> **This skill focuses on audio AI** — voice clone, podcast, audiobook, voiceover.
> Pairs with `24-ai-avatar-production-global` (video) — combine both for full content stack coverage.

---

## 1. Newbie Guide

### What is audio AI and how is it different from video AI?

Audio AI is the tech behind synthetic voices that sound nearly human — from a sample of your voice, AI learns and produces a synthetic clone (voice clone). You write text -> AI reads it back (Text-to-Speech).

**Differences vs video AI:**
- Video AI (skill 24): produces video with face + voice -> talking head, social video
- Audio AI (this skill): produces voice only -> podcast, audiobook, voiceover, narration

### When to use audio AI instead of video?

| Situation | Pick audio AI | Pick video AI |
|-----------|---------------|---------------|
| Long-form content (>10 min) | YES — podcast format | NO — too long for video |
| Don't want to be on camera | YES | NO |
| Need volume content fast | YES — 1 podcast = 10 shorts | YES but more expensive |
| Audience listens while driving / at gym | YES | NO |
| Need visuals to demo | NO | YES |
| Personal brand thought leader | YES — podcast = authority | YES — if face brand exists |

### Main tools (international)

- **ElevenLabs:** Best in class for voice clone — top-tier English voices (US/UK/AU/IN), 30+ languages
- **Murf:** 120+ voice library, strong for corporate voiceover, multilingual
- **PlayHT:** API-friendly, instant clone, 800+ voices
- **HeyGen Voice:** Bundles with HeyGen avatars — seamless voice + video pipeline
- **Descript:** AI editing — cut audio by editing text, voice clone (Overdub)
- **Resemble.ai:** Custom emotion control, brand-grade APIs
- **Riverside:** Studio-quality podcast recording with AI Magic Clips repurpose

### Time and cost

| Task | Time | Cost (USD/mo) |
|------|------|---------------|
| Voice clone setup | 30-60 min | $5-22 (ElevenLabs Starter/Pro) |
| 60s voiceover (TikTok) | 5-10 min | $5-22 |
| 30 min solo podcast | 1-2 hrs | $22-99 (ElevenLabs + Riverside) |
| Audiobook chapter (15 min) | 30-45 min | $22-99 |
| 1 podcast -> 10 clips | 1-2 hrs | $0-30 (Descript/Opus Clip) |

### 5 common mistakes

1. **AI voice sounds robotic:** sample too short or monotonic. Fix: re-record 3-5 minutes with varied emotions (happy, serious, sad).
2. **Mispronounced names/jargon:** TTS engines mishandle proper nouns. Fix: use phonetic spelling (e.g., "Anthropic" -> "an-THROW-pic") in the script.
3. **Audio clipping:** levels too hot. Fix: target -3dB peak, -16 LUFS loudness.
4. **Background noise/echo:** untreated room. Fix: small room with curtains and rugs, or apply NVIDIA Broadcast / Krisp / Adobe Enhance Speech.
5. **Boring podcast:** no editing, too many "ums". Fix: Descript auto-removes filler words, add light background music (-25dB).

---

## 2. Information collection

Ask up to 4 questions before starting:

1. **Main use case?** Short voiceover (TikTok/Reels) / Podcast 30-60 min / Audiobook?
2. **Language(s)?** English (US/UK/AU/IN) / multilingual / single non-English?
3. **Total length?** <60s / 5-30 min / 30-60 min / >60 min (audiobook)?
4. **Budget tier?** Free ($0) / Starter ($5-22) / Pro ($22-99) / Business ($99+)?

> Based on the answers, pick the appropriate use case + tool stack.

---

## 3. Voice clone setup

### Sample requirements

| Criterion | Minimum | Optimal |
|-----------|---------|---------|
| Length | 1 min (Free tier) | 3-5 min (Pro tier) |
| Room | Quiet, no echo | Acoustic treatment, rugs, curtains |
| Mic | Phone + headset mic | Condenser mic (AT2020, $80-100) |
| Distance | 20-30 cm | 15-20 cm with pop filter |
| Format | MP3 128 kbps | WAV 44.1 kHz |
| Content | One pre-written passage | Three passages: business / casual / emotional |

> **Full reference:** `references/voice-clone-prompts-global.md` — sample scripts across English variants (US/UK/AU/SG/IN) and 3 topics (business / lifestyle / educational).

### Tool comparison (global)

| Tool | English clone quality | Price/mo | Setup time | Best for |
|------|----------------------|----------|------------|----------|
| **ElevenLabs Pro** | Excellent (10/10) | $22 | 30 min | Multilingual, content creator |
| **HeyGen Voice** | Good (8/10) | Bundled with avatar | 15 min | Combo with video AI |
| **Murf** | Excellent (9/10) | $29-79 | 30 min | Corporate voiceover, e-learning |
| **PlayHT** | Excellent (9.5/10) | $39-99 | 30 min | API-driven, instant clone |
| **Descript Overdub** | Good (8/10) | $24 (Hobbyist) | 30 min | Podcast editing |
| **Resemble.ai** | Excellent (9/10) | $30-99 | 1 hr | Brand custom voice, emotion control |

**Recommendations:**
- **English-only creator:** ElevenLabs Pro ($22) — best balance of quality and price
- **Multilingual creator:** ElevenLabs Pro (30+ languages built in)
- **Combo with video:** HeyGen (single platform — voice + avatar)
- **Brand/agency at scale:** Resemble.ai or PlayHT (API + custom emotion)

### Consent form template

```
VOICE CLONE LICENSE AGREEMENT

I, [Full name], ID/passport: [number], grant [Brand/Company]:
1. Permission to use samples of my voice to create an AI voice clone.
2. Use of the voice clone in [scope: internal / advertising / podcast / etc.].
3. Term: from [DD/MM/YYYY] to [DD/MM/YYYY].
4. Right of withdrawal: I may request deletion of the voice clone at any time
   in writing; the brand has 7 days to fully remove it.
5. Disclosure: the brand commits to disclose "AI-generated voice" wherever
   required by applicable law (FTC, EU AI Act, etc.).

Signed: ____________   Date: ____________
```

---

## 4. Three use cases

### Use case A: Short voiceover for TikTok/Reels (Energetic)

**Spec:**
- Length: 15-60s
- Pace: fast (180-220 wpm) — younger English-speaking audience
- Tone: energetic, slightly higher pitch, exciting
- Audio levels: -14 LUFS (TikTok), peak -1 dB
- CTA: clear in the last 5 seconds

**Script template (30s):**
```
[HOOK 0-3s] "Did you know [shocking stat]?"
[PROBLEM 3-10s] "Most people are still stuck in [wrong loop]"
[SOLUTION 10-22s] "I tried [method], and here are 3 things..."
[PAYOFF 22-27s] "Result: [specific number]"
[CTA 27-30s] "Comment 'YES' to get the full breakdown"
```

**Voice settings (ElevenLabs):**
- Stability: 35-45 (low — allows variation)
- Similarity: 75-85
- Style: 50-65 (boost expressiveness)
- Speaker Boost: ON

### Use case B: Podcast 30-60 min (Conversational)

**Structure:**
- **Intro (1-2 min):** hook + introduce topic + welcome listeners
- **Body (25-50 min):** 3-5 main segments, each 5-10 min
- **Ad slot (optional):** 3-5 min after intro, or mid-body
- **Outro (1-2 min):** recap + CTA + thanks

**Pacing:**
- Conversational pace: 140-160 wpm
- 1-2s pause after important sentences
- Segment transitions: 2-3s pause + audio sting

**Sound design:**
- Background music: -25 to -30 dB (very subtle)
- Stings/transitions: -15 dB, 1-2s
- Voice levels: -16 LUFS (podcast standard), peak -1 dB

**Voice settings (ElevenLabs):**
- Stability: 60-75 (high — consistent across 30+ minutes)
- Similarity: 85-95
- Style: 30-40 (natural, not over-expressive)
- Speaker Boost: ON

### Use case C: Audiobook (Mid-tempo)

**Structure:**
- **Chapter intro:** "Chapter [X]: [Title]" — 2s pause
- **Chapter body:** 10-20 min/chapter, 1s pause between paragraphs
- **Chapter end:** 3s pause before next chapter

**Pacing:**
- Mid-tempo: 150-170 wpm
- Natural breath every 2-3 sentences
- Dialogue: subtle voice shifts per character (fiction)

**Consistency check (most important):**
- Render Chapter 1 and Chapter 5 -> compare voice -> must match 95%+
- If voices drift: re-clone with a longer sample (5+ min)
- Pronunciation guide: build a database of proper nouns + custom phonetics

**Voice settings (ElevenLabs):**
- Stability: 70-85 (very high — consistent for hours)
- Similarity: 90-95
- Style: 20-30 (calm, even)
- Speaker Boost: ON

---

## 5. Tool comparison (global)

| Tool | Price/mo | English quality | Multilingual | Setup | Pros | Cons | Best for |
|------|----------|-----------------|-------------|-------|------|------|----------|
| **ElevenLabs** | $5-99 | 10/10 | 30+ langs | 30 min | Best clone, multilingual | Pricier high tiers | Multilingual creator |
| **HeyGen Voice** | Bundle w/ avatar | 8/10 | 40+ langs | 15 min | Combo with avatar | Voice clone less expressive | Combo with video |
| **Descript** | $24-30 | 9/10 | EN focus | 30 min | Audio editing first | Multilingual weaker | Podcast editing |
| **Riverside** | $19-29 | n/a (recording) | n/a | 5 min | Studio recording | Not TTS | Live podcast |
| **Murf** | $29-79 | 9/10 | 20+ langs | 30 min | 120+ voice library | Voice clone limited tier | Corporate voiceover |
| **PlayHT** | $39-99 | 9.5/10 | 100+ langs | 30 min | Strong API, instant clone | UI dense | Developer/API |
| **Resemble.ai** | $30-99 | 9/10 | 60+ langs | 1 hr | Custom emotion control | Steep learning curve | Brand custom voice |

**Recommended combos 2025-2026:**
- **English solo creator:** ElevenLabs Pro ($22) + Riverside Free + Descript Hobbyist ($24)
- **Multilingual creator:** ElevenLabs Pro ($22) + Riverside Standard ($19) + Descript Pro ($30)
- **Brand/agency:** ElevenLabs Creator ($99) + Resemble.ai + Riverside Pro ($29)

---

## 6. 1-on-1 podcast with an AI co-host

> **Use case:** solo podcaster who wants conversational format but can't find a co-host. AI co-host = a second AI voice that asks questions while you answer.

### Setup — prompt-engineering the AI personality

**Step 1: Define the AI co-host's personality**
```
Name: [AI co-host name]
Personality: curious, asks deep follow-ups, occasionally light humor
Role: asks the host questions, doesn't talk too much
Speaking style: casual, natural, addresses the host by first name
Knowledge level: average — asks questions like a listener would
Catchphrases: "Wow, that's wild." / "What does that mean exactly?" / "Can you go deeper?"
```

**Step 2: Create a separate voice clone for the AI co-host**
- Use a different voice than the host (e.g., woman vs man, or different accent)
- Clone from a consenting friend, or use one of ElevenLabs' built-in voices

**Step 3: Tool stack**
- **ElevenLabs:** generate the AI co-host voice
- **Riverside:** record the host live
- **Descript:** edit + splice in the AI co-host (text-to-audio)

### Q&A script template

```
[INTRO]
Host: Hey everyone, today [AI co-host] and I are diving into...
AI co-host: Hi all, I'm [name]. Today I want to dig into [topic] from [host]'s
            point of view. Let's go!

[BODY — 5-7 Q&A pairs]
AI co-host: [Broad opening question]
Host: [Answers 2-3 minutes]
AI co-host: [Deeper follow-up]
Host: [Answers with a concrete example]
... repeat 5-7 times ...

[OUTRO]
AI co-host: Thanks [host] for sharing. The biggest thing I learned was...
Host: Thanks [AI co-host]. If you have questions, drop them in the comments...
```

**Tip:** pre-write 7-10 AI co-host questions in a doc, record host responses in one go. Then generate AI co-host audio in ElevenLabs and splice in via Descript.

---

## 7. Repurpose pipeline 1:10 (1 podcast -> 10 short clips)

### Workflow overview

```
[1] Record 60-min podcast (Riverside)
        v
[2] Auto-transcript (Descript / Riverside)
        v
[3] Identify hooks (10-15 quotable lines)
        v
[4] Cut 30-60s clips per quote (Opus Clip / Descript)
        v
[5] Add captions (auto-caption)
        v
[6] Distribute across 4 platforms
```

### How to identify hooks

Find moments in the transcript with these traits:
- **Bold statement:** "I think 90% of founders are doing this wrong"
- **Counter-intuitive:** "Raising prices actually grew revenue"
- **Specific number:** "Went from $0 to $1M in 6 months"
- **Personal story:** "On my first startup I lost $200K"
- **Actionable tip:** "3 specific steps you can take today"

> **Target:** 10-15 hooks per 60-min podcast. Pick the 10 best.

### Tool stack

- **Descript:** auto-clip — select sentences, export short clips (free tier 1 hr/month)
- **Opus Clip:** AI auto-finds viral moments + auto-format vertical/horizontal ($19-99)
- **Riverside Magic Clips:** built-in to Riverside Pro ($29)
- **CapCut + ChatGPT:** manual but free — paste transcript, ChatGPT extracts hook candidates

### Distribution across 4 platforms

| Platform | Format | Length | Caption | Bonus |
|----------|--------|--------|---------|-------|
| **TikTok** | 9:16 (1080×1920) | 30-60s | Bold caption on top | Trend audio overlay (low volume) |
| **Instagram Reels** | 9:16 | 15-90s | Clean subtitle, sans-serif font | Strong cover image |
| **YouTube Shorts** | 9:16 | <60s | Auto-caption | Title with target keyword |
| **LinkedIn audio** | 1:1 (square video w/ audio) | 60-120s | Subtitle below | Long-form thread (carousel) |

**Pro tip:** each clip should target one platform with platform-specific captions and cover image. Maximizes reach.

---

## 8. Audio QA + Disclosure

### 5 QA criteria

1. **Clarity (10 pts):** voice clear, no rasp, no stuttering. Test: play on phone speaker, still intelligible.
2. **No clipping (10 pts):** peak below -1 dB. Tools: Audacity, Adobe Audition, Reaper.
3. **No background noise (10 pts):** no fans, traffic, neighbors. Tools: Krisp, NVIDIA Broadcast, Adobe Enhance Speech.
4. **Consistent loudness (10 pts):** stable -16 LUFS (podcast) or -14 LUFS (TikTok). Tool: loudness meter in DAW.
5. **Natural pauses (10 pts):** human-like pacing. Manual review: listen 3 times.

> **Pass:** 40+/50. Below 40 = re-render or re-record.

### Global disclosure — when required

| Situation | Disclosure | Placement |
|-----------|-----------|-----------|
| Commercial advertising | REQUIRED | Caption + end of audio ("This audio uses an AI voice clone") |
| Personal brand podcast | RECOMMENDED — transparency | Episode description |
| Fiction audiobook | OPTIONAL | Optional — credits at end |
| News/educational | REQUIRED | Beginning of audio + caption |
| Internal corporate content | NOT REQUIRED | n/a |

**Disclosure caption template:**
```
This audio uses AI voice cloning technology
(ElevenLabs / Murf / [tool name]). Content was written and reviewed by [Name].
```

> **Full reference:** `references/ai-video-disclosure-global.md` — FTC, EU AI Act, FCC, and OFCOM requirements; 3-tier disclosure framework, situational templates (also applies to audio).

---

## 9. Quality checklist

Before publishing audio:

- [ ] Voice-clone sample 3-5 min, quiet room
- [ ] Signed consent form (if cloning someone else's voice)
- [ ] Use case matches: voiceover (energetic) / podcast (conversational) / audiobook (mid-tempo)
- [ ] Voice settings appropriate for use case (Stability/Similarity/Style)
- [ ] Loudness correct: -14 LUFS (TikTok) / -16 LUFS (podcast/audiobook)
- [ ] Peak below -1 dB (no clipping)
- [ ] No background noise (Krisp/NVIDIA Broadcast pass)
- [ ] Pacing correct: 180-220 wpm (TikTok) / 140-160 wpm (podcast) / 150-170 wpm (audiobook)
- [ ] QA Score 40+/50
- [ ] Disclosure caption (if commercial use)
- [ ] Repurpose plan: 1 podcast -> 10 clips across 4 platforms

---

*Skill 25 (Global) | v1.0.0*
