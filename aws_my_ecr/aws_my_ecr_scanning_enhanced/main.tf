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


#---------------------------------------------------------------------------
# ECR Private Registry scanning configuration-  Enhanced ( Registry level )
#---------------------------------------------------------------------------
resource "aws_ecr_registry_scanning_configuration" "ecr_en_scanning" {
    scan_type                      = "ENHANCED"
    rule {
        repository_filter {
            filter                 = "*" # specifies all repositories 
            filter_type            = "WILDCARD"
            
        }
    scan_frequency                 = "CONTINUOUS_SCAN" # Supported to change SCAN_ON_PUSH, MANUAL
    }    
}
