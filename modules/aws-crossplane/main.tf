resource "aws_iam_user" "crossplane" {
  name = var.aws_iam_user
  path = "/crosssplane/"
}

resource "aws_iam_access_key" "crossplane" {
  user = aws_iam_user.crossplane.name
}

resource "aws_iam_user_policy" "EKS" {
  name = "eks"
  user = aws_iam_user.crossplane.name

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": "eks:*",
            "Resource": "*"
        }
    ]
}
EOF
}

resource "aws_iam_user_policy_attachment" "crossplane_policy" {
  for_each = var.aws_policy
  user       = aws_iam_user.crossplane.name
  policy_arn = each.key
}

