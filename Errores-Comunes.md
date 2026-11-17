# Errores comunes y cómo evitarlos

1. **Actualizar sin backup.** -> Primero backup, después actualizar.
2. **Un solo disco, sin RAID ni copia.** -> Regla 3-2-1.
3. **Contraseña en el compose.** -> Usar archivo `.env` y no subirlo a GitHub.
4. **Exponer paneles a internet.** -> Solo red local o VPN. Nunca Portainer abierto al mundo.
5. **No monitorear.** -> Uptime Kuma + alertas. Enterarse vos primero, no el usuario.
