#!/bin/bash
# Verificar y configurar permisos

# Directorio para diseñadores
if [ -d "/proyectos/diseno" ]; then
    echo "El directorio '/proyectos/diseno' ya existe."
else
    sudo mkdir -p /proyectos/diseno
    sudo chown :disenadores /proyectos/diseno
    sudo chmod 770 /proyectos/diseno
    echo "Directorio '/proyectos/diseno' creado con permisos para el grupo 'disenadores'."
fi

# Directorio para editores
if [ -d "/proyectos/video" ]; then
    echo "El directorio '/proyectos/video' ya existe."
else
    sudo mkdir -p /proyectos/video
    sudo chown :editores /proyectos/video
    sudo chmod 770 /proyectos/video
    echo "Directorio '/proyectos/video' creado con permisos para el grupo 'editores'."
fi
