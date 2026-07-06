# infra/modules/rds/main.tf

resource "aws_db_instance" "default" {
  allocated_storage    = var.allocated_storage
  engine               = "postgres"
  engine_version       = "15"
  instance_class       = var.instance_class
  db_name              = "hoteldb"
  username             = "admin"
  password             = "password123" # Use AWS Secrets Manager in production
  skip_final_snapshot  = true
  deletion_protection  = var.deletion_protection
  
  # Ensure it is private
  publicly_accessible  = false
}