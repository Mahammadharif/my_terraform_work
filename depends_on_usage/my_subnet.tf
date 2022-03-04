resource "aws_subnet" "my_subnet" {
    tags                = {
        Name            = "my_subnet"
    }
    
    vpc_id              = aws_vpc.my_vpc.id 
    cidr_block          = "10.10.1.0/24"
    depends_on          = [aws_vpc.my_vpc]
}

output "my_subnet_id" {
    value               = aws_subnet.my_subnet.id
}