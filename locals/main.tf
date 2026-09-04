resource "aws_instance" "ec2_instance" {
    ami = "ami-0332d564d76dbd8d6"
    instance_type = local.instance_type
    tags = local.ec2_tags
}