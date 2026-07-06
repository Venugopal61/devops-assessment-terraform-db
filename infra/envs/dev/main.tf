# infra/envs/dev/main.tf

module "network" {
  source = "../../modules/network"
}

module "rds" {
  source              = "../../modules/rds"
  instance_class      = "db.t3.micro"
  allocated_storage   = 20
  deletion_protection = false
}