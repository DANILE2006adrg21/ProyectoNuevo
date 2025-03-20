#!/bin/bash
# Verificar y crear usuarios

# Usuarios para diseñadores
usuarios_disenadores=("disenador1" "disenador2" "disenador3" "disenador4")
for usuario in "${usuarios_disenadores[@]}"; do
    if id "$usuario" &>/dev/null; then
        echo "El usuario '$usuario' ya existe."
    else
        sudo adduser "$usuario"
        sudo usermod -aG disenadores "$usuario"
        echo "Usuario '$usuario' creado y asignado al grupo 'disenadores'."
    fi
done

# Usuarios para editores
usuarios_editores=("editor1" "editor2")
for usuario in "${usuarios_editores[@]}"; do
    if id "$usuario" &>/dev/null; then
        echo "El usuario '$usuario' ya existe."
    else
        sudo adduser "$usuario"
        sudo usermod -aG editores "$usuario"
        echo "Usuario '$usuario' creado y asignado al grupo 'editores'."
    fi
done

# Usuario para administrador
if id "admin" &>/dev/null; then
    echo "El usuario 'admin' ya existe."
else
    sudo adduser admin
    sudo usermod -aG admin admin
    echo "Usuario 'admin' creado y asignado al grupo 'admin'."
fi
