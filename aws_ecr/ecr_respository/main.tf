# provider decluration 

terraform {
    required_providers {
        aws                 = {
            source          = "registry.terraform.io/hashicorp/aws"
            version         = "~> 3.27"
            
        }
    }
    required_version        = ">= 0.12"
}

#provider decluration     

provider "aws" {
    region                  = "us-east-2"
}

#----------------------------------------------------------
# ECR repo creation
#----------------------------------------------------------

resource "aws_erc_repository" "my_test_ecr_repo" {
    tags                                = {
        Name                            = "my_test_ecr_repo"        
    }

    name                                = "my_test_ecr_repo" # repository name should be unique over account
}

output "ecr_uri" {
        value               = aws_ecr_repository.my_test_ecr_repo.repository_url
}