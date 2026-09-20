##  Investigation — Network Stack Analysis (DEFENSIVE HUNT: WINDOWS NETWORK STACK)

### Live TCP Telemetry Query
To investigate active network connections originating from the attacker host, the following PowerShell command was executed on the Windows target endpoint:

```powershell
Get-NetTCPConnection -RemoteAddress 192.168.56.126 -ErrorAction SilentlyContinue
# English: Query active TCP states mapped to the Kali Linux source IP.
# Spanish: Consultar estados TCP activos mapeados a la IP origen de Kali Linux.
```

### Telemetry Evidence & Analysis

#### Figure 007 — Windows Network Stack Telemetry Investigation
PowerShell was used to investigate TCP activity associated with the Kali reconnaissance source.

* **Observed Result:** [Insert screenshot here or specify if empty]
* **Evidence Location:** `evidence/results/network_stack_query.txt`
* **GitHub Location:** `projects/001_active_reconnaissance_network_telemetry/evidence/results/001_ nmap_rdp_reconnaissance.txt`

> **Analytical Note:** 
> No active TCP connection associated with the Kali source was present at the time of the query. This demonstrates the limitation of relying exclusively on volatile connection-state telemetry for short-lived reconnaissance activity.