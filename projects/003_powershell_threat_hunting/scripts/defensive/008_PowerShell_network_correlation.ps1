## PowerShell activity should also be considered from a network perspective.
# Identify active network connections owned by PowerShell processes.
# Identifica conexiones de red activas pertenecientes a procesos PowerShell.

##PowerShell Network Correlation
#Active network connections were correlated with PowerShell process identifiers 
#to determine whether PowerShell processes maintained network activity.


$PowerShellProcesses = Get-Process | 
    Where-Object {$_.ProcessName -match 'powershell|pwsh'}


foreach ($Process in $PowerShellProcesses) {

    Get-NetTCPConnection -OwningProcess $Process.Id -ErrorAction SilentlyContinue |
        Select-Object LocalAddress,LocalPort,RemoteAddress,RemotePort,State,OwningProcess
}


## If there are no PowerShell network connections, that is also a valid finding.