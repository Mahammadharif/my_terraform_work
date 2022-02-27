# Provider decluration 

terraform {
    required_providers {
        aws                         = {
            source                  = "registry.terraform.io/hashicorp/aws"
            version                 = "~> 3.27"
        }
    }
  required_version = ">= 0.12"
}


# Provider configuration 

provider "aws" {
    region                          = "us-east-2"
}

# vpc resource creation in Ohio region

resource "aws_vpc" "aws_my_vpc" {
    cidr_block                      = "10.10.0.0/24"
}