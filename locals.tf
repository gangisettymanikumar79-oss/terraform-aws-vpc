locals {
  common_tags = {
    Project = var.project
    environment = var.environment
    terraform = true
    Name = "${var.project}-${var.environment}"
  }
  common_name = "${var.project}-${var.environment}" # roboshop-dev
   az_name = slice(
    data.aws_availability_zones.available.names,
    0,
    2
  )

}