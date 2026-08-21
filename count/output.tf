# output "instances_output" {
#     value = aws_instance.terraform
# }

output "instances_ips" {
    value = aws_instance.terraform.*.public_ip
}