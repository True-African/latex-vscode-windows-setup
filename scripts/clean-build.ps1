# Clean build script - removes auxiliary files and rebuilds
param(
    [string]$TexFile = "main.tex"
)

Write-Host "Cleaning LaTeX build files..." -ForegroundColor Cyan

# Remove common LaTeX auxiliary files
Get-ChildItem -Path . -Include @(
    "*.aux", "*.bbl", "*.blg", "*.idx", "*.ind",
    "*.lof", "*.lot", "*.out", "*.toc", "*.acn",
    "*.acr", "*.alg", "*.glg", "*.glo", "*.gls",
    "*.ist", "*.fls", "*.log", "*.fdb_latexmk"
) -Recurse | Remove-Item -Force

Write-Host "Cleaned auxiliary files" -ForegroundColor Green

# Rebuild the document
Write-Host "Rebuilding $TexFile..." -ForegroundColor Cyan
latexmk -pdf -interaction=nonstopmode $TexFile

Write-Host "Build complete!" -ForegroundColor Green
