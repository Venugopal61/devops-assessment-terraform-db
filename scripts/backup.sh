#!/bin/bash
# Backup the database to a file with a timestamp
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
# Ensure the backups directory exists
mkdir -p ./backups
docker compose exec -T db pg_dump -U user hoteldb > ./backups/hoteldb_backup_$TIMESTAMP.sql
echo "Backup created successfully: ./backups/hoteldb_backup_$TIMESTAMP.sql"