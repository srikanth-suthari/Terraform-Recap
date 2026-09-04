resource "aws_instance" "ec2_instance" {
    ami = local.ami_id
    instance_type = local.instance_type
    tags = merge(
        local.common_tags,
        {
            Name = "${common_name}-dynamic-bolck-demo"
        }
    )
}

resource "aws_security_group" "ec2_security_group" {
    name = "${common_name}-allow-all"
    description = "Allow these specific ports"

    dynamic "ingress" {
        for_each = local.ingress_rules
        iterator = rule

        content {
            from_port = rule.value
            to_port = rule.value
            protocol = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
        }
    }
}