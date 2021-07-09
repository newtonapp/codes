resource "aws_internet_gateway" "eks-igw" {
  vpc_id = aws_vpc.blueprd.id

  tags = {
    EKS = "EKS IGW"
  }

}
