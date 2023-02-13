resource "aws_s3_bucket" "writable" {
  bucket = "writable"
  acl = "public-read-write"
}

resource "aws_s3_bucket" "readable" {
  bucket = "readable"
  acl = "private"
  bucket = aws_s3_bucket.readable.id

  target_bucket = aws_s3_bucket.readable_log_bucket.id
  target_prefix = "log/"
}