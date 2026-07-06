# DevOps Assessment: Terraform & Database Reliability

This repository contains the infrastructure design and database reliability scripts as per the assessment requirements.

## Project Structure
```text
├── db/
│   └── init.sql             # Database schema, seed data, and index optimization
├── infra/
│   ├── modules/            # Reusable modules (network, ecs, rds)
│   └── envs/
│       ├── dev/            # Dev environment configurations (small instance)
│       └── prod/           # Prod environment configurations (large instance)
├── scripts/
│   ├── backup.sh           # Automated timestamped database dump script
│   └── restore.sh          # Automated database restoration script
├── docker-compose.yml       # Local PostgreSQL 15 multi-container setup
└── README.md               # Setup and verification documentation
