# Reto: levantá tu primer servicio (15 minutos, en grupos)

## Paso 1 — Crear la VM en Proxmox
- Proxmox -> Create VM.
- SO: Ubuntu Server (ISO 24.04 LTS).
- Recursos sugeridos: 2 CPU, 4 GB RAM, 30 GB disco.
- Red: bridge (vmbr0) para que tenga IP de la red.

## Paso 2 — Instalar Docker en Ubuntu Server
```bash
bash scripts/install-docker.sh
# Cerrar sesión y volver a entrar
docker --version
```

## Paso 3 — Levantar Portainer
```bash
cd compose
docker compose -f portainer.yml up -d
docker ps
```
Abrir: `http://IP-DE-LA-VM:9000` y crear usuario admin.

## Paso 4 — Levantar Uptime Kuma y monitorear
```bash
docker compose -f uptime-kuma.yml up -d
```
Abrir: `http://IP-DE-LA-VM:3001`
- Crear monitor tipo HTTP a `http://IP-DE-LA-VM:9000`
- Si queda en verde, ¡ganaron!

## Si algo falla
1. `docker ps` ¿está corriendo?
2. `docker logs portainer` / `docker logs uptime-kuma`
3. ¿La IP es la correcta? `ip a`
4. ¿El firewall deja pasar el puerto? `sudo ufw status`
