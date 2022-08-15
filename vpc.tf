resource "aws_vpc" "main_vpc" {
  cidr_block = var.cidr_vpc

  tags = {
    Name = var.vpc_name
  }
}