# Threat / Attack Simulation(perform a controlled authentication test against the isolated Windows endpoint)

# Perform a controlled authentication test against the isolated Windows laboratory target.
# Ejecuta una prueba controlada de autenticación contra el objetivo Windows aislado del laboratorio.

hydra -l Administrator -p WrongPassword 192.168.56.125 rdp
