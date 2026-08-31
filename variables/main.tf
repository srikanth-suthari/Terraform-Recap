resource "aws_instance" "terraform" {
    ami = var.ami_id
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.allow_all.id]
    tags = var.ec2_tags
}

resource "aws_security_group" "allow_all" {

    name = var.sg_name

    #Incoming traffic or inbound rules = ingress
    ingress {
        from_port = var.ingress_from_port #from port 0 to all ports
        to_port = var.ingress_to_port
        protocol = var.protocol # -1 means all protocols like tcp/udp/http/https etc
        cidr_blocks = var.ingress_cidr     #from internet (all networks)
    }

    ingress {
        from_port   = var.ingress_http_from_port
        to_port     = var.ingress_http_to_port
        protocol    = var.http_protocol
        cidr_blocks = var.ingress_cidr
    }

    # ingress {
    #     from_port   = 443
    #     to_port     = 443
    #     protocol    = "tcp"
    #     cidr_blocks = ["0.0.0.0/0"]
    # }

    # ingress {
    #     from_port   = 8080
    #     to_port     = 8080
    #     protocol    = "tcp"
    #     cidr_blocks = ["0.0.0.0/0"]
    # }

    #Outgoing traffic or outbound rules = egress
    egress {
        from_port = var.egress_from_port
        to_port = var.egress_to_port
        protocol = var.protocol
        cidr_blocks = var.egress_cidr
    }

    tags = var.sg_tags
}