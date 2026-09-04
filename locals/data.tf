output "locals_output" {
    value = resource.aws_instance.ec2_instance.id
}

output "locals_instance_type" {
    value = resource.aws_instance.ec2_instance.instance_type
}

data "aws_instance" "locals_data" {
    instance_id = "i-05747b4f51d183b3e"
}

output "id_from_data" {
    value = data.aws_instance.locals_data
}