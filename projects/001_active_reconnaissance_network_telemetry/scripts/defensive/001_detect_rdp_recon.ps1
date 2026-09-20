# Project 001 - RDP Reconnaissance Detection
# Proyecto 001 - Detección de Reconocimiento RDP

$KaliIP = "192.168.56.125"
$TargetPort = 3389

# Query active TCP connections associated with the Kali source.
# Consulta conexiones TCP activas asociadas con el origen Kali.

$Connections = Get-NetTCPConnection `
    -RemoteAddress $KaliIP `
    -ErrorAction SilentlyContinue |
    Where-Object {
        $_.LocalPort -eq $TargetPort -or
        $_.RemotePort -eq $TargetPort
    }

# Evaluate whether suspicious RDP-related activity was observed.
# Evalúa si se observó actividad sospechosa relacionada con RDP.

if ($Connections) {

    Write-Host "[ALERT] Possible RDP reconnaissance detected." -ForegroundColor Red

    $Connections |
        Select-Object LocalAddress,
                      LocalPort,
                      RemoteAddress,
                      RemotePort,
                      State,
                      OwningProcess |
        Format-Table -AutoSize

} else {

    Write-Host "[INFO] No active RDP connection associated with Kali was observed." `
        -ForegroundColor Yellow

    Write-Host "[INFO] Review persistent telemetry such as Windows Event Logs or Sysmon." `
        -ForegroundColor Yellow
}