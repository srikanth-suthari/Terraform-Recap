variable "instance_name" {
    type = map
    default = {
        mongo = "t3.micro"
        mysql = "t3.small"
    }
}

variable "ami_id" {
    default = "ami-0220d79f3f480ecf5"
}

# variable "zone_id" {
#     default = "Z04492443PE4G96M3YA8"
# }

variable "domain_name" {
    type = string
    default = "srikanth-suthari.me"
}

# variable "owner_info" {
#     default = "973714476881"
# }