# INVESTIGATE WINDOWS NETWORK CONNECTION EVENTS

# Retrieve recent Windows Security events generated around the investigation period.
# Recupera eventos recientes de Seguridad de Windows generados durante la investigación.

Get-WinEvent -FilterHashtable @{
    LogName   = "Security"
    StartTime = (Get-Date).AddMinutes(-15)
} -MaxEvents 30 |
    Select-Object TimeCreated,Id,ProviderName,Message |
    Format-List
