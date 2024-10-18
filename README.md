## Provisioning the AWS Infrastructure with Terraform

Navigate to the `terraform/` directory, initialize Terraform, and apply the configuration. This will provision:

- **VPC**: Named `sre-challenge-vpc`, with a public subnet.
- **Internet Gateway**: Named `sre-challenge-igw`, allowing public internet access.
- **EKS Cluster**: Named `sre-challenge-eks-cluster`, running in the `us-east-1a` availability zone.
- **Security Group**: Named `sre-challenge-eks-sg`, allowing Kubernetes API access on port 443.
- **Worker Node Group**: A node group named `sre-challenge-node-group` with EC2 instances that automatically scale between 1 and 3 nodes.

Run the following commands:

```bash
cd terraform/
terraform init
terraform apply
