output "instance_output" {
    value = aws_instance.terraform.*.public_ip
}