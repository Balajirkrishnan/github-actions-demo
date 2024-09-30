resource "aws_s3_bucket" "terragrunt_test" {
  bucket = "terragrunt-lab-bucket_brk"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
