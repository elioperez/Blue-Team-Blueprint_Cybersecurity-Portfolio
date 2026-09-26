#VERIFY WINDOWS EVENT LOGGING (query recent logon events)

# Retrieve recent Windows authentication events.
# Recupera eventos recientes de autenticación de Windows.

Get-WinEvent -FilterHashtable @{
    LogName = "Security"
    Id      = 4624,4625
} -MaxEvents 10 |
    Select-Object TimeCreated,Id,ProviderName |
    Format-Table -AutoSize
