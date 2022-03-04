resource "aws_instance" "my_ec2" {
    tags                = {
        Name            = "my_ec2"
    }
    ami                 = "ami-0bc631ac607ef201d"
    instance_type       = var.my_ec2_size
    subnet_id           = aws_subnet.my_subnet.id
    depends_on          = [aws_subnet.my_subnet]
}