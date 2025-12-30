$baseDir = "c:\Users\Ramesh Bist\OneDrive\Desktop\Operating System\Operating system 1234"
Set-Location $baseDir

$extensions = @(".png", ".jpg", ".jpeg", ".gif")

for ($i = 1; $i -le 7; $i++) {
    $odtFile = "week$i.odt"
    if (Test-Path $odtFile) {
        Write-Host "Processing $odtFile..."
        $zipFile = "week$i.zip"
        $tempDir = "temp_week$i"

        Copy-Item $odtFile $zipFile
        Expand-Archive -Path $zipFile -DestinationPath $tempDir -Force

        # Find all images recursively, excluding Thumbnails directory
        $images = Get-ChildItem -Path $tempDir -Recurse | Where-Object { 
            $_.Extension -in $extensions -and $_.FullName -notmatch "Thumbnails"
        }

        if ($images) {
            $count = 1
            foreach ($img in $images) {
                $newName = "week${i}_command_screenshot_${count}$($img.Extension)"
                $destPath = Join-Path $baseDir $newName
                Copy-Item $img.FullName $destPath -Force
                Write-Host "  Extracted: $newName"
                $count++
            }
        } else {
            Write-Host "  No images found in $odtFile"
        }

        Remove-Item $tempDir -Recurse -Force
        Remove-Item $zipFile -Force
    } else {
        Write-Host "  $odtFile not found."
    }
}
Write-Host "Extraction Complete."
