#!/bin/bash
# Crear estructura de directorios
sudo mkdir -p /proyectos/diseno
sudo mkdir -p /proyectos/video

# Asignar permisos
sudo chown :disenadores /proyectos/diseno
sudo chown :editores /proyectos/video
sudo chmod 770 /proyectos/diseno
sudo chmod 770 /proyectos/video
