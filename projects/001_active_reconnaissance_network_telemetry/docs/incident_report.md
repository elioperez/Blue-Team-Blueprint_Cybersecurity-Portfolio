# Project 001 — Security Incident Report

## Incident Title
Controlled RDP Reconnaissance Against Windows 10 Endpoint

## Severity
Low — Controlled Laboratory Activity

## Source
Kali Linux — 192.168.56.126

## Target
Windows 10 — 192.168.56.125

## Attack Technique
Active TCP reconnaissance against TCP/3389.

## Initial Detection
Network stack investigation using PowerShell.

## Additional Telemetry
Windows Security Event Logs and Sysmon where available. (NOT Sysmon)

## Investigation
The source IP was correlated against endpoint network telemetry and available persistent event data.

## Containment
Windows Defender Firewall was configured to block inbound traffic from the validated Kali laboratory source.

## Validation
The reconnaissance activity was repeated after containment to evaluate the resulting network behavior.

## Result
Document the actual Nmap result observed before and after containment.

## Lessons Learned
The investigation demonstrated that endpoint network telemetry should be correlated with persistent logging sources because short-lived reconnaissance activity may no longer be visible through active TCP connection state after the connection terminates.
