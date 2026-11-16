## Windows Endpoint Baseline
# Before generating controlled activity, inspect normal PowerShell processes.

# Capture the current PowerShell process baseline.
# Captura la línea base actual de procesos de PowerShell.
Get-Process powershell,pwsh -ErrorAction SilentlyContinue |
    Select-Object Id,ProcessName,CPU,StartTime,Path |
    Format-Table -AutoSize


# Record the PowerShell version used by the Windows endpoint.
# Registra la versión de PowerShell utilizada por el endpoint Windows.
$PSVersionTable |
    Select-Object PSVersion,PSEdition,OS


# Review recent Windows process creation events.
# Revisa eventos recientes de creación de procesos de Windows.
Get-WinEvent -FilterHashtable @{
    LogName = "Security"
    Id = 4688
} -MaxEvents 10 |
    Select-Object TimeCreated,Id,Message |
    Format-List
