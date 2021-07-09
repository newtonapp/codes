resource "aws_security_group" "eks-security-rules" {
  name = "eks-sec-grp"
  description = "eks sec rules"

  ingress {
  description      = "ssh form out"
  from_port        = 22
  to_port          = 22
  protocol         = "tcp"
  cidr_blocks      = ["0.0.0.0/0"]
}

egress {
  from_port        = 0
  to_port          = 0
  protocol         = "-1"
  cidr_blocks      = ["0.0.0.0/0"]
}

tags = {
  Name = "eks_rules"
}


}
