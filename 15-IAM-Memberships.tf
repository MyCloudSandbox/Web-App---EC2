#This is to associate a user with a group

resource "aws_iam_user_group_membership" "Directors" {
  user = aws_iam_user.Director1.name

  groups = [
    aws_iam_group.Directors.name,
  ]
}

resource "aws_iam_user_group_membership" "Managers" {
  user = aws_iam_user.Manager1.name

  groups = [
    aws_iam_group.Managers.name,
  ]
}

resource "aws_iam_user_group_membership" "Associates" {
  user = aws_iam_user.Associate1.name

  groups = [
    aws_iam_group.Associates.name,
  ]
}

resource "aws_iam_user_group_membership" "Trainees" {
  user = aws_iam_user.Trainee1.name

  groups = [
    aws_iam_group.Trainees.name,
  ]
}
