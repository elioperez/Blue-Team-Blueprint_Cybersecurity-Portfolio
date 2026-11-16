# Detect recent PowerShell Script Block Logging activity.
# Detecta actividad reciente registrada por PowerShell Script Block Logging.

$events = Get-WinEvent -FilterHashtable @{
    LogName = "Microsoft-Windows-PowerShell/Operational"
    Id = 4104
} -MaxEvents 30

if ($events) {

    Write-Host "[ALERT] PowerShell script-block activity detected." -ForegroundColor Red
    Write-Host "[ALERTA] Actividad de bloques de scripts de PowerShell detectada." -ForegroundColor Red

    $events |
        Select-Object TimeCreated,Id,Message |
        Format-List

} else {

    Write-Host "[OK] No recent PowerShell script-block events detected."
    Write-Host "[OK] No se detectaron eventos recientes de bloques de scripts de PowerShell."
}
