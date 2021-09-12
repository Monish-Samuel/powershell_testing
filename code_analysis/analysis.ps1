Write-Host "CODE ANALYSIS START"
Write-Host "`n"
$value= Get-ChildItem -Path '.\src\*.py'

Write-Host "------------------------------Radon Code Analysis Start-----------------------------"

foreach ($file in $value){
	radon cc $file
	Sleep -s 3
}
Write-Host "------------------------------Radon Code Analysis Stop------------------------------"
Sleep -s 5
Write-Host "`n"
Write-Host "------------------------------Pylint Code Analysis Start-----------------------------"
foreach ($file in $value){
	pylint $file --reports=y
	Sleep -s 3
}
Write-Host "------------------------------Pylint Code Analysis Stop------------------------------"
Sleep -s 5
Write-Host "`n"
Write-Host "CODE ANALYSIS COMPLETE"
Exit
