module "vpc" {
  source = "../../modules/vpc"

  vpc_name             = var.vpc_name
  vpc_cidr             = var.vpc_cidr
  environment          = "dev"
  enable_dns_support   = true
  enable_dns_hostnames = true

}