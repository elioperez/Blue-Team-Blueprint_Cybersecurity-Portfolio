## Now investigate the actual PowerShell activity.
# Investigate recent PowerShell script-block content.
# Investiga el contenido reciente de los bloques de scripts de PowerShell.

Get-WinEvent -FilterHashtable @{
    LogName = "Microsoft-Windows-PowerShell/Operational"
    Id = 4104
} -MaxEvents 20 |
    ForEach-Object {

        [PSCustomObject]@{
            TimeCreated = $_.TimeCreated
            EventId     = $_.Id
            Message     = $_.Message
        }
} |
    Format-List
