resource "aws_instance" "terraform" {
    ami = "ami-0332d564d76dbd8d6"
    instance_type = "t3.micro"

    tags = {
        Name = "Linux"
        terraform = "true"
    }
}