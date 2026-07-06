#!/bin/bash
# Restore a backup file into the database
if [ -z "$1" ]; then
  echo "Usage: ./scripts/restore.sh <backup_file_path>"
  exit 1
fi
docker compose exec -T db psql -U user hoteldb < $1
echo "Restore process completed."