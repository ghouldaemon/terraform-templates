resource "aws_iam_instance_profile" "assume-role-s3" {
  name = "assume-role-s3"
  role = aws_iam_role.role-s3.id
  tags = {
    yor_name  = "assume-role-s3"
    yor_trace = "7e24ceb1-8bfb-4153-a732-97cac2de849c"
  }
}

resource "aws_iam_role" "role-s3" {
  name = "role-s3"
  path = "/"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "sts:AssumeRole"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF

  tags = {
    yor_name  = "role-s3"
    yor_trace = "96d351bb-e75c-4b68-bd5b-e54ed1f715b2"
  }
}

resource "aws_iam_role_policy" "role-s3-policy" {
  name = "role-s3-policy"
  role = aws_iam_role.role-s3.id

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "s3:*"
            ],
            "Resource": [
                "arn:aws:s3:::${var.aws_bucket_name}/*",
            ]
        }
    ]
}
EOF

}