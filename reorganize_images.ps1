$baseDir = "c:\Users\Ramesh Bist\OneDrive\Desktop\Operating System\Operating system 1234"
Set-Location $baseDir

$imagesDir = Join-Path $baseDir "images"

if (Test-Path $imagesDir) {
    for ($i = 1; $i -le 7; $i++) {
        $pattern = "week$i" + "_*"
        $images = Get-ChildItem -Path $imagesDir -Filter $pattern
        
        $count = 1
        foreach ($img in $images) {
            $extension = $img.Extension
            $newName = "week${i}_command_screenshot_${count}${extension}"
            $destPath = Join-Path $baseDir $newName
            
            Move-Item -Path $img.FullName -Destination $destPath -Force
            Write-Host "Moved and Renamed: $($img.Name) -> $newName"
            $count++
        }
    }
    
    # Check if directory is empty before removing
    if ((Get-ChildItem -Path $imagesDir).Count -eq 0) {
        Remove-Item -Path $imagesDir -Force
        Write-Host "Removed empty images directory."
    } else {
        Write-Host "Images directory not empty, skipping removal."
    }
} else {
    Write-Host "Images directory not found."
}
