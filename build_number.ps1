$props= Get-Content 'build.properties'
$props= $props -join [Environment]::Newline
$props= ConvertFrom-StringData($props)
$buildNo= $props.'MAJOR_VERSION'+"."+$props.'MINOR_VERSION'+"."+$props.'PATCH_VERSION'+$env.'BUILD_NUMBER'
Write-Output $buildNo | Out-File "buildNo.txt"
