# Lab Configuration (Enable authentication auditing)

# Enable successful and failed logon auditing.
# Habilita la auditoría de inicios de sesión exitosos y fallidos.

auditpol /set /subcategory:"Logon" /success:enable /failure:enable

# Verify the current logon auditing configuration.
# Verifica la configuración actual de auditoría de inicios de sesión.

auditpol /get /subcategory:"Logon"
