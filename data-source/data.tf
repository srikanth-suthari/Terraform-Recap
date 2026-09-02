# data "aws_ami" "join-devops-ami" {
#     owners = ["973714476881"]
#     most_recent= true

#     filter {
#         name   = "name"
#         values = ["RHEL-9-DevOps-Practice"]
#     }

#     filter {
#         name   = "root-device-type"
#         values = ["ebs"]
#     }

#     filter {
#         name   = "virtualization-type"
#         values = ["hvm"]
#     }
# }

# output "ami_id" {
#     value = data.aws_ami.join-devops-ami.id
# }

data "aws_instance" "terraform" {
    instance_id = "i-0cec471f1d9c08c34"
}

output "mongodb_info" {
    value = data.aws_instance.terraform.public_ip
}