resource "aws_vpc" "main_vpc" {
  cidr_block = var.base_cidr_block
}

resource "aws_internet_gateway" "main_igw" {
  vpc_id = aws_vpc.main_vpc.id
}