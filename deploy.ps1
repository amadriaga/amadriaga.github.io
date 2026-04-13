# Deploy to GitHub Pages
# This script pushes your website to GitHub

Write-Host "=== Deploying to GitHub Pages ===" -ForegroundColor Cyan
Write-Host ""

# Check if repository exists by trying to push
Write-Host "Pushing to GitHub..." -ForegroundColor Yellow
git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "✓ Successfully deployed!" -ForegroundColor Green
    Write-Host ""
    Write-Host "Your website will be live at:" -ForegroundColor Cyan
    Write-Host "  https://amadriaga.github.io" -ForegroundColor White
    Write-Host ""
    Write-Host "Next steps:" -ForegroundColor Yellow
    Write-Host "  1. Go to: https://github.com/amadriaga/amadriaga.github.io/settings/pages" -ForegroundColor White
    Write-Host "  2. Verify GitHub Pages is enabled (Source: main branch)" -ForegroundColor White
    Write-Host "  3. Add custom domain: madriaga.info" -ForegroundColor White
    Write-Host "  4. Enable 'Enforce HTTPS'" -ForegroundColor White
    Write-Host ""
} else {
    Write-Host ""
    Write-Host "✗ Push failed. Repository might not exist yet." -ForegroundColor Red
    Write-Host ""
    Write-Host "To create the repository:" -ForegroundColor Yellow
    Write-Host "  1. Go to: https://github.com/new" -ForegroundColor White
    Write-Host "  2. Repository name: amadriaga.github.io" -ForegroundColor White
    Write-Host "  3. Make it Public" -ForegroundColor White
    Write-Host "  4. DO NOT initialize with README" -ForegroundColor White
    Write-Host "  5. Click 'Create repository'" -ForegroundColor White
    Write-Host "  6. Run this script again: .\deploy.ps1" -ForegroundColor White
    Write-Host ""
}
