# Declaration of variables used in the module
variable "region" {
  description = "The AWS region to deploy into"
  type        = string
  default     = "us-east-2"
}

variable "availability_zone" {
  description = "The availability zone for the subnet"
  type        = string
  default     = "us-east-2a"
}