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

variable "ingress_rules_list" {
    type = list(number)
    default = [22,80,8080,443,27017]
}

variable "ingress_rules_map" {
    default = {
        "HTTPS" = {port = 80, description = "Allwo port 80 for HTTP"}
        "HTTPS" = {port = 443, description = "Allwo port 443 for HTTPS"}
        "SSH" = {port = 22, description = "Allwo port 22 for SSH"}
    }
}