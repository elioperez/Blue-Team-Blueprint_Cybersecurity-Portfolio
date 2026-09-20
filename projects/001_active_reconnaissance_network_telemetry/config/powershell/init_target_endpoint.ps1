# Project 001 - Windows Target Endpoint Initialization

# ==============================================================================
# MASTER PLAN — CYBERSECURITY PORTFOLIO
# MODULE 01 — Windows Endpoint Telemetry & Attack Forensics
# Project 001 — Active Reconnaissance & Network Stack Telemetry
# Script: init_target_endpoint.ps1
# Objective: Prepare Windows 10 Native Audit Policies and Firewall Baselines
# Execution: Run as Administrator inside the Windows 10 VM (192.168.56.125)
# ==============================================================================

Write-Host "[+] Starting Target Endpoint Initialization..." -ForegroundColor Cyan

# ------------------------------------------------------------------------------
# 1. NATIVE AUDIT POLICY CONFIGURATION
# ------------------------------------------------------------------------------
# English: Enable Success and Failure auditing for Filtering Platform (Firewall) and Logon events
# Spanish: Habilitar auditoría de Éxito y Fallo para la Plataforma de Filtrado (Firewall) y eventos de Inicio de Sesión
Write-Host "[+] Configuring Native Windows Audit Policies..." -ForegroundColor Yellow

# Audit Filtering Platform Connection (Required for Network Telemetry & Port Scanning detection)
auditpol /set /subcategory:"Filtering Platform Connection" /success:enable /failure:enable

# Audit Logon (Required for general authentication baselines)
auditpol /set /subcategory:"Logon" /success:enable /failure:enable

# ------------------------------------------------------------------------------
# 2. WINDOWS DEFENDER FIREWALL BASELINE
# ------------------------------------------------------------------------------
# English: Ensure Windows Firewall is Enabled for all profiles and temporarily allow ICMP (Ping)
# Spanish: Asegurar que el Firewall de Windows esté Activo en todos los perfiles y permitir ICMP (Ping) temporalmente
Write-Host "[+] Configuring Windows Defender Firewall Baseline..." -ForegroundColor Yellow

# Enable Firewall for Domain, Private, and Public profiles
Set-NetFirewallProfile -Profile Domain, Private, Public -Enabled True

# Enable File and Printer Sharing (Echo Request - ICMPv4-In) to allow connectivity testing from Kali
Set-NetFirewallRule -DisplayName "File and Printer Sharing (Echo Request - ICMPv4-In)" -Enabled True -Profile Any

# ------------------------------------------------------------------------------
# 3. VERIFICATION & BASELINE GENERATION
# ------------------------------------------------------------------------------
Write-Host "[+] Verification of applied Network & Audit settings:" -ForegroundColor Green
Get-NetIPAddress -InterfaceAlias "Ethernet 2" -AddressFamily IPv4 | Select-Object IPAddress, InterfaceAlias

Write-Host "`n[+] Audit Policy for Filtering Platform Connection:" -ForegroundColor Green
auditpol /get /subcategory:"Filtering Platform Connection"

Write-Host "`n[+] Endpoint Initialization Complete. Windows 10 is ready for Project 001." -ForegroundColor Cyan
