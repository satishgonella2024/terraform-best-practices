terraform {
  required_version = ">= 1.0.0"

  backend "s3" {
    bucket         = "terraform-state-bucket-eg"
    key            = "dev/terraform.tfstate"
    region         = "eu-west-2"
    encrypt        = true
    dynamodb_table = "terraform-state-locks"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}