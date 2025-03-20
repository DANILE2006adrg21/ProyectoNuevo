#!/bin/bash
# Script de respaldo mejorado

# Directorio de respaldo
backup_dir="/backup/proyectos_$(date +%F)"
log_file="/var/log/backup.log"

# Función para registrar mensajes en el log
log() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$log_file"
}

# Verificar si el directorio /proyectos existe
if [ ! -d "/proyectos" ]; then
    log "Error: El directorio /proyectos no existe. No se puede realizar el respaldo."
    exit 1
fi

# Verificar si el directorio de respaldo ya existe
if [ -d "$backup_dir" ]; then
    log "El directorio de respaldo '$backup_dir' ya existe. No se realizó el respaldo."
else
    # Crear el directorio de respaldo
    sudo mkdir -p "$backup_dir"
    if [ $? -eq 0 ]; then
        log "Directorio de respaldo '$backup_dir' creado correctamente."
    else
        log "Error: No se pudo crear el directorio de respaldo '$backup_dir'."
        exit 1
    fi

    # Realizar el respaldo
    sudo rsync -av --delete /proyectos "$backup_dir"
    if [ $? -eq 0 ]; then
        log "Respaldo completado en '$backup_dir'."
    else
        log "Error: No se pudo completar el respaldo en '$backup_dir'."
        exit 1
    fi
fi
