#!/bin/bash
set -e

echo "🚀 Instalando Docker y Docker Compose..."

sudo apt update
sudo apt install -y docker.io docker-compose

echo "📁 Creando estructura de carpetas..."

mkdir -p monitoring_stack/{prometheus,blackbox,snmp,node_exporter/textfile_collector}

echo "📄 Copiando archivos de configuración..."

cp prometheus.yml monitoring_stack/prometheus/prometheus.yml
cp blackbox.yml monitoring_stack/blackbox/blackbox.yml

echo "✅ Listo para usar. Ejecutá:"
echo "cd monitoring_stack && docker-compose up -d"
