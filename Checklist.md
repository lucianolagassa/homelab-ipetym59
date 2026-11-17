# Checklist semanal del buen admin

- [ ] Actualizar sistema y contenedores.
- [ ] Revisar logs y alertas (Portainer / Cockpit / Uptime Kuma).
- [ ] Revisar espacio en disco (`df -h`).
- [ ] Verificar backups.
- [ ] Probar que los servicios responden.
- [ ] Documentar cada cambio.

## Comandos útiles
```bash
df -h
free -h
docker ps
docker logs --tail 50 NOMBRE-DEL-CONTENEDOR
systemctl status docker
```
