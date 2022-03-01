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

resource "aws_instance" "my_ec2_ubuntu" {

ami                             = "ami-05803413c51f242b7"
instance_type                   = "t2.micro" #changed from nano to micro
associate_public_ip_address     = true
tags                            = {
    Name                        = "my_ec2_instance" # "Name will be used for display name in tags sections "
}

}
# output instance id
output "my_ec2_instance_id" {
    value = aws_instance.my_ec2_ubuntu.id
}
#output instance public ip
output "my_ec2_instance_publicip"  {
    value = aws_instance.my_ec2_ubuntu.public_ip
}
# output instance arn 
output "my_ec2_instance_arn" {
    value = aws_instance.my_ec2_ubuntu.arn
}