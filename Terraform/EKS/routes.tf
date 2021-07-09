resource "aws_route_table" "eks-rtb" {
  vpc_id = aws_vpc.blueprd.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.eks-igw.id
  }

  tags = {
    eksrtb = "eks-igway"
  }

}

resource "aws_route_table_association" "eks-rtb-attach" {
  route_table_id = aws_route_table.eks-rtb.id
  subnet_id      = [aws_subnet.dev_suba.id, aws_subnet.dev_subb.id]

}
