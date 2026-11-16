## Verify SMB:
# Check whether the Windows SMB service is reachable.
# Comprueba si el servicio SMB de Windows es accesible.

nmap -sT -p 445 192.168.56.125


# Perform a controlled password-guessing simulation against the lab SMB service.
# Ejecuta una simulación controlada de intentos de contraseña contra SMB del laboratorio.

hydra -l Administrator -P WrongPassword smb://192.168.56.125

