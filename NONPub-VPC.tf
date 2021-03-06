# Create VPC

resource "aws_vpc" "vpc" {
  cidr_block           = var.vpc-cidr
  instance_tenancy     = "default"
  enable_dns_hostnames = true

  tags = {
    Name = "IvanStake-NonProd"
  }
}

# Create Internet Gateway and Attach it to VPC

resource "aws_internet_gateway" "internet-gateway" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "Ivan_NonProd_IGW"
  }
}

# Create Public Subnet 1a

resource "aws_subnet" "public-subnet-1" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.public-subnet-1-cidr
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "IvanStake-NonProd-Public-1a"

  }
}

# Create Public Subnet 1b

resource "aws_subnet" "public-subnet-2" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.public-subnet-2-cidr
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "IvanStake-NonProd-Public-1b"
  }
}

# Create Route Table and Add Public Route

resource "aws_route_table" "public-route-table" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet-gateway.id
  }

  tags = {
    Name = "Iavnstake-NonProd_Public_RT"

  }
}

# Associate Public Subnet 1 to "Public Route Table"

resource "aws_route_table_association" "public-subnet-1-route-table-association" {
  subnet_id      = aws_subnet.public-subnet-1.id
  route_table_id = aws_route_table.public-route-table.id
}

# Associate Public Subnet 2 to "Public Route Table"

resource "aws_route_table_association" "public-subnet-2-route-table-association" {
  subnet_id      = aws_subnet.public-subnet-2.id
  route_table_id = aws_route_table.public-route-table.id
}

# Create Private AVALAVANCH Subnet 1

resource "aws_subnet" "private-subnet-1" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.private-subnet-1-cidr
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = false

  tags = {
    Name = "IvanStake-NonProd-Prv-Avalanche-1a"
  }
}

# Create Private POLKADOT Subnet 2

resource "aws_subnet" "private-subnet-2" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.private-subnet-2-cidr
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = false

  tags = {
    Name = "IvanStake-NonProd-Prv-Polkadot-1a"
  }
}

# Create Private ETHERUM Subnet 3

resource "aws_subnet" "private-subnet-3" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.private-subnet-3-cidr
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = false

  tags = {
    Name = "IvanStake-NonProd-Prv-ETH-1a"
  }
}

# Create Private AVALAVANCH Subnet 4

resource "aws_subnet" "private-subnet-4" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.private-subnet-4-cidr
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = false

  tags = {
    Name = "IvanStake-NonProd-Prv-Avalanche-1b"
  }
}
# Create Private POLKADOT Subnet 5

resource "aws_subnet" "private-subnet-5" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.private-subnet-5-cidr
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = false

  tags = {
    Name = "IvanStake-NonProd-Prv-Polkadot-1b"
  }
}
# Create Private ETHERUM Subnet 6

resource "aws_subnet" "private-subnet-6" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.private-subnet-6-cidr
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = false

  tags = {
    Name = "IvanStake-NonProd-Prv-ETH-1b"
  }
}