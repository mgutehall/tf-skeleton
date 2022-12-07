variable "some_name" {
  description = "A description that expalins"
  default     = number_or_value
}

variable "cidr_block" {
  default     = "10.0.0.0/16"
  type        = string
  description = "CIDR block for the VPC"
}

variable "public_subnet_cidr_blocks" {
  default     = ["10.0.0.0/24", "10.0.2.0/24", "10.0.4.0/24"]
  type        = list(any)
  description = "List of public subnet CIDR blocks"
}