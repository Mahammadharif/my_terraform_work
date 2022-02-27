# provider decluration 

terraform {
    required_providers {
        aws                 = {
                source      = "registry.terraform.io/hashicorp/aws"
                version     = "~> 3.27"
        }

    }
    required_version        = ">= 0.12"
}

# provider configuration 

provider "aws" {
    region                  = "us-east-2"
}

resource "aws_subnet" "aws_my_vpc_subnet" {
    vpc_id                  = "vpc-04c753fc8c1cf307c"
    cidr_block              = "10.10.1.0/24"
}
