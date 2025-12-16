variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string
  default     = " "
}

variable "instance_type" {
  description = "The instance type to use for the EC2 instance"
  type        = string
  default     = " "
}

variable "keypair" {
  description = "The keypair to use for the EC2 instance"
  type        = string
  default     = " "
}