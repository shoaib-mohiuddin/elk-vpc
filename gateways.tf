resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main_vpc.id

  tags = {
    Name = "IGW"
  }
}

resource "aws_eip" "nat_ip" {
  vpc = true
}

resource "aws_nat_gateway" "nat_gw" {
  allocation_id = aws_eip.nat_ip.id
  subnet_id     = aws_subnet.kibana_public.id

  tags = {
    Name = "NATGW"
  }

  depends_on = [aws_internet_gateway.igw]
}