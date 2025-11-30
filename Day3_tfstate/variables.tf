variable "ami_id" {
    description = "creating variable for ami id"
    type        = string
    default     = ""
}

variable "type" {
    description = "creation of instance type"
    type        = string
    default     = ""
}

variable "key" {
    description = "creation of keypair name"
    type        = string
    default     = ""
}

variable "region" {
    description = "creation of region"
    type        = string
    default     = ""
}