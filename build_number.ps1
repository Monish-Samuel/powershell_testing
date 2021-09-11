$props= Get-Content 'build.properties'
$props= $props -join [Environment]::Newline
$props= ConvertFrom-StringData($props)
$buildNo= $props.'MAJOR_VERSION'+"."+$props.'MINOR_VERSION'+"."+$props.'PATCH_VERSION'
Write-Output $buildNo 
