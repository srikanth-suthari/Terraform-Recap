# output "instances_output" {
#     value = aws_instance.terraform
# }

output "instances_ips" {
    value = aws_instance.terraform[count.index].public_ip
}