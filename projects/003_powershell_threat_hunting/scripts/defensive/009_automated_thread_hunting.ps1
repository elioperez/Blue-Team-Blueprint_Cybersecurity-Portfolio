## Automated Threat Hunting
# Search PowerShell telemetry for selected suspicious execution indicators.
# Busca indicadores seleccionados de ejecución sospechosa en la telemetría de PowerShell.

$Indicators = @(
    "EncodedCommand",
    "FromBase64String",
    "Invoke-Expression",
    "IEX",
    "DownloadString"
)

$Events = Get-WinEvent -FilterHashtable @{
    LogName = "Microsoft-Windows-PowerShell/Operational"
    Id = 4104
} -MaxEvents 100

foreach ($Event in $Events) {

    foreach ($Indicator in $Indicators) {

        if ($Event.Message -match [regex]::Escape($Indicator)) {

            Write-Host "[ALERT] Indicator detected: $Indicator" -ForegroundColor Red
            Write-Host "[ALERTA] Indicador detectado: $Indicator" -ForegroundColor Red

            Write-Host "Time: $($Event.TimeCreated)"
            Write-Host "Event ID: $($Event.Id)"
            Write-Host "---------------------------------------------"
        }
    }
}


## Automated PowerShell Threat Hunting
# An automated PowerShell hunting script evaluated Script Block Logging telemetry 
# against selected suspicious execution indicators.
