#!/bin/bash

# Create backup directory if it doesn't exist
mkdir -p backups

# Generate timestamp
timestamp=$(date +%Y%m%d_%H%M%S)

# Obtener la carpeta a respaldar desde el primer argumento
source_dir=$1

# Verificar que el usuario haya especificado una carpeta
if [ -z "$source_dir" ]; then
  echo "Usage: $0 /path/to/folder"
  exit 1
fi

# Crear el backup usando ruta relativa para evitar errores con paths absolutos
tar -czf backups/backup_$timestamp.tar.gz -C "$(dirname "$source_dir")" "$(basename "$source_dir")"

echo "Backup created at backups/backup_$timestamp.tar.gz"


