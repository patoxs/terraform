terraform {
  backend "remote" {
    organization = "patoxs"
    workspaces {
      name = "test-1"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = "~>1.6.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-058bd2d568351da34"
  instance_type = "t2.micro"
  tags = {
    Name = var.instance_name
  }
}