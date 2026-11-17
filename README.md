# Homelab IPETyM 59 — Gestión y mantenimiento de servidores

Charla de 45 a 60 minutos — IPETyM 59, Cruz Alta.
Proxmox VE + Ubuntu Server + Docker + Portainer + Cockpit + Pulse + Uptime Kuma.

> La idea no es tener el servidor más potente, sino el mejor cuidado:
> virtualizar para ordenar, monitorear para enterarse a tiempo,
> respaldar para recuperar y documentar cada cambio.

---

## 🚀 El reto (en 15 minutos, en grupos)

1. Crear la VM en Proxmox.
2. Instalar Docker en Ubuntu Server.
3. Levantar Portainer.
4. Levantar Uptime Kuma y monitorear un servicio.
5. Mostrar el servicio en verde. El grupo que lo muestra primero, gana.

Detalle paso a paso: ver [`docs/reto.md`](docs/reto.md)

---

## 🗺️ Arquitectura

```
Hardware
  └── Proxmox VE
        └── VM con Ubuntu Server
              └── Docker
                    ├── Portainer
                    ├── Uptime Kuma
                    ├── Cockpit
                    └── Pulse Dashboard
```

---

## 📦 Qué hay en este repo

| Carpeta / archivo | Para qué sirve |
|---|---|
| `compose/portainer.yml` | Levantar Portainer |
| `compose/uptime-kuma.yml` | Levantar Uptime Kuma |
| `compose/stack-ejemplo.yml` | Portainer + Uptime Kuma juntos |
| `scripts/install-docker.sh` | Instalar Docker + Docker Compose en Ubuntu Server |
| `scripts/primeros-pasos.sh` | Primeros pasos: usuario, firewall, actualizaciones |
| `docs/reto.md` | Paso a paso del reto |
| `docs/checklist.md` | Checklist semanal del buen admin |
| `docs/errores-comunes.md` | Errores comunes y cómo evitarlos |
| `docs/seguridad.md` | Seguridad básica que salva |
| `.env.ejemplo` | Variables de ejemplo (nunca subir el `.env` real) |

---

## ⚡ Inicio rápido

```bash
# 1. En la VM con Ubuntu Server, instalar Docker
bash scripts/install-docker.sh

# 2. Levantar el stack de ejemplo
cd compose
docker compose -f stack-ejemplo.yml up -d

# 3. Abrir en el navegador
# Portainer:      http://IP-DE-LA-VM:9000
# Uptime Kuma:    http://IP-DE-LA-VM:3001
# Cockpit:        http://IP-DE-LA-VM:9090
```

> Reemplazá `IP-DE-LA-VM` por la IP real de tu VM.
> La primera vez, Portainer te pide crear usuario y contraseña de admin.

---

## 🔗 Links oficiales

- Proxmox VE: https://www.proxmox.com/en/proxmox-virtual-environment/overview
- Ubuntu Server: https://ubuntu.com/server
- Docker: https://docs.docker.com/
- Docker Compose: https://docs.docker.com/compose/
- Portainer: https://docs.portainer.io/
- Cockpit: https://cockpit-project.org/
- Uptime Kuma: https://github.com/louislam/uptime-kuma
- Pulse Dashboard: https://github.com/rcourtman/Pulse
- Nginx Proxy Manager: https://nginxproxymanager.com/
- Grafana: https://grafana.com/
- Prometheus: https://prometheus.io/

---

## ✅ Reglas de oro

1. Virtualizá para ordenar y probar sin miedo.
2. Monitoreá y respaldá siempre.
3. Documentá cada cambio.
4. Un backup que no se prueba, no existe (regla 3-2-1).
5. Nunca expongas Portainer ni paneles a internet sin protección.
6. Secretos en `.env`, nunca en el compose ni en GitHub.

---

## 🛠️ Checklist semanal

Ver [`docs/checklist.md`](docs/checklist.md)

## 📚 Para seguir

- Armá tu homelab con una PC vieja.
- Sumá de a una herramienta por vez.
- Guardá cada proyecto con capturas y pasos: eso es tu portfolio.

---

**IPETyM 59 — Cruz Alta**
