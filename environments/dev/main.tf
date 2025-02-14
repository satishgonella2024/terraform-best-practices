# environments/dev/main.tf
module "vpc" {
  source = "../../modules/vpc"

  cidr_block  = "10.0.0.0/16"
  name        = "dev-vpc"
  environment = "dev"

  public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnet_cidrs = ["10.0.3.0/24", "10.0.4.0/24"]
  availability_zones   = ["eu-west-2a", "eu-west-2b"]

  tags = {
    ManagedBy = "Terraform"
    Project   = "Infrastructure"
  }
}