locals {
  # instances = ["mongodb", "mysql", "user", "cart"]
  instance_type = "t3.micro"
  # Interpolation with variables is possible in locals
  common_name = "${locals.each.key}-${var.project}-${var.environment}" #instance_name-roboshop-dev
  #common_name = "${var.project}-${var.environment}"   #roboshop-dev
  ec2_tags = merge(
    var.common_tags,
    {
      Name = "${local.common_name}-local-demo"
    }
  )
}