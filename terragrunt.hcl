locals {
  common  = yamldecode(file("${get_parent_terragrunt_dir()}/common.yaml"))
}

remote_state {
  backend = "s3"
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terrgrunt"
  }

  config = {
    bucket  = "allcloudops-tfstate_123"
    region  = "us-east-1"
    encrypt = true
    dynamodb_table  = "allcloudops-tfstate"
  }
}
