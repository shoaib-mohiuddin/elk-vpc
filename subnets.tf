# resource "aws_subnet" "kibana_public" {
#   for_each = var.cidr_kibana_public

#   vpc_id     = aws_vpc.main_vpc.id
#   cidr_block = each.value
#   availability_zone = join("", [var.aws_region, each.key])

#   tags = {
#     Name = join("", ["KibanaSubnetPublic-", each.key])
#   }
# }
resource "aws_subnet" "kibana_public" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = var.cidr_kibana_public
  availability_zone = var.az_a

  tags = {
    Name = "KibanaSubnet-Public"
  }
}

# resource "aws_subnet" "monitor_private" {
#   for_each = var.cidr_monitor_private

#   vpc_id     = aws_vpc.main_vpc.id
#   cidr_block = each.value
#   availability_zone = join("", [var.aws_region, each.key])

#   tags = {
#     Name = join("", ["MonitoringSubnetPrivate-", each.key])
#   }
# }
resource "aws_subnet" "monitor_private" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = var.cidr_monitor_private
  availability_zone = var.az_a

  tags = {
    Name = "MonitoringSubnet-Private"
  }
}

# resource "aws_subnet" "app_private" {
#   for_each = var.cidr_app_private

#   vpc_id     = aws_vpc.main_vpc.id
#   cidr_block = each.value
#   availability_zone = join("", [var.aws_region, each.key])

#   tags = {
#     Name = join("", ["AppSubnet-Private-", each.key])
#   }
# }

resource "aws_subnet" "app_private_a" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = var.cidr_app_private_a
  availability_zone = var.az_a

  tags = {
    Name = "AppSubnet-Private-a"
  }
}
resource "aws_subnet" "app_private_b" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = var.cidr_app_private_b
  availability_zone = var.az_b

  tags = {
    Name = "AppSubnet-Private-b"
  }
}
resource "aws_subnet" "app_private_c" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = var.cidr_app_private_c
  availability_zone = var.az_c

  tags = {
    Name = "AppSubnet-Private-c"
  }
}