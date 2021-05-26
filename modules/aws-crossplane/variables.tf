variable "aws_iam_user" {
  description = "AWS Iam user to be created to be used by Crossplane AWS Provider"
  default     = "kerberus-crossplane"
}

variable "aws_policy" {
  description = "AWS Policy to assigne at the created IAM user"
  type        = set(string)
  default     = ["arn:aws:iam::aws:policy/AmazonRDSFullAccess", "arn:aws:iam::aws:policy/AmazonEC2FullAccess", "arn:aws:iam::aws:policy/AmazonVPCFullAccess", "arn:aws:iam::aws:policy/IAMFullAccess"]
}

variable "crossplane_registry" {
  description = "registry for the aws Crossplane package"
  type        = string
  default     = "crossplane/provider-aws:master"
}

