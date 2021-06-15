variable "vpc_id" {
}

variable "availability_zone" {
}

variable "subnet_cidr_block" {
}

variable "gateway_id" {
}

variable "destination_cidr" {
  default = "0.0.0.0/0"
}

data "aws_availability_zone" "target" {
  name = var.availability_zone
}

data "aws_vpc" "target"{
  id = var.vpc_id
}

data "aws_internet_gateway" "target"{
  internet_gateway_id = var.gateway_id
}
