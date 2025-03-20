#!/bin/bash
# Script de respaldo
backup_dir="/backup/proyectos_$(date +%F)"
sudo mkdir -p "$backup_dir"
sudo rsync -av --delete /proyectos "$backup_dir"
