resource "aws_vpc" "blueprd" {
  cidr_block = var.BLUE_VPC_CIDR

  tags = {
    Name = var.INC_TAG
  }
}
resource "aws_subnet" "dev_subb" {
  vpc_id                  = aws_vpc.blueprd.id
  availability_zone       = var.AvailabilityZonesB
  cidr_block              = var.BLUE_SUB1b_CIDR
  map_public_ip_on_launch = true

  tags = {
    name                                                  = "BLUE_SUB1b_TAG"
    "kubernetes.io/cluster/aws_eks_cluster.eks-clus.name" = "shared"
  }
}

resource "aws_subnet" "dev_suba" {
  vpc_id            = aws_vpc.blueprd.id
  availability_zone = var.AvailabilityZonesA
  cidr_block        = var.BLUE_SUB1a_CIDR

  tags = {
    name                                                  = "BLUE_SUB1a_TAG"
    "kubernetes.io/cluster/aws_eks_cluster.eks-clus.name" = "shared"
  }
}

/*output "BLUE_VPC_CIDR" {
  value = aws_vpc.blueprd.cidr_block
}
output "VPC_Tag_Name" {
  value = aws_vpc.blueprd.tags.Name
}
output "BLUE_SUB1a_" {
  value = aws_subnet.prod_suba.cidr_block
}
output "BLUE_SUB1a_AZ" {
  value = aws_subnet.prod_suba.availability_zone
}*/
