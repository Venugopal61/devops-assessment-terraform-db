# DevOps Assessment: Terraform & Database Reliability

This repository contains the infrastructure design and database reliability scripts as per the assessment requirements.

## Project Structure
- `infra/`: Modular Terraform configurations separating `dev` and `prod` environments.
- `db/`: Database initialization logic, table schema, and seed data.
- `scripts/`: Automated shell operations for snapshot backups and state recovery.

## Setup & Verification

### 1. Local Database
Run the following command from the inner directory containing your compose file to start the PostgreSQL database:
```bash
docker compose up -d