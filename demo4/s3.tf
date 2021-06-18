resource "aws_s3_bucket" "b" {
  bucket = "Yuvaraj-test-bucket"
  acl    = "private"

  tags = {
    Name        = "Yuvaraj bucket"
    Environment = "Dev"
  }
}
