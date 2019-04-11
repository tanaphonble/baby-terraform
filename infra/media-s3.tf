resource "aws_s3_bucket" "app-storage" {
    bucket = "23rt4grth-app-storage"
    acl = "private"

    tags = {
        Name = "Application Bucket"
        Environment = "Dev"
    }
}

