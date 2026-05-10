# Validate skills against Agent Skills Specification
# Reference: https://agentskills.io/specification.md

$Issues = 0
$Warnings = 0
$Passed = 0

Write-Host "Validating Skills Against Agent Skills Specification" -ForegroundColor Cyan
Write-Host "=====================================================" -ForegroundColor Cyan
Write-Host ""

# Auto-discover both clusters: VN (skills/) and Global (skills-global/)
$SkillDirs = @()
if (Test-Path "skills") { $SkillDirs += "skills" }
if (Test-Path "skills-global") { $SkillDirs += "skills-global" }

foreach ($SkillsDir in $SkillDirs) {
Write-Host "--- Cluster: $SkillsDir ---" -ForegroundColor Cyan
Get-ChildItem -Path $SkillsDir -Directory | ForEach-Object {
    $skillName = $_.Name

    # Skip non-skill directories
    if ($skillName -eq "references") { return }

    $skillFile = Join-Path $_.FullName "SKILL.md"
    $errors = @()
    $warnings = @()

    if (-not (Test-Path $skillFile)) {
        Write-Host "FAIL $skillName" -ForegroundColor Red
        Write-Host "   Missing SKILL.md"
        $script:Issues++
        return
    }

    $content = Get-Content $skillFile -Raw
    if ($content -notmatch '(?s)^---\s*\n(.*?)\n---') {
        Write-Host "FAIL $skillName" -ForegroundColor Red
        Write-Host "   Missing YAML frontmatter"
        $script:Issues++
        return
    }

    $frontmatter = $Matches[1]

    # Validate name
    if ($frontmatter -match 'name:\s*(\S+)') {
        $nameInFile = $Matches[1]
        if ($nameInFile -ne $skillName) {
            $errors += "Name mismatch: dir='$skillName' frontmatter='$nameInFile'"
        } elseif ($nameInFile -notmatch '^[a-z0-9]([a-z0-9-]{0,62}[a-z0-9])?$') {
            $errors += "Invalid name format: must be lowercase a-z, 0-9, hyphens"
        }
    } else {
        $errors += "Missing 'name' field"
    }

    # Validate description
    if ($frontmatter -match 'description:\s*"?([^"\n]+)"?') {
        $desc = $Matches[1]
        $descLen = $desc.Length
        if ($descLen -lt 1 -or $descLen -gt 1024) {
            $errors += "Description length $descLen chars (must be 1-1024)"
        }
        if ($desc -notmatch '(?i)khi|when|dung|use|mention') {
            $warnings += "Description may lack trigger phrases"
        }
    } else {
        $errors += "Missing 'description' field"
    }

    # Validate file length
    $lineCount = (Get-Content $skillFile).Count
    if ($lineCount -gt 500) {
        $warnings += "SKILL.md is $lineCount lines (recommended <500)"
    }

    # Report
    if ($errors.Count -gt 0) {
        Write-Host "FAIL $skillName" -ForegroundColor Red
        $errors | ForEach-Object { Write-Host "   Error: $_" }
        $warnings | ForEach-Object { Write-Host "   Warn: $_" -ForegroundColor Yellow }
        $script:Issues++
    } elseif ($warnings.Count -gt 0) {
        Write-Host "WARN $skillName" -ForegroundColor Yellow
        $warnings | ForEach-Object { Write-Host "   $_" -ForegroundColor Yellow }
        $script:Warnings++
    } else {
        Write-Host "PASS $skillName" -ForegroundColor Green
        $script:Passed++
    }
}
}

# Variant pattern validation (skills 20, 22)
Write-Host ""
Write-Host "Checking variant patterns..."
foreach ($variant_skill in @("20-brief-client-intake", "22-personal-brand-context")) {
  $variantsPath = "skills/$variant_skill/variants"
  if (Test-Path $variantsPath) {
    $variant_count = (Get-ChildItem $variantsPath -Filter "*.md").Count
    if ($variant_count -ge 3) {
      Write-Host "PASS $variant_skill`: $variant_count variants found" -ForegroundColor Green
    } else {
      Write-Host "WARN $variant_skill`: only $variant_count variants (expected >=3)" -ForegroundColor Yellow
    }
  } else {
    Write-Host "WARN ${variant_skill}: no variants/ folder found" -ForegroundColor Yellow
  }
}

# Skill 22 specific: check 01-founder, 02-coach, 03-creator
if (Test-Path "skills/22-personal-brand-context/variants") {
  foreach ($variant in @("01-founder.md", "02-coach.md", "03-creator.md")) {
    $varPath = "skills/22-personal-brand-context/variants/$variant"
    if (Test-Path $varPath) {
      Write-Host "PASS skill-22 variant: $variant" -ForegroundColor Green
    } else {
      Write-Host "FAIL skill-22 variant missing: $variant" -ForegroundColor Red
    }
  }
}

# Variant pattern validation for global cluster
Write-Host ""
Write-Host "Checking global variant patterns..."

# Foundation
if (Test-Path "skills-global/product-marketing-context-global/variants") {
  $count = (Get-ChildItem "skills-global/product-marketing-context-global/variants" -Filter "*.md").Count
  if ($count -ge 4) {
    Write-Host "PASS foundation-global: $count variants" -ForegroundColor Green
  } else {
    Write-Host "WARN foundation-global: only $count variants" -ForegroundColor Yellow
  }
}

# Skill 22 PB foundation
if (Test-Path "skills-global/22-personal-brand-context-global/variants") {
  $count = (Get-ChildItem "skills-global/22-personal-brand-context-global/variants" -Filter "*.md").Count
  if ($count -ge 4) {
    Write-Host "PASS skill-22-global: $count variants" -ForegroundColor Green
  }
}

# Skills with variants: 03, 10, 11, 14, 17, 18, 21, 24, 27 global
foreach ($skill in @("03-performance-eval-global", "10-reverse-kpi-global", "11-channel-setup-global", "14-email-marketing-global", "17-pricing-strategy-global", "18-referral-program-global", "21-ads-audit-global", "24-ai-avatar-production-global", "27-personal-brand-monetize-global")) {
  $variantsPath = "skills-global/$skill/variants"
  if (Test-Path $variantsPath) {
    $count = (Get-ChildItem $variantsPath -Filter "*.md").Count
    if ($count -ge 4) {
      Write-Host "PASS ${skill}: $count variants" -ForegroundColor Green
    }
  }
}

# Required region variants check (US/EU/SEA/LATAM)
foreach ($skill in @("product-marketing-context-global", "22-personal-brand-context-global", "03-performance-eval-global", "10-reverse-kpi-global", "11-channel-setup-global", "14-email-marketing-global", "17-pricing-strategy-global", "18-referral-program-global", "21-ads-audit-global", "24-ai-avatar-production-global", "27-personal-brand-monetize-global")) {
  $variantsPath = "skills-global/$skill/variants"
  if (Test-Path $variantsPath) {
    foreach ($variant in @("01-us.md", "02-eu.md", "03-sea.md", "04-latam.md")) {
      $varPath = "$variantsPath/$variant"
      if (-not (Test-Path $varPath)) {
        Write-Host "FAIL ${skill} missing variant: ${variant}" -ForegroundColor Red
      }
    }
  }
}

Write-Host ""
Write-Host "====================================================="
Write-Host "Passed: $Passed | Warnings: $Warnings | Issues: $Issues"
if ($Issues -eq 0) { exit 0 } else { exit 1 }
