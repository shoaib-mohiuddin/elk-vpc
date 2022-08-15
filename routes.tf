resource "aws_route_table" "internet_route_tbl" {
  vpc_id = aws_vpc.main_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  

  tags = {
    Name = "internet-route-table"
  }
}

resource "aws_route_table" "nat_route_tbl" {
  vpc_id = aws_vpc.main_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.nat_gw.id
  }

  

  tags = {
    Name = "nat-route-table"
  }
}

resource "aws_route_table_association" "kibana_public" {
  subnet_id      = aws_subnet.kibana_public.id
  route_table_id = aws_route_table.internet_route_tbl.id
}

resource "aws_route_table_association" "monitor_private" {
  subnet_id      = aws_subnet.monitor_private.id
  route_table_id = aws_route_table.nat_route_tbl.id
}

resource "aws_route_table_association" "app_private_a" {
  subnet_id      = aws_subnet.app_private_a.id
  route_table_id = aws_route_table.nat_route_tbl.id
}

resource "aws_route_table_association" "app_private_b" {
  subnet_id      = aws_subnet.app_private_b.id
  route_table_id = aws_route_table.nat_route_tbl.id
}

resource "aws_route_table_association" "app_private_c" {
  subnet_id      = aws_subnet.app_private_c.id
  route_table_id = aws_route_table.nat_route_tbl.id
}
