resource "aws_instance" "ec2_instance" {
    ami = var.ami_id
    instance_type = var.instance_type
    tags = {
        Name = "local-exec-demo"
    }

    provisioner "local-exec" {
        command = "echo ${self.*} > local-exec.txt "   #the commands should be in double quotes
        on_failure = continue
    }
}