# Containment / Remediation
# Block inbound traffic from the validated Kali laboratory source.
# Bloquea tráfico entrante desde el origen Kali validado del laboratorio.

New-NetFirewallRule `
    -DisplayName "SOC_P002_BLOCK_AUTH_ATTACK_SOURCE" `
    -Direction Inbound `
    -Action Block `
    -RemoteAddress "192.168.56.126" `
    -Profile Any


# Verify that the authentication attack containment rule is active.
# Verifica que la regla de contención del ataque de autenticación esté activa.

Get-NetFirewallRule `
    -DisplayName "SOC_P002_BLOCK_AUTH_ATTACK_SOURCE" |
    Select-Object DisplayName,Enabled,Direction,Action,Profile
