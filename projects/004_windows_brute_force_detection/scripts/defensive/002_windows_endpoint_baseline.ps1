## Windows Endpoint Baseline
# Review recent Windows Security events before the controlled attack.
# Revisa los eventos recientes del registro Security antes del ataque controlado.

Get-WinEvent -FilterHashtable @{
    LogName = "Security"
    Id      = 4624,4625
} -MaxEvents 10 |
    Select-Object TimeCreated,Id,ProviderName,Message |
    Format-List



## Windows Authentication Baseline
# Initial authentication telemetry was reviewed before controlled brute-force activity.
