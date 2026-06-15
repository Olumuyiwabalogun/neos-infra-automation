# 1. The Core Network Perimeter
resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = { Name = "neos-core-vpc" }
}

# 2. Public Subnets (For Front-Door Routing Layers)
resource "aws_subnet" "public_1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnet_1_cidr
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true
  tags              = { Name = "neos-public-1a" }
}

resource "aws_subnet" "public_2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnet_2_cidr
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = true
  tags              = { Name = "neos-public-1b" }
}

# 3. Private Subnets (Where Your Containerized Flask App Will Safely Sit)
resource "aws_subnet" "private_1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet_1_cidr
  availability_zone = "us-east-1a"
  tags              = { Name = "neos-private-1a" }
}

resource "aws_subnet" "private_2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet_2_cidr
  availability_zone = "us-east-1b"
  tags              = { Name = "neos-private-1b" }
}