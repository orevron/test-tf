# terraform {
#   required_providers {
#     aws = {
#       version = ">= 2.7.0"
#       source = "hashicorp/aws"
#     }
#   }
# }

provider "aws" {
  region = "us-west-2"
  version = "2.7.0"
}



resource "aws_s3_bucket" "untagged-bucket" {
 bucket = "bc-mike-test-pass"
 versioning {
    enabled = true
  }
}

resource "aws_s3_bucket" "bucket2" {
 bucket = "bc-mike-test"
}

resource "aws_ebs_volume" "ebs1" {
 bucket = "bc-mike-test"
 name = "abc"
}

resource "aws_ebs_volume" "ebs2" {
 bucket = "bc-mike-test"
 name = "myname"
}
