$props= Get-Content 'build.properties'
$props= $props -join [Environment]::Newline
$props= ConvertFrom-StringData($props)
$buildnumber= $env:BUILD_NUMBER
$buildNo= $props.'MAJOR_VERSION'+"."+$props.'MINOR_VERSION'+"."+$props.'PATCH_VERSION'+"."+$buildnumber
Write-Output $buildNo | Out-File "buildNo.txt"
$buildbranch=$props.'BRANCH_NAME'
Write-Output $buildbranch | Out-File "buildbranch.txt"

#Clean up Artifacts Before New build and Publish
if(Test-Path -Path .\artifacts -PathType Any){
  Get-ChildItem -Path ".\" -Directory -Filter "artifacts" | Remove-Item -Recurse -Confirm:$false -Force
}
