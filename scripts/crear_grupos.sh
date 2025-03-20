#!/bin/bash
# Verificar y crear grupos

# Grupo para diseñadores
if getent group disenadores &>/dev/null; then
    echo "El grupo 'disenadores' ya existe."
else
    sudo addgroup disenadores
    echo "Grupo 'disenadores' creado."
fi

# Grupo para editores
if getent group editores &>/dev/null; then
    echo "El grupo 'editores' ya existe."
else
    sudo addgroup editores
    echo "Grupo 'editores' creado."
fi

# Grupo para administradores
if getent group admin &>/dev/null; then
    echo "El grupo 'admin' ya existe."
else
    sudo addgroup admin
    echo "Grupo 'admin' creado."
fi
