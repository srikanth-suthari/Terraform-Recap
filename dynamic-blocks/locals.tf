locals {
    ami_id = var.ami_id
    ingress_rules = var.ingress_rules
    instance_type = var.instance_type
    common_name = "${var.project}-${var.environment}"
    common_tags = {
        project = "robosohp"
        environment = "dev"
        terraform = true
    }
}