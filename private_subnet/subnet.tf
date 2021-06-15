resource "aws_subnet" "main_subnet" {
  cidr_block        = var.subnet_cidr_block
  vpc_id            = var.vpc_id
  availability_zone = var.availability_zone
}
