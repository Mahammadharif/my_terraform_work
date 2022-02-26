# Provider decluration 
terraform {
    required_providers {
        aws                     = {
            source              = "registry.terraform.io/hashicorp/aws"
            version             =   "~> 3.27"
        }
    }
    required_version            = ">= 0.12"
    
}
# Provider Configuration 
provider "aws" {
    region                      = "us-east-2"

}

# Sample Ec2 creation in Ohio location 

resource "aws_instance" "ec2_ubuntu" {

ami                             = "ami-05803413c51f242b7"
instance_type                   = "t2.nano"
associate_public_ip_address     = true
tags                            = {
    name                        = "ec2_instance"
}

}