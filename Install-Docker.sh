#!/bin/bash
# Instalar Docker + Docker Compose en Ubuntu Server
# Uso: bash scripts/install-docker.sh
set -e
echo "Actualizando sistema..."
sudo apt update && sudo apt upgrade -y
echo "Instalando Docker..."
curl -fsSL https://get.docker.com | sh
sudo usermod -aG docker $USER
echo "Verificando..."
docker --version
docker compose version
echo "Listo. Cerrá sesión y volvé a entrar para usar Docker sin sudo."
