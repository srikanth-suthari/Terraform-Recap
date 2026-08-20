resource "aws_instance" "terraform" {
    ami = "ami-0332d564d76dbd8d6"
    instance_type = "t3.micro"

    tags = {
        Name = "Linux"
        terraform = "true"
    }
}

resource "aws_security_group" "allow_all" {

    name = "My-SG"

    #Incoming traffic or inbound rules = ingress
    ingress {
        from_port = 0 #from port 0 to all ports
        to_port = 0
        protocol = "-1" # -1 means all protocols like tcp/udp/http/https etc
        cidr_blocks = ["0.0.0.0/0"]     #from internet (all networks)
    }

    #Outgoing traffic or outbound rules = egress
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "My-SG"
        terraform = "true"
    }
}