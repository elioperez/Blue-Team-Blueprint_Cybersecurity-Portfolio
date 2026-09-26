# Project 001 — Active Reconnaissance & Network Stack Telemetry

## Overview
This project demonstrates a controlled Purple Team exercise involving active network reconnaissance against an isolated Windows 10 endpoint.

The exercise connects offensive reconnaissance with endpoint telemetry, PowerShell investigation, detection, host-based containment, and validation.

## Objectives
- Perform controlled TCP reconnaissance.
- Establish a Windows network baseline.
- Investigate endpoint network telemetry.
- Correlate source IP and destination port information.
- Investigate Windows and Sysmon telemetry.
- Implement PowerShell-based detection logic.
- Contain the validated source using Windows Defender Firewall.
- Validate the effectiveness of the defensive control.

## Lab Environment
| System | Role | IP |
|---|---|---|
| Kali Linux | Offensive reconnaissance | 192.168.56.126 |
| Windows 10 | Defensive endpoint | 192.168.56.125 |

## Technologies Used
- Kali Linux
- Windows 10
- Nmap
- PowerShell
- Windows Event Logs
- Sysmon
- Windows Defender Firewall
- VirtualBox
- Git
- GitHub
- Visual Studio Code

## Security Workflow
Reconnaissance
      ↓
Telemetry Collection
      ↓
Detection
      ↓
Investigation
      ↓
Containment
      ↓
Validation

## Author
Elio Perez Calzadilla
Junior Cybersecurity / Linux Administration / Infrastructure Automation
