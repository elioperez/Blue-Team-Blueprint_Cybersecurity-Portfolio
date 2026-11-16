## Investigate PowerShell processes:
# Investigate currently running PowerShell processes.
# Investiga los procesos PowerShell actualmente ejecutándose.

Get-CimInstance Win32_Process |
    Where-Object {
        $_.Name -in @("powershell.exe","pwsh.exe")
    } |
    Select-Object ProcessId,ParentProcessId,Name,CommandLine |
    Format-List

## Investigate process-creation telemetry:
# Investigate recent Windows PowerShell process creation events.
# Investiga eventos recientes de creación de procesos PowerShell en Windows.

Get-WinEvent -FilterHashtable @{
    LogName = "Security"
    Id = 4688
} -MaxEvents 50 |
    Where-Object {
        $_.Message -match "powershell.exe|pwsh.exe"
    } |
    Select-Object TimeCreated,Id,Message |
    Format-List