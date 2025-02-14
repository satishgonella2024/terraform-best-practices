terraform {
  backend "s3" {
    bucket         = "terraform-state-bucket-eg"
    key            = "dev/terraform.tfstate"
    region         = "eu-west-2"
    encrypt        = true
    dynamodb_table = "terraform-state-locks"
  }
}
