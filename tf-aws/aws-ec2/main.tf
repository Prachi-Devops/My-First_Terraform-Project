terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-north-1"
}

# Create a instance
resource "aws_instance" "myserver" {
  ami = "ami-0ac1f955d6e62f3f1"
 instance_type = "t3.small"

 tags = {
  Name = "sampleServer"
 }
}