provider "aws" {
  region = var.region
}

resource "aws_instance" "Rancher" {
  ami = var.ami
  instance_type = var.type-image
  key_name = var.ssh-key
  subnet_id = aws_subnet.subnet_a.id
  associate_public_ip_address = true
  tags = {
      "Name" = var.name-server
  }
}

resource "aws_instance" "node" {
  ami = var.ami
  instance_type = var.type-image
  key_name = var.ssh-key
  subnet_id = aws_subnet.subnet_b.id
  associate_public_ip_address = false
  tags = {
      "Name" = "node0"
  }
}