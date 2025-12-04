variable "ami_id" {
  description = "creation of ec2_instance"
  type = string
  default = ""
}

variable "type" {
  description = "type of instance"
  type = string
  default = ""
}

variable "key" {
  description = "keypair name"
  type = string
  default = ""
}

variable "region" {
  description = "added the region"
  type = string
  default = ""
}

