resource "aws_vpc" "vpc-rancher" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  tags = {
    "Name" = "vpc-rancher"
  }
}
resource "aws_subnet" "subnet_a" {
  vpc_id     = aws_vpc.vpc-rancher.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  enable_resource_name_dns_a_record_on_launch = true
  tags = {
    "Name" = "subnet_a"
  }
}

resource "aws_subnet" "subnet_b" {
  vpc_id     = aws_vpc.vpc-rancher.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1b"
  enable_resource_name_dns_a_record_on_launch = true
  tags = {
    "Name" = "subnet_b"
  }
}
resource "aws_subnet" "subnet_c" {
  vpc_id     = aws_vpc.vpc-rancher.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "us-east-1c"
  enable_resource_name_dns_a_record_on_launch = true
  tags = {
    "Name" = "subnet_c"
  }
}
resource "aws_subnet" "subnet_d" {
  vpc_id     = aws_vpc.vpc-rancher.id
  cidr_block = "10.0.4.0/24"
  availability_zone = "us-east-1d"
  enable_resource_name_dns_a_record_on_launch = true
  tags = {
    "Name" = "subnet_d"
  }
}

resource "aws_internet_gateway" "gw-rancher" {
    vpc_id = aws_vpc.vpc-rancher.id
}