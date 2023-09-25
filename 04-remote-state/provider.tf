provider "aws" {}

//here we are storing our terraform state file in a aws s3 bucket backend to access from central. 
terraform {
  backend "s3" {
    bucket = "kum-terraform-state"
    key    = "dev/ec2/terraform.tfstate" //inside the s3 bucket named kum-terraform-state this directory will created.
    region = "us-east-1" 
    
  }
}

