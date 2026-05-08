#!/bin/bash
# Validate skills against Agent Skills Specification
# Reference: https://agentskills.io/specification.md

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

SKILLS_DIR="skills"
ISSUES=0
WARNINGS=0
PASSED=0

echo "Validating Skills Against Agent Skills Specification"
echo "====================================================="
echo ""

for skill_dir in "$SKILLS_DIR"/*/; do
    skill_name=$(basename "$skill_dir")

    # Skip non-skill directories
    [[ "$skill_name" == "references" ]] && continue

    skill_file="$skill_dir/SKILL.md"
    errors=()
    warnings=()

    # Check SKILL.md exists
    if [[ ! -f "$skill_file" ]]; then
        echo -e "${RED}FAIL $skill_name${NC} — Missing SKILL.md"
        ((ISSUES++))
        continue
    fi

    # Extract frontmatter
    frontmatter=$(sed -n '/^---$/,/^---$/p' "$skill_file" | head -n -1 | tail -n +2)

    if [[ -z "$frontmatter" ]]; then
        echo -e "${RED}FAIL $skill_name${NC} — Missing YAML frontmatter"
        ((ISSUES++))
        continue
    fi

    # Validate name
    name_in_file=$(echo "$frontmatter" | grep "^name:" | sed 's/^name: //' | tr -d ' ')

    if [[ -z "$name_in_file" ]]; then
        errors+=("Missing 'name' field")
    elif [[ "$name_in_file" != "$skill_name" ]]; then
        errors+=("Name mismatch: dir='$skill_name' frontmatter='$name_in_file'")
    elif ! [[ "$name_in_file" =~ ^[a-z0-9]([a-z0-9-]{0,62}[a-z0-9])?$ ]]; then
        errors+=("Invalid name format: must be lowercase a-z, 0-9, and hyphens only")
    fi

    # Validate description
    description=$(echo "$frontmatter" | grep "^description:" | head -1)
    if [[ $description == *'description: "'* ]]; then
        description=$(echo "$description" | sed 's/^description: "//' | sed 's/"$//')
    else
        description=$(echo "$description" | sed 's/^description: //')
    fi

    if [[ -z "$description" ]]; then
        errors+=("Missing 'description' field")
    else
        desc_len=${#description}
        if [[ $desc_len -lt 1 || $desc_len -gt 1024 ]]; then
            errors+=("Description length $desc_len chars (must be 1-1024)")
        fi
        if ! echo "$description" | grep -qi "khi\|when\|dung\|use\|mention"; then
            warnings+=("Description may lack trigger phrases")
        fi
    fi

    # Validate file length
    line_count=$(wc -l < "$skill_file")
    if [[ $line_count -gt 500 ]]; then
        warnings+=("SKILL.md is $line_count lines (recommended <500, move details to references/)")
    fi

    # Report
    if [[ ${#errors[@]} -gt 0 ]]; then
        echo -e "${RED}FAIL $skill_name${NC}"
        for e in "${errors[@]}"; do echo -e "   Error: $e"; done
        for w in "${warnings[@]}"; do echo -e "   ${YELLOW}Warn: $w${NC}"; done
        ((ISSUES++))
    elif [[ ${#warnings[@]} -gt 0 ]]; then
        echo -e "${YELLOW}WARN $skill_name${NC}"
        for w in "${warnings[@]}"; do echo -e "   ${YELLOW}$w${NC}"; done
        ((WARNINGS++))
    else
        echo -e "${GREEN}PASS $skill_name${NC}"
        ((PASSED++))
    fi
done

# Variant pattern validation (skills 20, 22)
echo ""
echo "Checking variant patterns..."
for variant_skill in "20-brief-client-intake" "22-personal-brand-context"; do
  if [ -d "skills/$variant_skill/variants" ]; then
    variant_count=$(ls skills/$variant_skill/variants/*.md 2>/dev/null | wc -l)
    if [ "$variant_count" -ge 3 ]; then
      echo -e "${GREEN}PASS${NC} $variant_skill: $variant_count variants found"
    else
      echo -e "${YELLOW}WARN${NC} $variant_skill: only $variant_count variants (expected >=3)"
    fi
  else
    echo -e "${YELLOW}WARN${NC} $variant_skill: no variants/ folder found"
  fi
done

# Skill 22 specific: check 01-founder, 02-coach, 03-creator
if [ -d "skills/22-personal-brand-context/variants" ]; then
  for variant in "01-founder.md" "02-coach.md" "03-creator.md"; do
    if [ -f "skills/22-personal-brand-context/variants/$variant" ]; then
      echo -e "${GREEN}PASS${NC} skill-22 variant: $variant"
    else
      echo -e "${RED}FAIL${NC} skill-22 variant missing: $variant"
    fi
  done
fi

echo ""
echo "====================================================="
echo "Passed: $PASSED | Warnings: $WARNINGS | Issues: $ISSUES"
[[ $ISSUES -eq 0 ]] && exit 0 || exit 1
