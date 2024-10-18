# EKS Cluster Endpoint
output "eks_cluster_endpoint" {
  description = "EKS cluster endpoint"
  value       = aws_eks_cluster.sre_challenge_eks_cluster.endpoint
}

# EKS Cluster ARN
output "eks_cluster_arn" {
  description = "EKS cluster ARN"
  value       = aws_eks_cluster.sre_challenge_eks_cluster.arn
}

# EKS Node Group Name
output "eks_node_group_name" {
  description = "EKS Node Group Name"
  value       = aws_eks_node_group.sre_challenge_node_group.node_group_name
}
