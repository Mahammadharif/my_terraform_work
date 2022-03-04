#--------------------------------------
# Passing region and instancet type
#--------------------------------------


variable "my_ec2_size" {
    type    = string
    default = "t2.nano"
}

variable "my_region" {
    type    = string
    default = "us-east-2"
}

