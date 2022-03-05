# Check with terraform show to find all captured details of ec2 without delete file 


output "myinstanceid"{
    value   = data.aws_instance.my_ec2_id.id
}