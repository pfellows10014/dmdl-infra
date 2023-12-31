module "dmfl_vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.4.0"

  name = "dmfl-vpc"
  cidr = var.vpc_cidr
  azs = var.aws_az_list
  private_subnets = var.private_subnet_cidr_list
  public_subnets = var.public_subnet_cidr_list
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}