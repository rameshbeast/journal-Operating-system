$baseDir = "c:\Users\Ramesh Bist\OneDrive\Desktop\Operating System\Operating system 1234"
Set-Location $baseDir

$edgePath = "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"

for ($i = 1; $i -le 7; $i++) {
    $odtFile = Join-Path $baseDir "week$i.odt"
    $htmlFile = Join-Path $baseDir "week$i.html"
    $pdfFile = Join-Path $baseDir "week$i.pdf"
    
    if (Test-Path $odtFile) {
        Write-Host "Converting $odtFile to PDF via HTML..."
        
        # 1. Extract content.xml from ODT (zip)
        $zipPath = Join-Path $baseDir "temp_$i.zip"
        Copy-Item $odtFile $zipPath -Force
        $tempDir = Join-Path $baseDir "temp_xml_$i"
        Expand-Archive -Path $zipPath -DestinationPath $tempDir -Force
        $contentXml = Join-Path $tempDir "content.xml"
        
        if (Test-Path $contentXml) {
            [xml]$xml = Get-Content $contentXml
            $ns = New-Object System.Xml.XmlNamespaceManager $xml.NameTable
            $ns.AddNamespace("text", "urn:oasis:names:tc:opendocument:xmlns:text:1.0")
            $ns.AddNamespace("office", "urn:oasis:names:tc:opendocument:xmlns:office:1.0")
            
            $textNodes = $xml.SelectNodes("//text:p", $ns)
            $text = ($textNodes | ForEach-Object { $_.InnerText }) -join "<br>"
            
            # 2. Save as simple HTML
            $htmlContent = "<html><head><style>body{font-family:sans-serif;padding:40px;line-height:1.6;}</style></head><body><h1>Week $i Report</h1><p>$text</p></body></html>"
            $htmlContent | Out-File $htmlFile -Encoding utf8
            
            # 3. Print HTML to PDF using Edge
            Start-Process -FilePath $edgePath -ArgumentList "--headless", "--print-to-pdf=$pdfFile", $htmlFile -Wait
            
            Write-Host "  Successfully created $pdfFile"
            Remove-Item $htmlFile -Force
        }
        Remove-Item $tempDir -Recurse -Force
        Remove-Item $zipPath -Force -ErrorAction SilentlyContinue
    }
}
Write-Host "Conversion Complete."
