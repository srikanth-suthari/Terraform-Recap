resource "aws_instance" "ec2_instance" {
    ami = var.ami_id
    instance_type = var.instance_type
    tags = {
        Name = "local-exec-demo"
    }

    provisioner "local-exec" {
        command = "echo Instance is created"   #the commands should be in double quotes
        on_failure = continue
    }

    provisioner "local-exec" {
        command = "echo ${self.instance_type} > local-exec.txt "
    }

    provisioner "local-exec" {
        command = "echo Instance is destroyed"
        when = destroy    #Using when condition (when the instances is destroyed this provisioner will execute)
    }

    provisioner "local-exec" {
        command = "echo ${self.public_ip} > local-exec.txt "
    }
}