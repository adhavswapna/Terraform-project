terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"

  tags = {
    Name = "swapna-Ec2-tf"
  }

resource "aws_s3_bucket" "example" {
  bucket = "swapna-terraform-bucket"

  tags = {
    Name        = "swapna-tf-bucket"
  }
}
resource "aws_dynamodb_table" "example_table" {
  name           = "SwapnaTable"
  billing_mode   = "PAY_PER_REQUEST"  
  hash_key       = "id"
  attribute {
    name = "id"
    type = "S"
  }
 }
resource "aws_s3_bucket" "example" {
  bucket = "swapna-terraform-bucket"

  tags = {
    Name        = "My bucket"
  }
}
resource "aws_dynamodb_table" "example_table" {
  name           = "SwapnaTable"
  billing_mode   = "PAY_PER_REQUEST"  
  hash_key       = "id"
  attribute {
    name = "id"
    type = "S"
  }
 }

}

  