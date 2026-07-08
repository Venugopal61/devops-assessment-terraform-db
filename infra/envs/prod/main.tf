provider "aws" {
  region                      = "us-east-1"
  skip_credentials_validation = true
  skip_requesting_account_id  = true
  skip_metadata_api_check     = true
  access_key                  = "mock_key"
  secret_key                  = "mock_secret"
}

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
