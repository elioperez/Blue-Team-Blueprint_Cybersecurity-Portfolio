# DEFENSIVE HUNT: WINDOWS NETWORK STACK

# Search for TCP connections associated with the Kali laboratory host.
# Busca conexiones TCP asociadas con el host Kali del laboratorio.

Get-NetTCPConnection -RemoteAddress "192.168.56.126" `
    -ErrorAction SilentlyContinue |
    Select-Object LocalAddress,LocalPort,RemoteAddress,RemotePort,State,OwningProcess |
    Format-Table -AutoSize
