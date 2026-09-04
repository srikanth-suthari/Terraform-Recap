variable "ami_id" {
    default = "ami-0220d79f3f480ecf5"
}

variable "instance_type" {
    default = "t3.micro"
}

variable "project" {
    default = "roboshop"
}

variable "environment" {
    default = "dev"
}

variable "ingress_rules" {
    type = list(number)
    default = [22,80,8080,443,27017]
}