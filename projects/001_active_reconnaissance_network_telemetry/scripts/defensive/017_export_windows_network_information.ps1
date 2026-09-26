# EXPORT INVESTIGATION RESULTS (export Windows network information)

# Export the current TCP connection table for investigation evidence.
# Exporta la tabla actual de conexiones TCP como evidencia de investigación.

Get-NetTCPConnection |
    Select-Object LocalAddress,
                      LocalPort,
                      RemoteAddress,
                      RemotePort,
                      State,
                      OwningProcess |
    Export-Csv `
        -Path ".\evidence\results\windows_tcp_connections.csv" `
        -NoTypeInformation
