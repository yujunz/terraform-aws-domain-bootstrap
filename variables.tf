variable "name" {
  description = "The name of the provision"
}

variable "parent_domain_name" {}

variable "aws_region" {
  description = "The AWS region to deploy to (e.g. us-east-1)"
  default     = "us-west-1"
}
