# LaTeX Setup Verification Script
# Run this in PowerShell as Administrator

Write-Host "Checking LaTeX Setup..." -ForegroundColor Cyan

# Check VS Code
$vscodePath = Get-Command code -ErrorAction SilentlyContinue
if ($vscodePath) {
    Write-Host "✓ VS Code is installed" -ForegroundColor Green
} else {
    Write-Host "✗ VS Code not found in PATH" -ForegroundColor Red
}

# Check MiKTeX
$miktexPath = Get-Command latex -ErrorAction SilentlyContinue
if ($miktexPath) {
    Write-Host "✓ MiKTeX is installed" -ForegroundColor Green
    latex --version | Select-Object -First 1
} else {
    Write-Host "✗ MiKTeX not found" -ForegroundColor Red
}

# Check Perl
$perlPath = Get-Command perl -ErrorAction SilentlyContinue
if ($perlPath) {
    Write-Host "✓ Perl is installed" -ForegroundColor Green
    perl -v | Select-Object -First 2
} else {
    Write-Host "✗ Perl not found" -ForegroundColor Red
}

Write-Host "`nVerification complete!" -ForegroundColor Cyan
