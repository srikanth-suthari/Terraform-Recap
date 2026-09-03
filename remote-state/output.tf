output "instance_private_ip" {
    value = resource.aws_instance.ec2_instance.private_ip
}

output "instance_id" {
    value = resource.aws_instance.ec2_instance.instance_id
}