module "vpc" {
  count  = local.deploy_connect ? 1 : 0
  source = "./modules/vpc"

  vpc_name          = var.vpc_name
  vpc_cidr_block    = var.vpc_cidr_block
  subnet_name       = var.subnet_name
  subnet_cidr_block = var.subnet_cidr_block
  tags              = var.tags
}

moved {
  from = aws_vpc.sep-vpc
  to   = module.vpc[0].aws_vpc.this
}

moved {
  from = aws_subnet.sep-pub-sub
  to   = module.vpc[0].aws_subnet.this
}
