terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.35.0"
    }
  }
}

provider "aws" {
  region="ap-south-1"
}

resource "aws_ssm_parameter" "foo" {
  name  = "test"
  type  = "String"
  value = "this is test value"
}
