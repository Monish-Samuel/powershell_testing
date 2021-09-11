$file= ".\temp"

if(Test-Path -Path $file -PathType Leaf){
	Write-Host "Deleting [$file]"
	Remove-Item -Path $file -Force
	Sleep -s 5
}
else{
	Write-Host "Creating New path for ZIP build"
	New-Item -Path '$file' -ItemType Directory
	New-Item -Path '$file\src' -ItemType Directory
	Copy-Item -Path .\src\* -Destination $file\src
	$buildNo= $env:buildNo
	Compress-Archive -Path $file\src -DestinationPath $file\app-$buildNo.zip
	Sleep -s 5
	Write-Host "Zip File is Created"
	$Value= Get-ChildItem -Path $file\*.zip -Name
	Write-Host "ZIP FILE NAME: $Value"
}
