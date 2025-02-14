provider "aws" {
  region = "eu-west-2" # Primary region
}

provider "aws" {
  alias  = "replica"
  region = "eu-west-1" # Replica region
}