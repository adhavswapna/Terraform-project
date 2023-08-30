terraform {
  backend "s3" {
    bucket = "swapna-terraform-bucket"
    key    = "home/swapna/Terraform-project/terraform.tfstate"
    region = "us-east-1"
  }
}
