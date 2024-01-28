terraform {
  backend "s3" {
    bucket = "jyo-terraform"
    key    = "aws-parameter-store/terraform.tfstate"
    region = "us-east-1"
  }
}

resource "null_resource" "test"{}