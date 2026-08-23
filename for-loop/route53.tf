resource "aws_route53_record" "roboshop" {
    for_each = aws_instance.terrafor m     #here we are looping the instances
    zone_id = var.zone_id
    ttl = 1
    type = "A"
    name = "${each.key}.${var.domain_name}"     #mongo.srikanth-suthari.me
    # records = [each.value.private_ip]
    records = [each.value.public_ip]    #Here it is public_ip from the value of each instance
    allow_overwrite = true
}