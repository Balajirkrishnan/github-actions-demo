resource "aws_s3_bucket" "terragrunt_test" {
  bucket = "terragrunt-lab-bucket-brk"

  tags = {
    Name        = "Mybucket"
    Environment = "Dev"
  }
}
