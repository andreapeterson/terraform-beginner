terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.26.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "test" {
  ami                    = "ami-0230bd60aa48260c6" #Amazon Linux 2023
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1b"
  vpc_security_group_ids = ["sg-067f848c56a010961"]
  tags = {
    Name    = "test-terra"
    Project = "Test"
  }
}