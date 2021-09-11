$value=$env:buildNo
if(Test-Path -Path .\*-'$value'.zip -PathType Any){
	Get-ChildItem -Path ".\source-repo" | Remove-Item -Recurse -Confirm:$false -Force
	Move-Item -Path .\*-'$value'.zip -Destination .\source-repo
	Get-ChildItem -Path '.\' *.zip | foreach { Remove-Item -Path $_.FullName }
}
