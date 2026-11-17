#!/bin/bash
# Primeros pasos en Ubuntu Server
# Uso: revisar cada línea antes de ejecutar. No ejecutar a ciegas.
set -e
echo "1) Actualizar..."
sudo apt update && sudo apt upgrade -y
echo "2) Firewall: permitir solo SSH y los puertos que uses..."
sudo ufw allow OpenSSH
sudo ufw --force enable
sudo ufw status
echo "3) Ver servicios y disco..."
systemctl list-units --type=service --state=running | head -20
df -h
free -h
echo "Listo. Ahora: SSH con llave, fail2ban y backups (ver docs/seguridad.md)."
