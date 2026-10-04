variable "vpc_name" {
  description = "Name tag for the VPC."
  type        = string
  default     = "sep-vpc"
}

variable "vpc_cidr_block" {
  description = "IPv4 CIDR block for the VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_name" {
  description = "Name tag for the subnet."
  type        = string
  default     = "pub-sub"
}

variable "subnet_cidr_block" {
  description = "IPv4 CIDR block for the subnet, within the VPC CIDR block."
  type        = string
  default     = "10.0.1.0/24"
}

variable "tags" {
  description = "Additional tags to apply to the VPC and subnet."
  type        = map(string)
  default     = {}
}
