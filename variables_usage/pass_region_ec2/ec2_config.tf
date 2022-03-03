#-----------------------------------
# Ec2 Instance configuraton 
#-----------------------------------

resource "aws_instance" "my_ec2_ubuntu" {

    ami                 = var.my_ec2_ami
    instance_type       = var.my_ec2_size

}

output "my_ec2_ubuntu_pip" {
    value               = aws_instance.my_ec2_ubuntu.private_ip
}