# VERIFY WINDOWS NETWORK BASELINE 
#(we need to know what the endpoint looks like during normal operation.)

# Capture the current TCP listening-state baseline.
# Captura la línea base actual de puertos TCP en estado de escucha.

Get-NetTCPConnection -State Listen |
    Select-Object LocalAddress,LocalPort,State,OwningProcess |
    Sort-Object LocalPort |
    Format-Table -AutoSize
