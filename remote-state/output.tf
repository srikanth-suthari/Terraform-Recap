output "instance_private_ip" {
    value = resource.aws_instance.ec2_instance.private_ip
}

output "instance_type" {
    value = resource.aws_instance.ec2_instance.instance_type
}