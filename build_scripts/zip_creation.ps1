if(Test-Path -Path .\source-repo -PathType Any){
	Write-Host "Deleting .\source-repo"
	Get-ChildItem -Path ".\" -Directory -Filter "source-repo" | Remove-Item -Recurse -Confirm:$false -Force
	Sleep -s 5
}
if(-not(Test-Path -Path .\source-repo\*.zip -PathType Leaf)){
	Write-Host "Creating New path for ZIP build"
	New-Item -Path '.\source-repo' -ItemType Directory
	New-Item -Path '.\source-repo\src' -ItemType Directory
	Copy-Item -Path .\src\* -Destination .\source-repo\src
	$buildNo= $env:buildNo
	Compress-Archive -Path .\source-repo\src -DestinationPath .\source-repo\app-$buildNo.zip
	Sleep -s 5
	Write-Host "Zip File is Created"
	$Value= Get-ChildItem -Path .\source-repo\*.zip -Name
	Write-Host "ZIP FILE NAME: $Value"
}
