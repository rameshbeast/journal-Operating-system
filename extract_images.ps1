$baseDir = "c:\Users\Ramesh Bist\OneDrive\Desktop\Operating System\Operating system 1234"
Set-Location $baseDir

$imagesDir = Join-Path $baseDir "images"
if (-not (Test-Path $imagesDir)) {
    New-Item -ItemType Directory -Path $imagesDir | Out-Null
    Write-Host "Created images directory."
}

for ($i = 1; $i -le 7; $i++) {
    $odtFile = "week$i.odt"
    if (Test-Path $odtFile) {
        Write-Host "Processing $odtFile..."
        $zipFile = "week$i.zip"
        $tempDir = "temp_week$i"

        Copy-Item $odtFile $zipFile
        Expand-Archive -Path $zipFile -DestinationPath $tempDir -Force

        $picturesDir = Join-Path $tempDir "Pictures"
        if (Test-Path $picturesDir) {
            $images = Get-ChildItem -Path $picturesDir
            foreach ($img in $images) {
                $newName = "week$i" + "_" + $img.Name
                $destPath = Join-Path $imagesDir $newName
                Copy-Item $img.FullName $destPath
                Write-Host "  Extracted $newName"
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

Write-Host "Done."
