# terraform {
#   required_providers {
#     aws = {
#       version = ">= 2.7.0"
#       source = "hashicorp/aws"
#     }
#   }
# }

provider "aws" {
  region  = "us-west-2"
  version = "2.7.0"
}



resource "aws_s3_bucket" "untagged-bucket" {
  bucket = "bc-mike-test-pass"
  versioning {
    enabled = true
  }
  tags = {
    Environment = "test2"
    yor_trace   = "6f0aeb74-edf0-4f8e-86ce-d74a0d00185d"
  }
}

resource "aws_s3_bucket" "bucket2" {
  bucket = "bc-mike-test2"
  tags = {
    Environment = "test1"
    yor_trace   = "177ae1fb-f58e-4ba5-9487-e716c873701f"
  }

}

resource "aws_s3_bucket" "bucket3" {
  bucket = "bc-mike-test3"

  tags = {
    yor_trace = "20782376-a632-4b99-bb78-4865e1400982"
  }
}

resource "aws_ebs_volume" "ebs1" {
  bucket = "bc-mike-test"
  name   = "abc"
  tags = {
    yor_trace = "89e11917-eeb0-49cf-9bf9-aa91e34ed067"
  }
}

resource "aws_ebs_volume" "ebs2" {
  bucket = "bc-mike-test"
  name   = "myname"
  tags = {
    yor_trace = "6307d2c3-4907-40ae-9e22-4c428804b230"
  }
}
