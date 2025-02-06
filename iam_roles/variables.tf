variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "us-east-1"
}

variable "aws_master_account_id" {
  description = "AWS ID to root user"
  default     = "155712468242"
}

variable "ec2_tag" {
  description = "AWS tag of ec2 machines"
  default     = "ghouldaemon"
}

variable "aws_bucket_name" {
  description = "AWS S3 bucket name"
  default     = "aws_terraform_s3"
}
