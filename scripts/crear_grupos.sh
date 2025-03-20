#!/bin/bash
# Crear grupos
sudo addgroup disenadores
sudo addgroup editores
sudo addgroup admin

# Asignar usuarios a grupos
sudo usermod -aG disenadores disenador1
sudo usermod -aG disenadores disenador2
sudo usermod -aG disenadores disenador3
sudo usermod -aG disenadores disenador4

sudo usermod -aG editores editor1
sudo usermod -aG editores editor2

sudo usermod -aG admin admin
