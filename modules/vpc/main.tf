terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.0"
    }
  }
}

resource "aws_vpc" "this" {
  cidr_block       = var.vpc_cidr_block    # 10.0.0.0/16
  instance_tenancy = "default"

  tags = merge(var.tags, {
    Name = var.vpc_name
  })
}

resource "aws_subnet" "this" {
  vpc_id     = aws_vpc.this.id
  cidr_block = var.subnet_cidr_block

  tags = merge(var.tags, {
    Name = var.subnet_name
  })
}
