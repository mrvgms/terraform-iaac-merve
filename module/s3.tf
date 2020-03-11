resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-merve"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}