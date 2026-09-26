# CLEAN UP THE LAB (remove the temporary firewall rule if you no longer need it.)

# Remove the temporary laboratory containment rule.
# Elimina la regla temporal de contención del laboratorio.

Remove-NetFirewallRule `
    -DisplayName "SOC_ISOLATION_BLOCK_KALI"

# Confirm that the temporary containment rule has been removed.
# Confirma que la regla temporal de contención haya sido eliminada.

Get-NetFirewallRule `
    -DisplayName "SOC_ISOLATION_BLOCK_KALI" `
    -ErrorAction SilentlyContinue
