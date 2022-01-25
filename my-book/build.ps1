$OutputFolder = "built"
$ChaptersFolder = "chapters"

if (Test-Path $OutputFolder) {
    Write-Host "Output folder: '$OutputFolder' exists. Overriding existing output."
}
else{
    mkdir $OutputFolder
    Write-Host "Output folder: '$OutputFolder' was created successfully."
}

Get-Content $ChaptersFolder/*.md | Set-Content $OutputFolder/merged.md
pandoc -f gfm -t html5 --metadata pagetitle="My Book" --css style.css $OutputFolder/merged.md -o $OutputFolder/result.html --self-contained
pandoc -f gfm -t html5 --metadata pagetitle="My Book" --css style.css $OutputFolder/merged.md -o $OutputFolder/result.pdf -V margin-left=0 -V margin-right=0 -V margin-top=0 -V margin-bottom=10 -V footer-html=layout/footer.html
