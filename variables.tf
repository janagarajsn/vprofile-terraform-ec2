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

variable "ami_id" {
  description = "The ami id"
  type        = string
  default     = "ami-085f9c64a9b75eed5"
}

variable "instance_type" {
  description = "The instance type"
  type        = string
  default     = "t2.micro"
}

variable "security_group_id" {
  description = "The security group id"
  type        = string
  default     = "vprofile-sg-us2"
}