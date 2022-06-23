terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>3.0"
    }
  }
}


provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key 
  #profile = var.profile
  region  = var.region
}


data "aws_availability_zones" "available" {}


module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~>3.14.1"

  name = "jerin-primary"

  cidr            = var.cidr_block
  azs             = slice(data.aws_availability_zones.available.names, 0, var.subnet_count[terraform.workspace])
  public_subnets  = [for subnet in range(var.subnet_count[terraform.workspace]) : cidrsubnet(var.public_cidr_block, 8, subnet)]
  private_subnets = [for subnet in range(var.subnet_count[terraform.workspace]) : cidrsubnet(var.private_cidr_block, 8, subnet)]
  

  enable_nat_gateway = false

  create_database_subnet_group = false#


  tags = {
    Environment = "Production"
    Team        = "Network"
  }
}