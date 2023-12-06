#Directors Group Policy
resource "aws_iam_policy" "AdministratorAccess" {
  name        = "AdministratorAccess"
  path        = "/"
  description = "MyDirectorsPolicy"

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
        {
            "Effect": "Allow",
            "Action": "*",
            "Resource": "*"
        }
    ]
})
}

#Managers Group Policy
resource "aws_iam_policy" "AmazonEC2ContainerRegistryPowerUser" {
  name        = "AmazonEC2ContainerRegistryPowerUser"
  path        = "/"
  description = "MyManagersPolicy"

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
        {
            "Effect": "Allow",
            "Action": [
                "ecr:GetAuthorizationToken",
                "ecr:BatchCheckLayerAvailability",
                "ecr:GetDownloadUrlForLayer",
                "ecr:GetRepositoryPolicy",
                "ecr:DescribeRepositories",
                "ecr:ListImages",
                "ecr:DescribeImages",
                "ecr:BatchGetImage",
                "ecr:GetLifecyclePolicy",
                "ecr:GetLifecyclePolicyPreview",
                "ecr:ListTagsForResource",
                "ecr:DescribeImageScanFindings",
                "ecr:InitiateLayerUpload",
                "ecr:UploadLayerPart",
                "ecr:CompleteLayerUpload",
                "ecr:PutImage"
            ],
            "Resource": "*"
        }
    ]
})
}

#Associates Group Policy
resource "aws_iam_policy" "AutoScalingConsoleFullAccess" {
  name        = "AutoScalingConsoleFullAccess"
  path        = "/"
  description = "MyAssociatesPolicy"

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
         {
            "Effect": "Allow",
            "Action": [
                "ec2:AuthorizeSecurityGroupIngress",
                "ec2:CreateKeyPair",
                "ec2:CreateSecurityGroup",
                "ec2:DescribeAccountAttributes",
                "ec2:DescribeAvailabilityZones",
                "ec2:DescribeImages",
                "ec2:DescribeInstanceAttribute",
                "ec2:DescribeInstances",
                "ec2:DescribeKeyPairs",
                "ec2:DescribeLaunchTemplateVersions",
                "ec2:DescribePlacementGroups",
                "ec2:DescribeSecurityGroups",
                "ec2:DescribeSpotInstanceRequests",
                "ec2:DescribeSubnets",
                "ec2:DescribeVpcs",
                "ec2:DescribeVpcClassicLink",
                "ec2:ImportKeyPair"
            ],
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "Action": "elasticloadbalancing:Describe*",
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "Action": [
                "cloudwatch:ListMetrics",
                "cloudwatch:GetMetricStatistics",
                "cloudwatch:PutMetricAlarm",
                "cloudwatch:Describe*"
            ],
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "Action": "autoscaling:*",
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "Action": [
                "sns:ListSubscriptions",
                "sns:ListTopics"
            ],
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "Action": "iam:ListRoles",
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "Action": "iam:CreateServiceLinkedRole",
            "Resource": "*",
            "Condition": {
                "StringEquals": {
                    "iam:AWSServiceName": "autoscaling.amazonaws.com"
                }
            }
        }
    ]
})
}



#Trainees Group Policy
resource "aws_iam_policy" "AmazonEC2ReadOnlyAccess" {
  name        = "AmazonEC2ReadOnlyAccess"
  path        = "/"
  description = "MyTraineesPolicy"

  policy = jsonencode({
     Version = "2012-10-17",
    Statement = [
        {
            "Effect": "Allow",
            "Action": "ec2:Describe*",
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "Action": "elasticloadbalancing:Describe*",
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "Action": [
                "cloudwatch:ListMetrics",
                "cloudwatch:GetMetricStatistics",
                "cloudwatch:Describe*"
            ],
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "Action": "autoscaling:Describe*",
            "Resource": "*"
        }
    ]
  })
}
