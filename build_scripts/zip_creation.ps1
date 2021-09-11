New-Item -Path '.\temp' -ItemType Directory
New-Item -Path '.\temp\src' -ItemType Directory
Copy-Item -Path .\src\* -Destination .\temp\src
$buildNo= $env:buildNo
Compress-Archive -Path .\temp\src -DestinationPath .\temp\app-$buildNo.zip
Sleep -s 5
Write-Host "Zip File is Created"
$Value= Get-ChildItem -Path .\temp\*.zip -Name
Write-Host "ZIP FILE NAME: $Value"
