# Voice Clone Prompts — Global Reference

> **Reference file** — Load when using `23-voice-clone-pb-global`, `22-ai-avatar-pb-global`, or any personal brand skill that involves voice cloning.
> Scope: international (US, UK, AU, SEA, LATAM English speakers). Targets ElevenLabs, HeyGen, Murf, PlayHT, Resemble.ai.

---

## 1. Recording Best Practices

Quality of the cloned voice depends almost entirely on the quality of your input sample. A 30-second clip from a quiet professional studio outperforms a 30-minute clip recorded in a noisy cafe. Optimize the source.

---

## 2. Recording Principles

### Environment
- **Quiet room:** No HVAC, fans, fridge hum, or traffic noise. Test by recording 10 seconds of silence — if you can hear anything, fix it before continuing.
- **Acoustic treatment:** Soft surfaces absorb reflections. Record in a room with carpet, curtains, bookshelves, or sofas. Avoid bathrooms, kitchens, and empty rooms with hard walls.
- **Time of day:** Early morning or late evening usually has less ambient noise.
- **Phone silenced:** Even on silent, vibrations from notifications can register on sensitive microphones.

### Microphone
- **Best — broadcast condenser:** Shure SM7B (XLR, ~USD 399), Rode NT1 (XLR, ~USD 269), Neumann TLM 103 (premium tier)
- **Good — quality USB:** Blue Yeti (~USD 130), Rode NT-USB+ (~USD 169), Shure MV7 (USB + XLR, ~USD 249)
- **Acceptable for testing:** Lavalier mic with smartphone (Rode Wireless GO, ~USD 199 set), good wired earbuds with mic
- **Avoid:** Laptop built-in microphone, gaming headsets, cheap USB mics under USD 30

### Distance and angle
- **Distance:** 6-12 inches (15-30 cm) from your mouth — about a hand's width
- **Angle:** Microphone directly facing your mouth, tilted 15 degrees off-axis to reduce plosive air bursts on "P" and "B" sounds
- **Pop filter:** Recommended — reduces breath pops without changing tone. USD 15-30 investment.
- **Posture:** Sit upright with shoulders relaxed. Slouching constrains your diaphragm and changes voice timbre.

### Length and content
- **Minimum:** 3 minutes of clean audio for most cloning tools (1 minute possible on some platforms but reduces fidelity)
- **Recommended:** 5-10 minutes including varied emotional range
- **Premium voice tiers (ElevenLabs Professional Voice Clone):** 30 minutes to 3 hours for maximum fidelity
- **Read from a prepared script** — speaking naturally introduces "um," "uh," pauses, and inconsistent pacing that degrade the clone
- **Tip:** Print script on paper or set it at eye level. Looking down at your phone changes vocal projection and posture.

---

## 3. Three Sample Scripts By Accent

> Each script is ~120 words and covers diverse phonemes. Read at conversational pace, pausing ~1 second between paragraphs. Maintain natural intonation — do not flatten your voice into a "podcast voice" that does not match your normal speech.

### Sample A — US English (General American) — Business Topic

```
Hello and thank you for tuning in. Today I want to share some thoughts on building a personal brand in the modern marketing landscape. When I started, I had nothing but a laptop, a strong work ethic, and a willingness to learn from every mistake. The market has changed dramatically over the past five years, and the people who adapt fastest will lead the next decade.

What matters most is understanding your audience. What problems keep them up at night? What outcomes do they actually want? Once you answer those questions honestly, your content writes itself. I have tested dozens of approaches, from short-form video to long-form newsletters, and consistency wins every time. Thanks for listening, and I will see you in the next episode.
```

### Sample B — UK English (Received Pronunciation reference) — Business Topic

```
Good day, and welcome to today's discussion. I want to share some observations on personal branding for professionals navigating today's marketing environment. When I began, I had little more than a laptop and a determination to keep iterating. The marketplace is more competitive than ever, and those who embrace new tools thoughtfully will pull ahead.

The fundamental question is always the same: what does your audience genuinely need? Not what you want to tell them, but what would make a real difference in their work or their lives. Once you can answer that question honestly, the creative direction becomes obvious. I have experimented with many formats over the years. Consistency, clarity, and respect for the audience remain the constants. Thank you for joining me.
```

### Sample C — Australian English — Business Topic

```
G'day everyone, and welcome to today's chat. I want to talk about something that comes up in nearly every conversation I have with founders — building a personal brand without losing your authentic voice. When I started, I had a laptop, an idea, and zero followers. Fast-forward a few years, and the principles that actually work are surprisingly simple.

First, know who you are speaking to. Not a vague audience persona — a real person with real problems. Second, show up consistently, even when no one is watching. Third, share what you learn as you learn it, mistakes included. Polished content has its place, but raw honesty is what builds trust. Cheers for tuning in, and I will see you next week.
```

### Sample D — Singapore / SEA International English — Business Topic

```
Hello and welcome. Today I want to share some practical observations on personal branding for professionals across Southeast Asia and the broader international market. When I started building my brand, I worked with what I had — a laptop, a network of mentors, and a commitment to publish consistently every week.

The market here is unique. We sit at the intersection of multiple cultures, multiple languages, and rapidly changing consumer preferences. What works in one country does not always translate to another, and that creates both a challenge and an opportunity. The professionals who succeed are those who respect local context while building a globally relevant brand. Thank you for listening, and I look forward to our next conversation.
```

---

## 4. Emotion Range Script

> Purpose: train the AI to handle different emotional registers. Read all four segments back-to-back with a 3-second pause between segments. Each segment is approximately 30 seconds.

### Segment 1 — Neutral (introduction) ~30s

```
Hello, my name is [Your Name]. I work in marketing and digital communications. Every day, I help small and medium businesses build their brand presence across social media, search, and email. The work requires patience, creativity, and the ability to analyze data without losing sight of the human story behind the numbers.
```

### Segment 2 — Positive / Happy (sharing a win) ~30s

```
And I am genuinely excited to share something with you today. Last month, our team's campaign exceeded its target by forty percent. The team did extraordinary work. The client is thrilled, revenue is up, and most importantly, we proved that our approach actually works at scale. This is the kind of result that reminds me why I love what I do.
```

### Segment 3 — Reflective (lesson from failure) ~30s

```
But it has not always gone smoothly. I once led a project that failed publicly and painfully. At the time, I was convinced I had done everything right. The lesson, looking back, was this: success rarely comes from working harder. It comes from working on the right things. Sometimes the best decision is to stop, step back, and look at the full picture.
```

### Segment 4 — Decisive / CTA ~30s

```
So if you have been waiting for the right moment to start, let me be direct: start today. Not next month. Not when conditions feel perfect. Not when you finally feel ready. Every day you delay, your competitors get further ahead. Click the link below, sign up now, and let's build your brand together. The right time was yesterday. The next best time is right now.
```

---

## 5. Tool-Specific Prompts and Settings

### ElevenLabs Voice Design — 6 Voice Styles

ElevenLabs Voice Lab uses three core parameters: **Stability** (consistency), **Similarity** (closeness to source), and **Style** (expressiveness).

| Style | Stability | Similarity | Style | Best For |
|-------|-----------|------------|-------|----------|
| **Professional** | 0.75 | 0.80 | 0.30 | Corporate training, webinars, B2B explainer videos |
| **Warm** | 0.50 | 0.85 | 0.50 | Podcasts, personal stories, audiobook narration |
| **Energetic** | 0.35 | 0.75 | 0.70 | Short-form video, ads, motivational content |
| **Calm** | 0.80 | 0.85 | 0.20 | Meditation, ASMR, sleep stories, slow-paced docs |
| **Authoritative** | 0.70 | 0.80 | 0.40 | Thought leadership, keynote talks, expert commentary |
| **Friendly** | 0.45 | 0.80 | 0.55 | Community videos, Q&A, vlog-style content |

**Tips:**
- Start with Similarity 0.80; raise to 0.90+ for closer match to source
- Lower Stability for more emotional range (TikTok, Reels)
- Higher Stability for corporate and long-form
- Test with 3-5 different sentences before producing batch content
- Save voice presets per use case rather than tweaking each time

### HeyGen Custom Voice

1. Go to **Voice Lab** > **Create Custom Voice**
2. Upload WAV or MP3 file (minimum 1 minute, recommended 3-5 minutes for standard voice; 30+ minutes for Professional)
3. Name the voice descriptively (example: "John_Business_Tone" or "Sarah_Friendly_US")
4. Select language and accent (English-US, English-UK, English-AU, English-Global, plus 40+ other languages)
5. Allow 5-15 minutes for processing
6. Test with 2-3 sample sentences before producing video
7. **Tip:** Upload multiple voice profiles for different use cases (business, casual, energetic) rather than relying on a single voice to do everything

### Murf

Murf offers both voice cloning (paid tier) and a library of pre-built voices. For cloning:

1. Navigate to **Voice Cloning** in your Murf workspace
2. Upload sample audio (5 minutes minimum recommended)
3. Choose voice profile: Conversational, Promotional, Newscast, Inspirational, Storytelling, or Documentary
4. Voice settings to adjust:
   - **Pitch:** -50 to +50 (default 0)
   - **Speed:** 0.5x to 2.0x (recommended 0.9-1.1x for personal brand)
   - **Emphasis:** Mark specific words for vocal stress
   - **Pauses:** Insert custom pauses in milliseconds

### PlayHT

PlayHT offers Voice Cloning with both Instant Clone (30 seconds) and High-Fidelity Clone (5+ minutes).

1. Go to **Voice Library** > **Clone Your Voice**
2. Choose Instant Clone for quick tests or High-Fidelity for production
3. Upload audio (recommended: WAV at 44.1kHz)
4. Configure generation settings:
   - **Voice Engine:** PlayDialog (most natural for conversational), PlayHT 2.0 Turbo (faster)
   - **Temperature:** 0.5 (consistent) to 1.5 (expressive) — start at 0.8
   - **Quality:** Draft for testing, Premium for final output

### Resemble.ai

Resemble specializes in real-time and emotional voice synthesis.

1. **Build > Voices > New Voice > Rapid Voice Clone** (3 minutes) or **Professional Voice Clone** (10+ minutes)
2. Upload audio matched to a script Resemble provides for higher accuracy
3. After clone is built, generate audio with emotion tags inline:
   - `<happy>This is exciting news!</happy>`
   - `<sad>I wish things had gone differently.</sad>`
   - `<angry>This is unacceptable.</angry>`
   - `<neutral>Today's report covers three topics.</neutral>`
4. Adjust pitch, speaking rate, and emphasis per phrase using the Resemble editor

---

## 6. Common Pitfalls — 5 Typical Issues

### Issue 1: Background noise contaminates the clone
- **Symptom:** Generated voice has subtle hiss, hum, or echo
- **Fix:** Re-record in a quieter environment. Use Audacity (free) Noise Reduction effect on existing samples — capture 2 seconds of room tone, use as noise profile, apply at 12 dB reduction
- **Prevention:** Test record 10 seconds and play back through headphones before recording the full script

### Issue 2: Speaking too fast
- **Symptom:** Clone "swallows" syllables, pronunciation muddled
- **Fix:** Slow down 20% from your natural rate. Pause clearly between sentences
- **Prevention:** Set a metronome to 100-110 BPM and pace your reading. Or read with a slight smile in your voice — it slows you down naturally

### Issue 3: Sample too short
- **Symptom:** Clone is robotic, lacks the texture of your real voice
- **Fix:** Provide at least 3 minutes; ideal is 5-10 minutes with varied content
- **Prevention:** Combine Sample A/B/C/D (Section 3) + Emotion Range Script (Section 4) for ~6-8 minutes of varied training data

### Issue 4: Monotone reading
- **Symptom:** Clone sounds flat, lifeless, or sleep-inducing
- **Fix:** Include the Emotion Range Script (Section 4). Emphasize key words. Use pitch variation as you would when telling a story to a friend
- **Prevention:** Imagine you are speaking to one specific person you care about, not "reading aloud"

### Issue 5: Mixing accents or registers in the same sample
- **Symptom:** Clone is inconsistent, switches register mid-sentence
- **Fix:** Choose one accent and one register, maintain throughout the sample
- **Prevention:** Use only the script matching your primary accent (Section 3). Do not mix US, UK, AU, or SEA samples in a single voice profile

---

## 7. Voice Consistency Check

After cloning, test with 5 **new** sentences not present in the training sample to evaluate quality.

### 5 Test Sentences

```
1. "Today is a great day to start a new project."
2. "Why do you think that? I completely disagree with that view."
3. "Wow, this result is far beyond what I expected!"
4. "Please stay calm and think carefully before making this decision."
5. "Sign up today to get a 50 percent discount available only for the next 24 hours."
```

### Scoring Rubric (0-2 per criterion, 10 total)

| Criterion | 0 | 1 | 2 |
|-----------|---|---|---|
| **Tone match** | Wrong tone | Approximate | Accurate |
| **Speed match** | Too fast or slow | Slightly off | Natural pace |
| **Emotion range** | Monotone | Limited expression | Matches intended emotion |
| **Pronunciation** | Multiple errors | Minor errors | Accurate (especially proper nouns, numbers, jargon) |
| **Natural feel** | Robotic | Acceptable | Sounds like a real person |

### Overall Assessment

| Total | Grade | Action |
|-------|-------|--------|
| 8-10 | Excellent | Use in production. Re-review quarterly. |
| 6-7 | Good | Acceptable. Tune Stability and Similarity settings. |
| 4-5 | Re-record | Sample needs improvement. Check mic, environment, technique. |
| 0-3 | Start over | Major issues. Re-read Section 2 and re-record from scratch. |
