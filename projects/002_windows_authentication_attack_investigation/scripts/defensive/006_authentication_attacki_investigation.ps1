# Investigation (Extract the source address from Event 4625)

# Investigate the source addresses associated with failed authentication events.
# Investiga las direcciones de origen asociadas con eventos de autenticación fallida.

Get-WinEvent -FilterHashtable @{
    LogName = "Security"
    Id = 4625
} -MaxEvents 20 |
    ForEach-Object {
        $_.Message
    } |
    Select-String "Source Network Address"


# Investigate account names involved in failed authentication activity.
# Investiga los nombres de cuenta involucrados en actividad de autenticación fallida.

Get-WinEvent -FilterHashtable @{
    LogName = "Security"
    Id = 4625
} -MaxEvents 20 |
    ForEach-Object {
        $_.Message
    } |
    Select-String "Account Name"
