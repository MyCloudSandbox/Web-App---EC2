#This is for creating a user that will go into a group

resource "aws_iam_user" "Director1" {
    name = "Director1"
}

resource "aws_iam_user" "Manager1" {
    name = "Manager1"
}

resource "aws_iam_user" "Associate1" {
    name = "Associate1"
}

resource "aws_iam_user" "Trainee1" {
    name = "Trainee1"
}
