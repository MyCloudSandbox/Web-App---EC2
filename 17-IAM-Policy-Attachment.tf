# Attach the IAM policy to the Directors Group
data "aws_iam_policy" "Administrator_Access" {
  arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

resource "aws_iam_group_policy_attachment" "Directors_Administrator_Access" {
  policy_arn = data.aws_iam_policy.Administrator_Access.arn
  group      = aws_iam_group.Directors.name
}

# Attach the IAM policy to the Managers Group
data "aws_iam_policy" "Amazon_EC2_Container_Registry_Power_User" {
  arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryPowerUser"
}

resource "aws_iam_group_policy_attachment" "Managers_Amazon_EC2_Container_Registry_Power_User" {
  policy_arn = data.aws_iam_policy.Amazon_EC2_Container_Registry_Power_User.arn
  group      = aws_iam_group.Managers.name
}

# Attach the IAM policy to the Associates Group
data "aws_iam_policy" "Auto_Scaling_Console_Full_Access" {
  arn = "arn:aws:iam::aws:policy/AutoScalingConsoleFullAccess"
}

resource "aws_iam_group_policy_attachment" "Associates_AutoScalingConsoleFullAccess" {
  policy_arn = data.aws_iam_policy.Auto_Scaling_Console_Full_Access.arn
  group      = aws_iam_group.Associates.name
}

# Attach the IAM policy to the Trainees Group
data "aws_iam_policy" "Amazon_EC2_Read_Only_Access" {
  arn = "arn:aws:iam::aws:policy/AmazonEC2ReadOnlyAccess"
}

resource "aws_iam_group_policy_attachment" "Trainees_Amazon_EC2_Read_Only_Access" {
  policy_arn = data.aws_iam_policy.Amazon_EC2_Read_Only_Access.arn
  group      = aws_iam_group.Trainees.name
}
