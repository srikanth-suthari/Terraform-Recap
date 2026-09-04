resource "aws_instance" "ec2_instance" {
    ami = local.ami_id
    instance_type = local.instance_type
    tags = merge(
        local.common_tags,
        {
            Name = "${local.common_name}-dynamic-bolck-demo"
        }
    )
}

resource "aws_security_group" "ec2_security_group" {
    name = "${local.common_name}-dynamic-sg"
    description = "Created using dynamic blocks"

    dynamic "ingress" {
        for_each = local.ingress_rules
        iterator = rule         # Renaming the iterator name from ingress to rule

        content {
            from_port = rule.value
            to_port = rule.value
            protocol = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
        }
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1" #all protocols
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = merge(
        local.common_tags,
        {
            Name = "${local.common_name}-dynamic-sg-tags"
        }
    )
}