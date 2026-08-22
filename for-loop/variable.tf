variable "instance_name" {
    type = map
    default = {
        mongo = "t3.micro"
        mysql = "t3.small"
    }
}

# variable "owner_info" {
#     default = "973714476881"
# }