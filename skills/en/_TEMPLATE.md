---
# ====================
# Skill Frontmatter Standard v2.0
# For both Vietnam Edition (skills/vi/) and Global Edition (skills/en/)
# ====================

# Core identity
id: skill-name-kebab-case
name: Human-readable skill name
version: 1.0.0

# Edition & localization
edition: global              # vietnam | global
language: en                 # vi | en | both
currency: USD                # VND | USD | both | auto

# Categorization
category: strategy           # strategy | content | performance | operations
module: marketing            # marketing | dropshipping | personal-branding

# Market applicability
markets:
  - us
  - eu
  - sea
  - global

# Activation
triggers:
  - "trigger phrase 1"
  - "trigger phrase 2"
  - "campaign brief"
  - "creative brief"

# Output spec
output:
  format: markdown
  length: 1500-3000 words
  structure: tabled          # tabled | narrative | mixed

# Cross-references
related:
  - 00-marketing-plan
  - 09-customer-insight

# Quality
maturity: production         # draft | beta | production
last_review: 2026-05-11
maintainer: opa
---

# [Skill Name]

> Brief one-line description of what this skill does.

## When to use

- Trigger condition 1
- Trigger condition 2
- Trigger condition 3

## Information Gathering Protocol

Before producing output, ask the user **maximum 4 questions** to gather:

1. **[Question 1]** — what you need to know
2. **[Question 2]** — what you need to know
3. **[Question 3]** — what you need to know
4. **[Question 4]** — what you need to know

If user has already provided some of these in their initial message, skip those questions. Ask only what's missing.

## Output Template

### Section 1: [Name]

[Description. Use tables when possible.]

| Column 1 | Column 2 | Column 3 |
|---|---|---|
| ... | ... | ... |

### Section 2: [Name]

[...]

### Section 3: [Name]

[...]

## Quality Checklist

Before delivering, self-verify:

- [ ] All sections present
- [ ] Numbers consistent across sections
- [ ] Cross-references to related skills included
- [ ] Region/market context appropriate (matches `markets:` frontmatter)
- [ ] Currency matches `currency:` frontmatter
- [ ] No generic AI filler ("In today's fast-paced world…")

## Cross-References

If this skill triggers, also consider:

- **[related skill 1]** — when [condition]
- **[related skill 2]** — when [condition]

## Examples

See [`examples/`](../../examples/) for sample outputs.

---

**Maintainer:** OPA · **Module:** [marketing/dropshipping/personal-branding] · **Edition:** [vietnam/global]
