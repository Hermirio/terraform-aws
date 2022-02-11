resource "aws_default_security_group" "rancher-sg" {
  vpc_id = aws_vpc.vpc-rancher.id
  tags = {
    "Name" = "rancher-sg"
  }
}