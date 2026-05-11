# Validate skills against Agent Skills Specification
# Reference: https://agentskills.io/specification.md

$Issues = 0
$Warnings = 0
$Passed = 0

Write-Host "Validating Skills Against Agent Skills Specification" -ForegroundColor Cyan
Write-Host "=====================================================" -ForegroundColor Cyan
Write-Host ""

# Auto-discover skill folders across dual-edition + modules structure (v2.0 layout)
$SkillDirs = @()
if (Test-Path "skills/vi") { $SkillDirs += "skills/vi" }
if (Test-Path "skills/en") { $SkillDirs += "skills/en" }
if (Test-Path "modules/personal-branding/vi") { $SkillDirs += "modules/personal-branding/vi" }
if (Test-Path "modules/personal-branding/en") { $SkillDirs += "modules/personal-branding/en" }
if (Test-Path "modules/dropshipping/en") { $SkillDirs += "modules/dropshipping/en" }

foreach ($SkillsDir in $SkillDirs) {
Write-Host "--- Cluster: $SkillsDir ---" -ForegroundColor Cyan
Get-ChildItem -Path $SkillsDir -Directory | ForEach-Object {
    $skillName = $_.Name

    # Skip non-skill directories
    if ($skillName -eq "references") { return }
    if ($skillName -eq "workflows") { return }

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

# Variant pattern validation (skill 20 in skills/vi/, skill 22 in modules/personal-branding/vi/)
Write-Host ""
Write-Host "Checking variant patterns..."
# Skill 20 client-intake
$path20 = "skills/vi/20-brief-client-intake/variants"
if (Test-Path $path20) {
  $variant_count = (Get-ChildItem $path20 -Filter "*.md").Count
  if ($variant_count -ge 3) {
    Write-Host "PASS 20-brief-client-intake: $variant_count variants found" -ForegroundColor Green
  } else {
    Write-Host "WARN 20-brief-client-intake: only $variant_count variants (expected >=3)" -ForegroundColor Yellow
  }
}
# Skill 22 personal-brand-context
$path22 = "modules/personal-branding/vi/22-personal-brand-context/variants"
if (Test-Path $path22) {
  $variant_count = (Get-ChildItem $path22 -Filter "*.md").Count
  if ($variant_count -ge 3) {
    Write-Host "PASS 22-personal-brand-context: $variant_count variants found" -ForegroundColor Green
  } else {
    Write-Host "WARN 22-personal-brand-context: only $variant_count variants (expected >=3)" -ForegroundColor Yellow
  }
}

# Skill 22 specific: check 01-founder, 02-coach, 03-creator
if (Test-Path "modules/personal-branding/vi/22-personal-brand-context/variants") {
  foreach ($variant in @("01-founder.md", "02-coach.md", "03-creator.md")) {
    $varPath = "modules/personal-branding/vi/22-personal-brand-context/variants/$variant"
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
if (Test-Path "skills/en/product-marketing-context-global/variants") {
  $count = (Get-ChildItem "skills/en/product-marketing-context-global/variants" -Filter "*.md").Count
  if ($count -ge 4) {
    Write-Host "PASS foundation-global: $count variants" -ForegroundColor Green
  } else {
    Write-Host "WARN foundation-global: only $count variants" -ForegroundColor Yellow
  }
}

# Skill 22 PB foundation
if (Test-Path "modules/personal-branding/en/22-personal-brand-context-global/variants") {
  $count = (Get-ChildItem "modules/personal-branding/en/22-personal-brand-context-global/variants" -Filter "*.md").Count
  if ($count -ge 4) {
    Write-Host "PASS skill-22-global: $count variants" -ForegroundColor Green
  }
}

# Skills with variants: marketing (skills/en/)
foreach ($skill in @("03-performance-eval-global", "10-reverse-kpi-global", "11-channel-setup-global", "14-email-marketing-global", "17-pricing-strategy-global", "18-referral-program-global", "21-ads-audit-global")) {
  $variantsPath = "skills/en/$skill/variants"
  if (Test-Path $variantsPath) {
    $count = (Get-ChildItem $variantsPath -Filter "*.md").Count
    if ($count -ge 4) {
      Write-Host "PASS ${skill}: $count variants" -ForegroundColor Green
    }
  }
}

# Personal Branding variants (skills 24, 27 in modules/personal-branding/en/)
foreach ($skill in @("24-ai-avatar-production-global", "27-personal-brand-monetize-global")) {
  $variantsPath = "modules/personal-branding/en/$skill/variants"
  if (Test-Path $variantsPath) {
    $count = (Get-ChildItem $variantsPath -Filter "*.md").Count
    if ($count -ge 4) {
      Write-Host "PASS ${skill}: $count variants" -ForegroundColor Green
    }
  }
}

# Required region variants check (US/EU/SEA/LATAM) — marketing
foreach ($skill in @("product-marketing-context-global", "03-performance-eval-global", "10-reverse-kpi-global", "11-channel-setup-global", "14-email-marketing-global", "17-pricing-strategy-global", "18-referral-program-global", "21-ads-audit-global")) {
  $variantsPath = "skills/en/$skill/variants"
  if (Test-Path $variantsPath) {
    foreach ($variant in @("01-us.md", "02-eu.md", "03-sea.md", "04-latam.md")) {
      $varPath = "$variantsPath/$variant"
      if (-not (Test-Path $varPath)) {
        Write-Host "FAIL ${skill} missing variant: ${variant}" -ForegroundColor Red
      }
    }
  }
}

# Required region variants check — PB (modules/personal-branding/en/)
foreach ($skill in @("22-personal-brand-context-global", "24-ai-avatar-production-global", "27-personal-brand-monetize-global")) {
  $variantsPath = "modules/personal-branding/en/$skill/variants"
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
