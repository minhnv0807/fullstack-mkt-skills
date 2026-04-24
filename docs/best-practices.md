# Best Practices

Power-user patterns for getting the most out of these skills.

---

## For Using Skills

### Pattern 1: Context-First Workflow

Always run `product-marketing-context` FIRST per project, not per task.

```
Project start:
  Day 1: Set up product-marketing-context (30-45 min)
  Day 2+: Use other skills — AI reads context, no repeat questions

Wrong way:
  Each task: Re-explain product to AI (wastes 5-10 min per task)
```

**ROI:** If you run 20 marketing tasks/month, saving 7 min each = 2.3 hours/month saved.

### Pattern 2: Skill Chaining Over Single Skills

Instead of running skills one-by-one, use workflows:

```
Single skill (slow):
  > Plan marketing
  [wait for output]
  > Now brief a campaign
  [wait for output]
  > Now write content calendar
  [wait for output]

Chained (fast):
  > Run campaign-launch workflow
  [AI chains 7 skills with handoffs]
```

### Pattern 3: Update Context as You Learn

Launch day assumptions ≠ month 3 reality. Update `product-marketing-context` every quarter.

```
Every quarter:
  > Update product-marketing-context based on Q[X] learnings
```

AI asks what changed (new customer segment? new competitor? pivoted positioning?).

### Pattern 4: Document Verbatim Customer Language

The most underused section of product-marketing-context is #9 (Voice of Customer).

**Why it matters:** AI copies language from that section into ad copy, scripts, emails. Generic language = generic output.

**How to collect:**
- Weekly: Copy 3-5 customer messages from Zalo/Messenger inbox
- Monthly: Copy 5 review excerpts from Shopee/Google
- Quarterly: Transcribe 1 sales call

Paste verbatim into section 9. Don't paraphrase.

### Pattern 5: Benchmark vs Reality Gap Analysis

Every month, compare your numbers vs `references/benchmarks-vietnam.md`:

| Metric | Your Number | VN Benchmark | Gap | Action |
|--------|-------------|--------------|-----|--------|
| CPMess | 32K | 25-40K (avg) | OK | Maintain |
| Lead→Booking | 45% | 50-60% (tot) | -5-15% | Audit script |
| ROAS | 3.8x | 2-4x (avg) | OK | Scale test |

Gaps >15% = run `03-danh-gia-hieu-suat` immediately.

---

## For Authoring Skills

### Pattern 1: Trigger Phrases Are Marketing

Your skill's `description` field is its "ad." Include:

- **Explicit triggers:** "When user mentions X, Y, Z"
- **Implicit triggers:** Common phrasings customers use
- **Reference:** "See skill Y for related X"
- **Outcome:** What the skill produces

**Good:**
```yaml
description: "When user wants to write TikTok/Reels/Shorts video scripts. Also use when user mentions 'kich ban video', 'hook TikTok', 'script UGC'. Produces 2 A/B script variants with hooks, CTAs, and filming guides. For ad copy, see 05-copy-quang-cao."
```

**Bad:**
```yaml
description: "Writes video scripts."
```

### Pattern 2: Question Collection Discipline

Max 4 questions upfront. More = user drops off.

**Priority order:**
1. Product/service (what)
2. Audience (who)
3. Constraint (budget/time)
4. Stage (new/growth/mature)

Don't ask:
- Questions the context file answers
- Questions the skill output would reveal
- Taste questions ("What tone do you want?")

### Pattern 3: Output Is a File, Not a Chat Response

Every skill output should be a complete `.md` file:

```
BAD:  "Here's your plan... <3 paragraphs>"
GOOD: "Saved to: ke-hoach-mkt-luna-spa-20260424.md"
       [full 2000-word structured document]
```

File names: `[skill-name]-[product]-[YYYYMMDD].md`

### Pattern 4: Tables Over Prose

Users scan, don't read. Use tables for anything comparable:

```markdown
BAD:
Budget allocation should prioritize Meta Ads because it gives 
better targeting. TikTok Ads are cheaper but less precise. Google 
Ads are expensive but high-intent.

GOOD:
| Channel | Budget % | Strength | Weakness |
|---------|----------|----------|----------|
| Meta | 50% | Best targeting | Higher CPM |
| TikTok | 30% | Lowest CPC | Less precise |
| Google | 20% | High intent | Expensive |
```

### Pattern 5: Cross-Reference, Don't Duplicate

If skill A needs info skill B generates, reference B:

```markdown
## Cross-references
- For ad copy on this campaign, run `05-copy-quang-cao` after
- For budget details, see `10-tinh-kpi-nguoc` output
- For ongoing optimization, chain with `03-danh-gia-hieu-suat` weekly
```

This creates skill networks instead of monoliths.

### Pattern 6: Under 500 Lines

If skill exceeds 500 lines → move detail to `references/`:

```
skills/11-thiet-lap-kenh/
├── SKILL.md             (<500 lines, main flow)
└── references/
    ├── tiktok-setup.md  (detailed TikTok checklist)
    ├── zalo-setup.md    (detailed Zalo checklist)
    └── email-setup.md   (detailed email checklist)
```

SKILL.md links to references when user picks a channel.

### Pattern 7: Test Your Skill 3 Times

Before committing, test with 3 different products:

1. Easy case (matches benchmarks)
2. Edge case (unusual industry)
3. Hard case (low budget / early stage)

If output is generic in any case → rewrite.

---

## For Teams

### Pattern 1: Shared Context File

For teams using the skills:

```
team-project/
├── .agents/
│   └── product-marketing-context.md  ← commit to git
└── [project files]
```

Everyone pulls same context = consistent outputs across team.

### Pattern 2: Role → Agent Mapping

Match team roles to agent personas:

| Role | Agent | Primary Skills |
|------|-------|---------------|
| Marketing Manager | mkt-strategist | 00, 02, 08, 09 |
| Content Writer | content-producer | 01, 04, 05, 06 |
| Ads Manager | performance-analyst | 03, 07, 10, 13, 19 |
| CRM Manager | channel-operator | 11, 12, 14, 15, 18 |

Each person becomes expert at their agent's skills.

### Pattern 3: Weekly Skill Runs

Regular cadence builds muscle memory:

| Day | Skill Run |
|-----|-----------|
| Mon | 01 (content calendar review) |
| Tue | 04 (video scripts for week) |
| Wed | 05 (ad copy if launching) |
| Thu | 03 (performance audit) |
| Fri | 07 (weekly mini-report) |
| Last Fri of month | Monthly cycle workflow |

### Pattern 4: Skill Output Archive

Save all outputs with date in git or Drive:

```
marketing-outputs/
├── 2026-04/
│   ├── ke-hoach-mkt-20260415.md
│   ├── brief-chien-dich-tet-20260418.md
│   └── bao-cao-thang-4-20260430.md
└── 2026-05/
    └── ...
```

Over time this becomes institutional knowledge.

---

## Anti-Patterns

### 1. Blindly copy-pasting AI output

AI is ~80% right. Always review:
- Numbers (realistic?)
- Timelines (achievable?)
- Channel mix (you have resources?)

### 2. Running skills without context

If `.agents/product-marketing-context.md` doesn't exist, AI has to guess = generic output.

### 3. Over-customizing skills

Don't edit `skills/*/SKILL.md` unless you know what you're doing. Fork instead:

```bash
# Wrong: edit in place (breaks updates)
vim skills/05-copy-quang-cao/SKILL.md

# Right: fork and customize
gh repo fork minhnv0807/fullstack-mkt-skills
```

### 4. Ignoring benchmarks

"My CPMess is 80K, is that OK?" → Check benchmarks (should be 25-40K average). You need optimization, not validation.

### 5. Not updating context

Context written 6 months ago = misaligned with current reality. Update quarterly minimum.

---

## Advanced Patterns

### Custom skill for your niche

Fork → add skill for your specific industry:

```
skills/20-niche-skill/SKILL.md
```

Example niches: real estate (BDS), crypto, B2B SaaS VN, food delivery, online courses.

Contribute back via PR if generally useful.

### Multi-language variants

Skills can have language variants:

```
skills/05-copy-quang-cao/
├── SKILL.md        (Vietnamese - default)
├── SKILL.en.md     (English variant)
└── SKILL.id.md     (Indonesian variant)
```

Frontmatter marks language:
```yaml
---
name: 05-copy-quang-cao
language: vi
---
```

### Skill versioning for A/B tests

Test skill improvements:

```
skills/05-copy-quang-cao/
├── SKILL.md        (v2.0.0 current)
└── experimental/
    └── SKILL.md    (v2.1.0-beta testing new framework)
```

Compare outputs from both, promote winner.

### Integration with CRM/analytics

Skills can reference external data:

```markdown
## Step 1: Pull data
Run: `cat latest-meta-ads.csv | claude-code --input`

## Step 2: Analyze with skill 13
```

Workflow combines skill + shell + CRM export.

---

## Resources

- [Getting Started](getting-started.md) — new user onboarding
- [CONTRIBUTING.md](../CONTRIBUTING.md) — how to contribute
- [Agent Skills Spec](https://agentskills.io) — official spec
- [GitHub Discussions](https://github.com/minhnv0807/fullstack-mkt-skills/discussions) — community Q&A
