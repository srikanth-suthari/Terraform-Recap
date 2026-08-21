# variable "ami_id" {
#     type = string
#     default = ""
# }

variable "instance_count" {
    default = 4
}

variable "instance_name" {
    default = [1,2,3,4]
}