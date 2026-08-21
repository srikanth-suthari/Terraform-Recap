# output "instances_output" {
#     value = aws_instance.terraform
# }

output "instances_public_ips" {
    value = aws_instance.terraform.*.public_ip
}

output "instances_private_ips" {
    value = aws_instance.terraform.*.private_ip
}