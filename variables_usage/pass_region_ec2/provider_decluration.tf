#---------------------------------------
# AWS Provider decluration 
#---------------------------------------

terraform {
    required_providers {
        source              = "registry.terraform.io/hashicorp/aws"
        version             = "~> 3.27"
        
    }

required_version            = ">= 0.12"
}