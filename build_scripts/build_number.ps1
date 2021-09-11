$props= Get-Content 'build.properties'
$props= $props -join [Environment]::Newline
$props= ConvertFrom-StringData($props)
$buildnumber= $env:BUILD_NUMBER
$buildNo= $props.'MAJOR_VERSION'+"."+$props.'MINOR_VERSION'+"."+$props.'PATCH_VERSION'+"."+$buildnumber
Write-Output $buildNo | Out-File "buildNo.txt"

//Clean up Artifacts Before New build and Publish
Get-ChildItem -Path ".\" -Directory -Filter "artifacts" | Remove-Item -Recurse -Confirm:$false -Force
