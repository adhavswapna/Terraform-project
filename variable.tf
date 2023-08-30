# variable.tf
variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "swapna-Ec2-tf"
}

variable "bucket_name" {
  description = "Name for the S3 bucket"
  default     = "swapna-tf-bucket"
}

variable "acl" {
  description = "Canned ACL to apply to the S3 bucket"
  default     = "private"
}

variable "versioning" {
  description = "Enable or disable versioning for the S3 bucket"
  type        = bool
  default     = false
}
variable "SwapnaTable" {
  description = "Name for the DynamoDB table"
}
