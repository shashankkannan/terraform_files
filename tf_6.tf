provider "aws" {
  
}

resource "aws_iam_user" "usr" {
  name = "user_${count.index}"
  count = 2
}

output "AWS_users" {
    value = aws_iam_user.usr[*].arn  
}