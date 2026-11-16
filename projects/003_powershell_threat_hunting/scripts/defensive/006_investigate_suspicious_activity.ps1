## Search specifically for suspicious PowerShell characteristics:
# Search PowerShell telemetry for common suspicious execution indicators.
# Busca indicadores comunes de ejecución sospechosa en la telemetría de PowerShell.

Get-WinEvent -FilterHashtable @{
    LogName = "Microsoft-Windows-PowerShell/Operational"
    ID = 4104
} -MaxEvents 50 |
    Where-Object {
        $_.Message -match "EncodedCommand|FromBase64String|Invoke-Expression|
                    IEX|DownloadString"
    } | 
Select-Object TimeCreated,Id,Message |
Format-List
