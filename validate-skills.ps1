# Validate skills against Agent Skills Specification
# Reference: https://agentskills.io/specification.md

$SkillsDir = "skills"
$Issues = 0
$Warnings = 0
$Passed = 0

Write-Host "Validating Skills Against Agent Skills Specification" -ForegroundColor Cyan
Write-Host "=====================================================" -ForegroundColor Cyan
Write-Host ""

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

Write-Host ""
Write-Host "====================================================="
Write-Host "Passed: $Passed | Warnings: $Warnings | Issues: $Issues"
if ($Issues -eq 0) { exit 0 } else { exit 1 }
