resource "aws_iam_user" "media-master" {
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
  user = "${aws_iam_user.media-master.name}"

  groups = [
    "${aws_iam_group.media-manager.name}",
  ]
}
