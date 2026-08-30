resource "aws_instance" "ec2_instance" {
    ami = "ami-0332d564d76dbd8d6"
    instance_type = "t3.micro"
}