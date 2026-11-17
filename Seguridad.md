# Seguridad básica que salva

- SSH con llave, sin contraseña.
  ```bash
  ssh-keygen -t ed25519
  ssh-copy-id usuario@IP-DE-LA-VM
  ```
- Firewall: solo los puertos necesarios (`sudo ufw status`).
- Usuarios con sudo, sin usar root.
- Fail2ban: frenar intentos repetidos.
- No exponer Portainer ni paneles a internet.
- Secretos en archivo `.env`, nunca en el compose ni en GitHub.
- Actualizar sistema y contenedores cada semana.
