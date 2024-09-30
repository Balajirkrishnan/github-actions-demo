locals {
  common  = yamldecode(file("${get_parent_terragrunt_dir()}/common.yaml"))
  region  = "us-east-1"
}

remote_state {
  backend = "s3"
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }

  config = {
    bucket  = "allcloudops-tfstate_123"
    key     = "${path_relative_to_include()}/terraform.tfstate"
    region  = local.region
    encrypt = true
    dynamodb_table  = "allcloudops-tfstate"
  }
}

#Generate AWS provider

generate "provider" {
  path    = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
provider "aws" {
  region = "${local.region}
}
EOF
}
