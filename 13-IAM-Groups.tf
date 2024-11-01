# This Terraform configuration file creates four IAM groups in AWS: Directors, Managers, Associates, and Trainees.

resource "aws_iam_group" "Directors" {
  name = "Directors"
}

resource "aws_iam_group" "Managers" {
  name = "Managers"
}

resource "aws_iam_group" "Associates" {
  name = "Associates"
}

resource "aws_iam_group" "Trainees" {
  name = "Trainees"
}
