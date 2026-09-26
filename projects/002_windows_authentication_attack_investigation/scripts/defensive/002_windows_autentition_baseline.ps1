# Windows Authentication Baseline

# Review recent Windows authentication events before the controlled activity.
# Revisa eventos recientes de autenticación de Windows antes de la actividad controlada.

Get-WinEvent -FilterHashtable @{
    LogName = "Security"
    Id = 4624,4625
} -MaxEvents 10 |
    Select-Object TimeCreated,Id,ProviderName,Message |
    Format-List
