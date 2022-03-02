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

# test ecr repository creation 
resource "aws_ecr_repository" "my_test_ecr_repo" {
    tags                    = {
        Name                = "my_test_ecr_repo"

    }

    name                    = "my_test_repo"
    image_scanning_configuration  {
        scan_on_push        = "true"
        
    }

    encryption_configuration {
        encryption_type     = "KMS"
        kms_key             = "arn:aws:kms:us-east-2:664782113447:key/db88351f-ffd7-4c77-be99-2f6c6353b47f"   # KMS key ARN here 
    }


}