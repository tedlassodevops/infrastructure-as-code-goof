resource "aws_s3_bucket" "writable" {
  bucket = "writable"
  acl = "private"
}

resource "aws_s3_bucket" "readable" {
  bucket = "readable"
  acl = "public-read"
}
