# infra/envs/prod/main.tf

module "network" {
  source = "../../modules/network"
}

module "rds" {
  source              = "../../modules/rds"
  # Production uses a larger instance size
  instance_class      = "db.r6g.large"
  allocated_storage   = 100
  # Protection enabled for production
  deletion_protection = true
}