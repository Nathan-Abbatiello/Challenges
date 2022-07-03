resource "aws_s3_bucket" "website_bucket" {
  bucket = "website_bucket"
}

resource "aws_s3_bucket_acl" "acl_website_bucket" {
  bucket = aws_s3_bucket.website_bucket.id
  acl    = "private"
}

resource "aws_s3_bucket_versioning" "versioning_website_bucket" {
  bucket = aws_s3_bucket.website_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}
