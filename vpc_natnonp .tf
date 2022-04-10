# Elastic IP For NAT Gateway

resource "aws_eip" "nat" {
  vpc        = true
  depends_on = [aws_internet_gateway.internet-gateway]

  tags = {
    Name = "NAT Gateways EIP"
  }
}

# Creating Nat Gateway
resource "aws_nat_gateway" "nat-gw" {

  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public-subnet-1.id

  tags = {
    Name = "Ivanstake_NonProd-NAT Gateways"
  }

}

# Create Route Table and Add Private Route for Avalanche

resource "aws_route_table" "private-route-table-AV" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.nat-gw.id
  }

  tags = {
    Name = "IvanStake-NonProd-PRV-AV"

  }
}
# Associate Private Subnet 1 and 4  to "Private  Route Table-AV"

resource "aws_route_table_association" "private-subnet-1-route-table-association" {
  subnet_id      = aws_subnet.private-subnet-1.id
  route_table_id = aws_route_table.private-route-table-AV.id
}
resource "aws_route_table_association" "private-subnet-4-route-table-association" {
  subnet_id      = aws_subnet.private-subnet-4.id
  route_table_id = aws_route_table.private-route-table-AV.id
}


# Create Route Table and Add Private Route for Polkadot

resource "aws_route_table" "private-route-table-PT" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.nat-gw.id
  }

  tags = {
    Name = "IvanStake-NonProd-PRV-SO"

  }
}
# Associate Private Subnet 2 and 5  to "Private  Route Table-PT"

resource "aws_route_table_association" "private-subnet-2-route-table-association" {
  subnet_id      = aws_subnet.private-subnet-2.id
  route_table_id = aws_route_table.private-route-table-PT.id
}
resource "aws_route_table_association" "private-subnet-5-route-table-association" {
  subnet_id      = aws_subnet.private-subnet-5.id
  route_table_id = aws_route_table.private-route-table-PT.id
}

# Create Route Table and Add Private Route for Etherum

resource "aws_route_table" "private-route-table-ET" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.nat-gw.id
  }

  tags = {
    Name = "IvanStake-NonProd-PRV-ETH"

  }
}
# Associate Private Subnet 3 and 6  to "Private  Route Table-PT"

resource "aws_route_table_association" "private-subnet-3-route-table-association" {
  subnet_id      = aws_subnet.private-subnet-3.id
  route_table_id = aws_route_table.private-route-table-ET.id
}
resource "aws_route_table_association" "private-subnet-6-route-table-association" {
  subnet_id      = aws_subnet.private-subnet-6.id
  route_table_id = aws_route_table.private-route-table-ET.id
}
