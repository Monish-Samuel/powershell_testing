New-Item -Path '..\temp' -ItemType Directory
New-Item -Path '..\temp\src' -ItemType Directory
Copy-Item -Path ..\src\* -Destination ..\temp\src
Compress-Archive -Path ..\temp\src -DestinationPath ..\temp\app.zip
Sleep -s 5
Write-Host "Zip File is Created"