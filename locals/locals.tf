locals {
  # instances = ["mongodb", "mysql", "user", "cart"]
  instance_type = "t3.micro"
  # Interpolation with variables is possible in locals
  common_name = "${var.project}-${var.environment}"   #roboshop-dev
  ec2_tags = merge(
    var.common_tags,
    {
      Name = "${local.common_name}-local-demo"
    }
  )
}