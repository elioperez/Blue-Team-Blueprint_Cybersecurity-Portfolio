# Enable successful and failed logon auditing.
# Habilita la auditoría de inicios de sesión exitosos y fallidos.
auditpol /set /subcategory:"Logon" /success:enable /failure:enable

## Verify:
# Verify the current logon auditing configuration.
# Verifica la configuración actual de auditoría de inicio de sesión.
auditpol /get /subcategory:"Logon"

## Expected:
# Logon: Success and Failure
