provider "aws" {
region = "us-west-2"
}

resource "aws_security_group" "bar-sg" {
  name   = "mysg"
  vpc_id = "vpc-013e69f5146412c46"

  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"
    cidr_blocks       = ["0.0.0.0/0"]
    description = "foo"
  }

  egress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_s3_bucket" "bucket" {
  bucket = "test-bucket"
  
}