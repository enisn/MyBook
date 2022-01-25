$OutputFolder = "built/"

if (Test-Path $OutputFolder) {
    Write-Host "Output folder: '$OutputFolder' exists. Overriding existing output."
}
else{
    mkdir $OutputFolder
    Write-Host "Output folder: '$OutputFolder' was created successfully."
}

Get-Content *.md | Set-Content $OutputFolder/merged.md
pandoc -f gfm -t html5 --metadata pagetitle="My Book" --css style.css $OutputFolder/merged.md -o $OutputFolder/result.html
pandoc -f gfm -t html5 --metadata pagetitle="My Book" --css style.css $OutputFolder/merged.md -o $OutputFolder/result.pdf
