resource "aws_eks_node_group" "eks-ge1" {
  cluster_name    = aws_eks_cluster.eks-clus.name
  node_group_name = "eksng-geclus1"
  node_role_arn   = aws_iam_role.worker-role.arn
  subnet_ids      = [aws_subnet.dev_suba.id, aws_subnet.dev_subb.id]
  instance_types  = ["t3.medium"]

  scaling_config {
    desired_size = 2
    max_size     = 3
    min_size     = 2
  }
  remote_access {
    ec2_ssh_key = "Mumbai_orig"
  }
  depends_on = [
    aws_iam_role_policy_attachment.eks-AmazonEKSWorkerNodePolicy,
    aws_iam_role_policy_attachment.eks-AmazonEKS_CNI_Policy,
    aws_iam_role_policy_attachment.eks-AmazonEC2ContainerRegistryReadOnly,
  ]
  #  depends_on = [time_sleep.wait-time]
}

/*resource "null_resource" "wait-res" {

}
resource "time_sleep" "wait-time" {
  depends_on = [null_resource.wait-res]

  create_duration = "2m"
}*/
