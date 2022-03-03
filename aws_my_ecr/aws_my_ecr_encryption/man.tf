
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

#----------------------------------------------------------
# ECR repo with default KMS encryption 
#----------------------------------------------------------

resource "aws_erc_repository" "my_test_ecr_repo" {
    tags                                = {
        Name                            = "my_test_ecr_repo"        
    }

    name                                = "my_test_ecr_repo" # repository name should be unique over account
    encryption_configuration {
        encryption_type                 = "KMS" # default is AES256
        kms_key                         =  "" # KMS ARN here if not , AWS create KMS 
    } 
}
