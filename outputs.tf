output "vpc_id" {
  description = "ID of the VPC."
  value       = one(module.vpc[*].vpc_id)
}

output "vpc_cidr_block" {
  description = "IPv4 CIDR block of the VPC."
  value       = one(module.vpc[*].vpc_cidr_block)
}

output "subnet_id" {
  description = "ID of the subnet."
  value       = one(module.vpc[*].subnet_id)
}

output "subnet_cidr_block" {
  description = "IPv4 CIDR block of the subnet."
  value       = one(module.vpc[*].subnet_cidr_block)
}
