resource "aws_s3_bucket" "writable" {
  bucket = "writable"
  acl = "private"

  target_bucket = aws_s3_bucket.writable_log_bucket.id
  target_prefix = "log/"
}


resource "aws_s3_bucket" "readable" {
  bucket = "readable"
  acl = "public-read"
}
