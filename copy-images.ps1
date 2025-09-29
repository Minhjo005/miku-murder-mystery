# Miku Murder Mystery - Image Copy Script

# This script helps you copy the clue images to the correct directory
# Run this in PowerShell from the project directory

$sourceDir = "C:\Users\admin\Downloads\Miku Murder Mystery"
$targetDir = ".\images"

# Check if source directory exists
if (-Not (Test-Path $sourceDir)) {
    Write-Host "Source directory not found: $sourceDir" -ForegroundColor Red
    Write-Host "Please update the `$sourceDir variable with the correct path to your clue images." -ForegroundColor Yellow
    exit 1
}

# Create target directory if it doesn't exist
if (-Not (Test-Path $targetDir)) {
    New-Item -ItemType Directory -Path $targetDir -Force
    Write-Host "Created directory: $targetDir" -ForegroundColor Green
}

# List of required image files
$requiredImages = @(
    "Clue 1.png",
    "Clue 3.png", 
    "Clue 4.png",
    "Clue 5.png",
    "Clue 6.png",
    "Clue 7.png",
    "Clue 8.png",
    "Start.png"
)

Write-Host "Note: Load bearing coconut and Print On Wall are physical prints, not included in website." -ForegroundColor Yellow

Write-Host "Copying clue images..." -ForegroundColor Cyan

foreach ($image in $requiredImages) {
    $sourcePath = Join-Path $sourceDir $image
    $targetPath = Join-Path $targetDir $image
    
    if (Test-Path $sourcePath) {
        Copy-Item $sourcePath $targetPath -Force
        Write-Host "✓ Copied: $image" -ForegroundColor Green
    } else {
        Write-Host "✗ Missing: $image" -ForegroundColor Red
    }
}

Write-Host "`nImage copy complete!" -ForegroundColor Cyan
Write-Host "Next steps:" -ForegroundColor Yellow
Write-Host "1. Open miku.html in a web browser to test" -ForegroundColor White
Write-Host "2. Generate QR codes using the URLs from README.md" -ForegroundColor White
Write-Host "3. Deploy to a web host for the final game" -ForegroundColor White