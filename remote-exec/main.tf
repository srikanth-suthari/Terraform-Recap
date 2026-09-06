resource "aws_instance" "ec2_instance" {
    ami = var.ami_id
    instance_type = var.instance_type
    tags = {
        Name = "remote-exec-demo"
    }

    #It requires a connection block and a privisioner block

    connection {
        type = "ssh"
        user     = "ec2-user"
        password = "DevOps321"
        host     = self.public_ip
        # user        = "ubuntu"                # Default user for Ubuntu AMIs (use "ec2-user" for Amazon Linux)
        # private_key = file("~/.ssh/id_rsa")   # Path to your local private key file
        # host        = self.public_ip
    }

    provisioner "remote-exec" {

    }
}