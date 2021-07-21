resource "aws_vpc" "blueprd" {
    cidr_block = var.BLUE_VPC_CIDR

    tags = {
      Name = var.INC_TAG
    }
}
resource "aws_subnet" "dev_subb" {
  vpc_id = aws_vpc.blueprd.id
  availability_zone = var.AvailabilityZones
  cidr_block = var.BLUE_Private_SUB1b_CIDR

  tags = {
    Name = var.LUE_Private_SUB1b_TAG
  }
}

output "BLUE_VPC_CIDR" {
  value = aws_vpc.blueprd.cidr_block
}
output "VPC_Tag_Name" {
  value = aws_vpc.blueprd.tags.Name
}
output "BLUE_SUB1a_" {
  value = aws_subnet.prod_suba.cidr_block
}
output "BLUE_SUB1b_" {
  value = aws_subnet.prod_subb.cidr_block
}
output "BLUE_SUB1a_AZ" {
  value = aws_subnet.prod_suba.availability_zone
}
