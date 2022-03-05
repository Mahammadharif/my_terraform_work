data "aws_instance" "my_ec2_id" {
    instance_tags   = {
        "Name"      = "my_ec2_instance"
     
    
    }
}