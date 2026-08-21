# variable "ami_id" {
#     type = string
#     default = "ami-0220d79f3f480ecf5"
# }

variable "instance_name" {
    type = list
    default = ["mongodb", "mysql", "rabbitmq", "redis", "catalogue", "user", "cart", "shipping", "payment", "dispatch"]
}

variable "zone_id" {
    type = string
    default = "Z04492443PE4G96M3YA8"
}

variable "domain_name" {
    type = string
    default = "srikanth-suthari.me"
}