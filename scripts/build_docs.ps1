$ErrorActionPreference = "Stop"

$outputBase = "EDNEL-Rulebook"
$tempFile = "temp_full_docs.md"
$docsDir = "docs"
$policiesDir = "code/policies"

Write-Host "Building documentation..."

# 1. Create aggregated Markdown file
Write-Host "Aggregating content..."
"---" | Out-File -FilePath $tempFile -Encoding utf8
"title: EDNEL Rulebook" | Out-File -FilePath $tempFile -Encoding utf8 -Append
"date: $(Get-Date -Format 'yyyy-MM-dd')" | Out-File -FilePath $tempFile -Encoding utf8 -Append
"---" | Out-File -FilePath $tempFile -Encoding utf8 -Append
"" | Out-File -FilePath $tempFile -Encoding utf8 -Append

# Add README (Introduction)
if (Test-Path "README.md") {
    Write-Host "Adding README.md"
    Get-Content "README.md" -Encoding utf8 | Out-File -FilePath $tempFile -Encoding utf8 -Append
    "`n`n" | Out-File -FilePath $tempFile -Encoding utf8 -Append
}

# Add Chapters from docs/
if (Test-Path $docsDir) {
    $chapters = Get-ChildItem -Path $docsDir -Filter *.md | Sort-Object Name
    foreach ($chapter in $chapters) {
        Write-Host "Adding $($chapter.Name)"
        Get-Content $chapter.FullName -Encoding utf8 | Out-File -FilePath $tempFile -Encoding utf8 -Append
        "`n`n" | Out-File -FilePath $tempFile -Encoding utf8 -Append
    }
}

# Add Policies from code/policies/
if (Test-Path $policiesDir) {
    Write-Host "Adding Policies..."
    "# Policies`n" | Out-File -FilePath $tempFile -Encoding utf8 -Append
    
    $policies = Get-ChildItem -Path $policiesDir -Filter *.json | Sort-Object Name
    foreach ($policy in $policies) {
        Write-Host "Adding $($policy.Name)"
        "## $($policy.Name)`n" | Out-File -FilePath $tempFile -Encoding utf8 -Append
        '```json' | Out-File -FilePath $tempFile -Encoding utf8 -Append
        Get-Content $policy.FullName -Encoding utf8 | Out-File -FilePath $tempFile -Encoding utf8 -Append
        '```' | Out-File -FilePath $tempFile -Encoding utf8 -Append
        "`n`n" | Out-File -FilePath $tempFile -Encoding utf8 -Append
    }
}

# 2. Generate Word Document
Write-Host "Generating Word document ($outputBase.docx)..."
pandoc $tempFile -o "$outputBase.docx" --toc

# 3. Generate PDF (Try using wkhtmltopdf or default latex if available, else warn)
Write-Host "Generating PDF ($outputBase.pdf)..."
try {
    pandoc $tempFile -o "$outputBase.pdf" --toc --pdf-engine=wkhtmltopdf
}
catch {
    Write-Warning "PDF generation with wkhtmltopdf failed. Trying default engine..."
    try {
        pandoc $tempFile -o "$outputBase.pdf" --toc
    }
    catch {
        Write-Error "PDF generation failed. Please ensure a PDF engine (like wkhtmltopdf or MikTeX) is installed and in your PATH. You can still use the generated .docx file."
    }
}

# Cleanup
Remove-Item $tempFile
Write-Host "Done! Generated $outputBase.docx and (if successful) $outputBase.pdf"
