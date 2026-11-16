## Telemetry Generation  (INVESTIGATION)

# PowerShell Script Block Events (Event ID 4104: PowerShell Script Block Logging.)
# Query PowerShell Script Block Logging events.
# Consulta eventos generados por PowerShell Script Block Logging.

Get-WinEvent -FilterHashtable @{
    LogName = "Microsoft-Windows-PowerShell/Operational"
    Id = 4104
} -MaxEvents 20 |
    Select-Object TimeCreated,Id,Message |
    Format-Table -AutoSize


## PowerShell Module Events
# Query PowerShell module logging events.
# Consulta eventos de registro de módulos de PowerShell.

Get-WinEvent -FilterHashtable @{
    LogName = "Microsoft-Windows-PowerShell/Operational"
    Id = 4103
} -MaxEvents 20 |
    Select-Object TimeCreated,Id,Message |
    Format-Table -AutoSize