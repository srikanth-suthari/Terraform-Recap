resource "aws_route53_record" "roboshop" {
    zone_id = var.zone_id
    ttl = 1
    type = "A"

    # Interpolation of two variables to get as a single name
    name = "${var.instance_name[count.index]}.${var.domain_name}"

    # Taking the output of instance_name and iterating through the private_ips of the instances
    records = [aws_instance.terraform[count.index].private_ip]
    allow_overwrite = true
}