variable "region" {
  description="The name of the AWS region to set up a network within"
}

variable "base_cidr_block" {}

variable "pub_cidr_block" {
  default = "10.0.1.0/24"
}

variable "priv_cidr_block" {
  default = "10.0.2.0/24"
}

provider "aws" {
  region = var.region
}