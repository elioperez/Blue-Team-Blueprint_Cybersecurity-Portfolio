# Detection

# Detect recent failed Windows authentication attempts.
# Detecta intentos recientes de autenticación fallida en Windows.

$events = Get-WinEvent -FilterHashtable @{
    LogName = "Security"
    Id = 4625
} -MaxEvents 20

if ($events) {

    Write-Host "[ALERT] Failed authentication activity detected." -ForegroundColor Red
    Write-Host "[ALERTA] Actividad de autenticación fallida detectada." -ForegroundColor Red

    $events |
        Select-Object TimeCreated, Id, Message |
        Format-List

} else {

    Write-Host "[OK] No recent failed authentication events detected."
    Write-Host "[OK] No se detectaron eventos recientes de autenticación fallida."
}
