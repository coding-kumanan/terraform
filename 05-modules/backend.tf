provider "aws" {}

terraform {
  backend "s3" {
    bucket  = "kum-terraform-state"
    key     = "tfmodules/terraform.tfstate"
    region  = "us-east-1"
    
  }
}