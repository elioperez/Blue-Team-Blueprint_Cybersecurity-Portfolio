## Enable PowerShell Script Block Logging
# Enable PowerShell Script Block Logging through the Windows registry.
# Habilita el registro de bloques de scripts de PowerShell mediante el registro de Windows.

New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging" `
    -Force | Out-Null

New-ItemProperty `
    -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging" `
    -Name "EnableScriptBlockLogging" `
    -PropertyType DWORD `
    -Value 1 `
    -Force


# Verify that PowerShell Script Block Logging is enabled.
# Verifica que el registro de bloques de scripts de PowerShell esté habilitado.

Get-ItemProperty `
    -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging"

## Enable PowerShell Module Logging
# Enable PowerShell Module Logging.
# Habilita el registro de módulos de PowerShell.

New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ModuleLogging" `
    -Force | Out-Null

New-ItemProperty `
    -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ModuleLogging" `
    -Name "EnableModuleLogging" `
    -PropertyType DWORD `
    -Value 1 `
    -Force


## 3 Enable Process Creation Auditing
# Enable process creation auditing.
# Habilita la auditoría de creación de procesos.
auditpol /set /subcategory:"Process Creation" /success:enable


# Verify process creation auditing.
# Verifica la auditoría de creación de procesos.
auditpol /get /subcategory:"Process Creation"
