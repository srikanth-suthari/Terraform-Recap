resource "aws_route53_record" "roboshop" {
    for_each = aws_instance.terraform
    zone_id = var.zone_id
    ttl = 1
    type = "A"
    name = "${each.key}.${var.domain_name}"     #mongo.srikanth-suthari.me
    records = [each.value.private_ip]
    allow_overwrite = true
}