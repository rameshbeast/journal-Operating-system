$baseDir = "c:\Users\Ramesh Bist\OneDrive\Desktop\Operating System\Operating system 1234"
Set-Location $baseDir

$word = New-Object -ComObject Word.Application
$word.Visible = $false
$word.DisplayAlerts = 0 # wdAlertsNone

for ($i = 2; $i -le 7; $i++) {
    $odtFile = Join-Path $baseDir "week$i.odt"
    $pdfFile = Join-Path $baseDir "week$i.pdf"
    
    if (Test-Path $odtFile) {
        Write-Host "Converting $odtFile to PDF..."
        try {
            # Open($FileName, $ConfirmConversions, $ReadOnly)
            $doc = $word.Documents.Open($odtFile, $false, $true)
            # 17 is the enum value for wdExportFormatPDF
            $doc.ExportAsFixedFormat($pdfFile, 17)
            $doc.Close(0) # 0 = wdDoNotSaveChanges
            Write-Host "  Successfully saved to $pdfFile"
        } catch {
            Write-Host "  Error converting $odtFile : $($_.Exception.Message)"
        }
    } else {
        Write-Host "  $odtFile not found."
    }
}

$word.Quit()
Write-Host "Conversion Complete."
