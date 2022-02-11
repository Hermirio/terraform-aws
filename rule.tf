resource "aws_security_group_rule" "ssh" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_default_security_group.rancher-sg.id
  
}

resource "aws_security_group_rule" "icmp-out" {
  type              = "egress"
  from_port         = -1
  to_port           = -1
  protocol          = "icmp"
  cidr_blocks       = ["10.0.1.0/24","10.0.2.0/24"]
  security_group_id = aws_default_security_group.rancher-sg.id
  

}

resource "aws_security_group_rule" "icmp-in" {
  type              = "ingress"
  from_port         = -1
  to_port           = -1
  protocol          = "icmp"
  cidr_blocks       = ["10.0.1.0/24","10.0.2.0/24"]
  security_group_id = aws_default_security_group.rancher-sg.id
 
}