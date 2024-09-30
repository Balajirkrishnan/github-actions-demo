# terragrunt.hcl
terraform {
  source = "./"  # Points to the current directory with the Terraform code
}

remote_state {
  backend = "s3"
  config = {
    bucket = "your-remote-state-bucket"
    key    = "path/to/terraform.tfstate"
    region = "us-east-1"
  }
}
