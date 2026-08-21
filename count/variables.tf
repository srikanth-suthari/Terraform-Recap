# variable "ami_id" {
#     type = string
#     default = ""
# }

variable "instance_name" {
    default = ["mongodb", "mysql", "rabbitmq", "redis"]
}