# Project 002 — Windows Authentication Attack Investigation

## 1. Project Overview
This project demonstrates the investigation of controlled authentication attacks against a Windows 10 endpoint using Kali Linux, Windows Security Event Logs, PowerShell, and Windows Defender Firewall.

## 2. Scenario
A controlled authentication attack was generated from Kali Linux against an isolated Windows 10 laboratory endpoint.

The objective was to generate authentication telemetry, identify the attack source, investigate failed logon events, implement containment, and validate the defensive response.

## 3. Objectives
- Generate controlled authentication failures.
- Capture Windows Event ID 4625.
- Identify the authentication source.
- Investigate affected accounts and authentication context.
- Develop PowerShell detection logic.
- Implement host-based containment.
- Validate the defensive response.
- Document the investigation using reproducible evidence.

## 4. Lab Architecture
- Kali Linux — 192.168.56.126
- Windows 10 — 192.168.56.125
- VirtualBox isolated laboratory environment

## 5. Technologies & Tools
- Kali Linux
- Windows 10
- Hydra
- PowerShell
- Windows Security Event Log
- Event ID 4625
- Windows Defender Firewall
- Git
- GitHub
- Visual Studio Code

## 6. Authentication Telemetry Configuration
Windows authentication auditing was enabled for successful and failed logon events.

## 7. Endpoint Baseline
The Windows Security log was reviewed before controlled authentication activity.

## 8. Controlled Activity
Kali Linux generated controlled authentication failures against the isolated Windows endpoint.

## 9. Authentication Event Investigation
Windows Event ID 4625 was analyzed to identify failed authentication activity, source information, targeted accounts, timestamps, and authentication context.

## 10. Detection Logic
A PowerShell script was developed to identify recent failed authentication events.

## 11. Investigation
Authentication telemetry was correlated with the known Kali laboratory source.

## 12. Containment
A Windows Defender Firewall rule was deployed to block the validated source address.

## 13. Validation
The controlled authentication test was repeated after containment to evaluate the defensive control.

## 14. Findings
The investigation demonstrated how Windows Security Event Logs can provide useful telemetry for detecting and investigating authentication attacks.

## 15. MITRE ATT&CK Mapping
- T1110 — Brute Force

## 16. Cisco Ethical Hacker Alignment
The project applies controlled authentication attack concepts within an isolated laboratory environment.

## 17. OffSec SOC Alignment
The project demonstrates security telemetry collection, event analysis, detection, investigation, containment, and validation.

## 18. Evidence
Evidence is maintained under:

`evidence/screenshots/`

`evidence/logs/`

`evidence/results/`

## 19. Lessons Learned
Authentication failures provide valuable endpoint telemetry that can be used to identify suspicious access attempts and support incident investigation.

## 20. Security Considerations
All authentication testing was performed against isolated laboratory systems under controlled conditions.

## 21. Interview Explanation
I built a controlled Windows authentication investigation lab using Kali Linux and Windows 10. I generated authentication failures from the Kali endpoint and investigated the resulting Windows Security Event ID 4625 telemetry. I analyzed the source address, account information, timestamps, and authentication context using PowerShell. After validating the activity, I implemented a Windows Defender Firewall rule to contain the source and repeated the test to validate the defensive response.

## 22. Professional English Vocabulary
- Authentication failure
- Failed logon
- Source address
- Account investigation
- Authentication telemetry
- Brute-force activity
- Detection
- Investigation
- Containment
- Remediation
- Validation
- Incident response

## 23. Future Improvements
- Add Sysmon correlation.
- Develop more advanced PowerShell detection logic.
- Add automated authentication-event reporting.
- Integrate the telemetry into the SIEM module.
