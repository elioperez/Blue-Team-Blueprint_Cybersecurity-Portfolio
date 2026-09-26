# VERIFY THE FIREWALL STATE FROM WINDOWS
#(determine whether the defensive control changed the endpoint's network exposure.)

# Verify that the containment rule remains enabled.
# Verifica que la regla de contención permanezca habilitada.

Get-NetFirewallRule `
    -DisplayName "SOC_ISOLATION_BLOCK_KALI" |
    Select-Object DisplayName,
                  Enabled,
                  Direction,
                  Action,
                  Profile

# Display the complete containment rule configuration.
# Muestra la configuración completa de la regla de contención.

Get-NetFirewallRule `
    -DisplayName "SOC_ISOLATION_BLOCK_KALI" |
    Format-List *
