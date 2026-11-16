## Controlled PowerShell Activity
# generate safe, controlled PowerShell activity rather than executing destructive commands.

# Generate controlled PowerShell activity for threat-hunting telemetry.
# Genera actividad controlada de PowerShell para producir telemetría de threat hunting.

$TargetPath = "$env:TEMP\Project003_Test.txt"

"Project 003 controlled PowerShell activity" |
    Out-File -FilePath $TargetPath

Get-ChildItem $env:TEMP |
    Select-Object Name,Length,LastWriteTime

Get-Content $TargetPath

Remove-Item $TargetPath -Force
