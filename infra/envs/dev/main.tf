provider "aws" {
  region                      = "us-east-1"
  skip_credentials_validation = true
  skip_requesting_account_id  = true
  skip_metadata_api_check     = true

  # Dummy credentials to bypass your expired account checks
  access_key = "mock_key"
  secret_key = "mock_secret"
}

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
