if(-not(Test-Path -Path .\temp\*.zip -PathType Leaf)){
try{
	Write-Host "Creating New path for ZIP build"
	New-Item -Path '.\temp' -ItemType Directory
	New-Item -Path '.\temp\src' -ItemType Directory
	Copy-Item -Path .\src\* -Destination .\temp\src
	$buildNo= $env:buildNo
	Compress-Archive -Path .\temp\src -DestinationPath .\temp\app-$buildNo.zip
	Sleep -s 5
	Write-Host "Zip File is Created"
	$Value= Get-ChildItem -Path .\temp\*.zip -Name
	Write-Host "ZIP FILE NAME: $Value"
	}catch {
         throw $_.Exception.Message
     }
}
else{
	Write-Host "Deleting .\temp"
	Remove-Item -Path .\temp -Force -Confirm:$false
	Sleep -s 5
}
