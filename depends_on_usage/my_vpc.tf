resource "aws_vpc" "my_vpc" {
    tags            = {
        Name        = "my_vpc"
    }

    cidr_block      = "10.10.0.0/16"
}

output "my_vpc_id" {
    value           = aws_vpc.my_vpc.id 
}