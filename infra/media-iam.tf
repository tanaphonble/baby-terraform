resource "aws_iam_policy" "s3-manager-policy" {
    name = "s3-manager-policy"
    path = "/media-manager/"
    description = "Policy for allowing user to have full access permission to s3 bucket"

    policy = <<POLICY
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "S3ReadWritePermission",
            "Effect": "Allow",
            "Action": [
                "s3:PutObject",
                "s3:GetObject"
            ],
            "Resource": [
                "${aws_s3_bucket.app-storage.arn}/*"
            ]
        },
        {
            "Sid": "S3tListPermission",
            "Effect": "Allow",
            "Action": "s3:ListBucket",
            "Resource": [
                "${aws_s3_bucket.app-storage.arn}"
            ]
        }
    ]
}
    POLICY
}

resource "aws_iam_user" "s3-manager" {
    name = "s3-credential-generator"
    path = "/media-manager/"
    tags {
        Name = "S3 STS master"
    }
}
 
resource "aws_iam_group" "media-manager" {
  name = "media-manager"
  path = "/media-manager/"
}

resource "aws_iam_user_group_membership" "media-managers-group" {
  user  = "${aws_iam_user.s3-manager.name}" 
  groups= [
      "${aws_iam_group.media-manager.name}"
  ]
}


