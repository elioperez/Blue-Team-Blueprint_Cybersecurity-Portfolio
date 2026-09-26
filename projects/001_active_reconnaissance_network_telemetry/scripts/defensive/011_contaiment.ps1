# CONTAINMENT (implement host-based containment.)

# Create a Windows Defender Firewall containment rule for the Kali laboratory host.
# Crea una regla de contención de Windows Defender Firewall para el host Kali.

New-NetFirewallRule `
    -DisplayName "SOC_ISOLATION_BLOCK_KALI" `
    -Direction Inbound `
    -Action Block `
    -RemoteAddress "192.168.56.126" `
    -Profile Any

# Verify the firewall containment rule.
# Verifica la regla de contención del firewall.

Get-NetFirewallRule `
    -DisplayName "SOC_ISOLATION_BLOCK_KALI" |
    Select-Object DisplayName,
                  Enabled,
                  Direction,
                  Action,
                  Profile
