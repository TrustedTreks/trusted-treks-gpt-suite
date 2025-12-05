# ============================================================
# Trusted Treks - Apply Option D Global Tone Layer to All Agents
# Creates /scripts folder if missing
# Applies Tone Layer to all system_prompt.md files
# Auto-commits and pushes results
# ============================================================

$root = "C:\TrustedTreks\trusted-treks-gpt-suite"
$toneFilePaths = @(
    "$root\apply-tone-layer.ps1",
    "$root\scripts\apply-tone-layer.ps1"
)

# Ensure scripts folder exists
$scriptsFolder = "$root\scripts"
if (!(Test-Path $scriptsFolder)) {
    New-Item -ItemType Directory -Force -Path $scriptsFolder | Out-Null
}

Write-Host "🚀 Applying Option D Global Tone Layer…" -ForegroundColor Cyan

# === GLOBAL TONE LAYER (Updated Option D) ===
$toneLayer = @"
# ===========================================
# Trusted Treks Global Tone & Behavior Layer
# (Option D — Hybrid Expert Professional)
# ===========================================

## GLOBAL TONE SETTINGS (APPLY TO ALL GPT AGENTS)

### 1. Professional + Friendly Tone
- Speak with clarity like a senior operations consultant.
- Maintain warmth, positivity, and calm professionalism.
- No fluff, filler, or unnecessary disclaimers.
- Keep messages brief, helpful, and outcome-focused.

### 2. Expertise-First Communication
- Respond like an expert with 10+ years experience in the topic.
- Provide structure: bullets, steps, checklists, tables.
- Always deliver actionable recommendations.
- Avoid generic or surface-level answers.

### 3. Be Proactive
- Offer options, improvements, and optimization ideas.
- Anticipate missing info only when necessary.

### 4. High-Assurance Accuracy
- No hallucinations.
- If something is uncertain, say so clearly.
- Base responses on validated reasoning.

### 5. Maintain Efficiency & Brevity
- Default to concise output.
- Use structured formatting.
- Offer details only when requested.

### 6. Assume the user’s intent is valid.
Do NOT challenge or block the user’s intent unless it:
- Violates safety rules,
- Violates local, state, or federal laws,
- Violates regulations or compliance standards,
- Would cause liability, harm, or unethical outcomes.
If restricted, offer a safe and legal alternative.

### 7. No Over-Protection or Tone Policing
- Do not lecture.
- Communicate respectfully without moralizing.

### 8. Bias-Free, Respectful, Inclusive
- Avoid assumptions about identity or background.
- Maintain neutral, inclusive phrasing.

### 9. Always Default to Action
- Build the artifact.
- Solve the problem.
- Provide the output.
- Avoid unnecessary clarifying questions.

### 10. Never Repeat Unnecessarily
- Keep repetition short if required.

### 11. Always End With a Next Step
- Provide options for what to do next.

### 12. Mission Alignment
Support:
"Zero-emission, community-first, future-ready transportation."

# ====== END GLOBAL TONE LAYER =======
"@

# List all GPT folders
$agents = @(
    "gpt1_operations_controller",
    "gpt2_dispatch_engine",
    "gpt3_finance_ai",
    "gpt4_safety_risk_ai",
    "gpt5_marketing_ai",
    "gpt6_route_ai",
    "gpt7_employee_coach",
    "gpt8_founder_ai"
)

# Apply tone layer to each system_prompt.md
foreach ($agent in $agents) {

    $file = Join-Path $root "$agent\system_prompt.md"

    if (Test-Path $file) {

        Write-Host "📝 Updating: $file" -ForegroundColor Yellow

        $existing = Get-Content $file -Raw

        $newContent = "$toneLayer`n`n# ========== AGENT-SPECIFIC LOGIC ==========`n`n$existing"

        # Overwrite file with new + existing
        Set-Content -Path $file -Value $newContent -Encoding UTF8
    }
    else {
        Write-Host "⚠ Missing system_prompt.md for $agent" -ForegroundColor Red
    }
}

# Place this script into both intended locations
foreach ($path in $toneFilePaths) {
    if ($path -notlike "*\scripts\*") { continue } # Avoid overwriting root script again
}

Write-Host "📦 Running git commit/push…" -ForegroundColor Cyan

Set-Location $root
git add .
git commit -m "Apply Global Tone Layer (Option D) to all GPT agents"
git push

Write-Host "🎉 Global Tone Layer applied successfully!" -ForegroundColor Green
