# variable "ami_id" {
#     type = string
#     default = ""
# }

variable "instance_name" {
    type = list
    default = ["mongodb", "mysql", "rabbitmq", "redis", "catalogue", "user", "cart", "shipping", "payment", "dispatch"]
}