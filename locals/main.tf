resource "aws_instance" "ec2_instance" {
    # count = length(local.instances)
    for_each = var.instances
    ami = "ami-0332d564d76dbd8d6"
    instance_type = "t3.micro"
    tags = local.ec2_tags
}