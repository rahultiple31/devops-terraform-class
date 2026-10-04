variable "vpc_name" {
  description = "Name tag for the VPC."
  type        = string
}

variable "vpc_cidr_block" {
  description = "IPv4 CIDR block for the VPC."
  type        = string

  validation {
    condition     = can(cidrnetmask(var.vpc_cidr_block))
    error_message = "vpc_cidr_block must be a valid IPv4 CIDR block."
  }
}

variable "subnet_name" {
  description = "Name tag for the subnet."
  type        = string
}

variable "subnet_cidr_block" {
  description = "IPv4 CIDR block for the subnet, within the VPC CIDR block."
  type        = string

  validation {
    condition     = can(cidrnetmask(var.subnet_cidr_block))
    error_message = "subnet_cidr_block must be a valid IPv4 CIDR block."
  }
}

variable "tags" {
  description = "Additional tags to apply to the VPC and subnet."
  type        = map(string)
  default     = {}
}
