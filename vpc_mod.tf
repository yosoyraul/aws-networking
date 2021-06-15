module "vpc" {
  source          = "./vpc"
  region          = "us-east-1"
  base_cidr_block = var.base_cidr_block
}