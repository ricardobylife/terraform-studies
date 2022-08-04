terraform {
  required_version = "1.2.6"
  required_providers {
    aws = {
      source = "hashicorp"
      version = "4.24.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my-test-bucket83900" {
  bucket = "my-tf-test-bucket83900"
  acl = "private"

  tags = {
    Name = "My Test Bucket"
    Environtment = "Dev"
  }
}