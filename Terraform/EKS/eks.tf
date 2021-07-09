resource "aws_eks_cluster" "eks-clus" {
  name     = "geclus"
  role_arn = aws_iam_role.eksRole.arn
  version  = "1.18"

  vpc_config {
    subnet_ids = [aws_subnet.dev_suba.id, aws_subnet.dev_subb.id]
    #    security_group_ids = aws_security_group.eks-security-rules.id
    #    cluster_security_group_id = aws_security_group.eks-security-rules.id
    endpoint_public_access  = true
    endpoint_private_access = true
    #    vpc_id = aws_vpc.blueprd.id

  }

  depends_on = [
    aws_iam_role_policy_attachment.eks-AmazonEKSClusterPolicy,
  ]
}
