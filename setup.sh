#!/bin/bash
# Script principal para configurar el entorno

# Ejecutar scripts en orden
echo "Creando grupos..."
sudo bash scripts/crear_grupos.sh

echo "Creando usuarios..."
sudo bash scripts/crear_usuarios.sh

echo "Configurando permisos..."
sudo bash scripts/configurar_permisos.sh

echo "Configuración completada."
