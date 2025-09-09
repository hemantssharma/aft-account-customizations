# Example: create IAM role in dev-team1 account
resource "aws_iam_role" "dev_role" {
  name = "DevTeam1Role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect = "Allow"
      Principal = { AWS = "arn:aws:iam::767397915550:root" }
      Action = "sts:AssumeRole"
    }]
  })
}
