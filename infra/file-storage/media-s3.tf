resource "aws_s3_bucket" "app-storage" {
  bucket = "${var.bucket_name}"
  acl    = "private"

  tags = {
    Name        = "Application Bucket"
    Environment = "Dev"
  }
}
